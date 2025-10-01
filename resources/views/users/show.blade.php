<x-layout>
    <div class="bg-gray-100 p-5 rounded-lg shadow-lg">
        <h2><?= $user->name ?>'s Profile</h2>
        <p><strong>Email: </strong><?= $user->email ?></p>
        <p><strong>Username: </strong><?= $user->username ?></p>
    </div>
    <div class="bg-gray-200 p-5 rounded-lg shadow-lg mt-4">
    <p><strong>Δικαιώματα:</strong>
        @foreach ($user->roles as $role)
            <?= $role->name ?>{{ !$loop->last ? ',' : '' }}
        @endforeach
    </p>
    </div>
    <button onclick="window.history.back()" class="btn btn-secondary mt-3">Επιστροφή</button>
    <form action="{{ route('users.delete', $user->id) }}" method="POST" class="d-inline">
    @csrf
    @method('DELETE')
    <button type="submit" class="btn btn-sm btn-outline-danger mt-3">Διαγραφή χρήστη</button>
</form>
</x-layout>
