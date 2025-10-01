<x-layout>
    <div class="bg-red-100 p-5 rounded-lg shadow-lg">
        <h2>Confirm Deletion</h2>
        <p>Are you sure you want to delete the user <?= $user->name ?>?</p>
        <form method="POST" action="{{ route('users.destroy', $user->id) }}">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger">Yes, Delete</button>
            <button type="button" onclick="window.history.back()" class="btn btn-secondary">Cancel</button>
        </form>
    </div>
</x-layout>