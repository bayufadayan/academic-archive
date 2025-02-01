<?php

namespace App\Http\Controllers;
//import Model "Contoh
use App\Models\Contoh;
use Illuminate\View\View;
// untuk membuat sebuah symbolic link from public/storage to storage/app/public. 
use Illuminate\Support\Facades\Storage;
//return type redirectResponse
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ContohController extends Controller
{
    public function index(): View
    {
        $contoh = Contoh::latest()->paginate(5);

        return view('contoh.index', compact('contoh'));
    }

    public function create(): View
    {
        return view('contoh.create');
    }

  
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $validated = $request->validate( [
            'image'     => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'title'     => 'required|min:5',
            'content'   => 'required|min:10'
        ]);

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/contoh', $image->hashName());

        //create Contoh
        Contoh::create([
            'image'     => $image->hashName(),
            'title'     => $request->title,
            'content'   => $request->content
        ]);

        //redirect to index
        return redirect()->route('contoh.index')->with(['success' => 'Data Berhasil Disimpan!']);
    }

    public function edit(string $id): View
    {
        //get contoh by ID
        $contoh = Contoh::findOrFail($id);

        //render view with contoh
        return view('contoh.edit', compact('contoh'));
    }
    
    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return RedirectResponse
     */
    public function update(Request $request, $id): RedirectResponse
    {
        //validate form
        $validated = $request->validate([
            'image'     => 'image|mimes:jpeg,jpg,png|max:2048',
            'title'     => 'required|min:5',
            'content'   => 'required|min:10'
        ]);

        //get contoh by ID
        $contoh = Contoh::findOrFail($id);

        //check if image is uploaded
        if ($request->hasFile('image')) {

            //upload new image
            $image = $request->file('image');
            $image->storeAs('public/contoh', $image->hashName());

            //delete old image
            Storage::delete('public/contoh/'.$contoh->image);

            //update contoh with new image
            $contoh->update([
                'image'     => $image->hashName(),
                'title'     => $request->title,
                'content'   => $request->content
            ]);

        } else {

            //update contoh without image
            $contoh->update([
                'title'     => $request->title,
                'content'   => $request->content
            ]);
        }

        //redirect to index
        return redirect()->route('contoh.index')->with(['success' => 'Data Berhasil Diubah!']);
    }

    public function destroy($id): RedirectResponse
    {
        //get contoh by ID
        $contoh = Contoh::findOrFail($id);

        //delete image
        Storage::delete('public/contoh/'. $contoh->image);

        //delete contoh
        $contoh->delete();

        //redirect to index
        return redirect()->route('contoh.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
