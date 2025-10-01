<x-layout>

    <h2>Λίστα Χρηστών</h2>

    <table class="table table-striped table-bordered align-middle my-5">
        <thead>
            <tr>
                <th>Όνομα</th>
                <th>Όνομα Χρήστη</th>
                <th>Email</th>
                <th>Δικαιώματα</th>
                <th>Ενέργειες</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->username }}</td>
                    <td>{{ $user->email }}</td>
                    <td>
                        @foreach ($user->roles as $role)
                            {{ $role->name }}{{ !$loop->last ? ',' : '' }}
                        @endforeach
                    </td>
                    <td>
                        <a href="{{ route('users.show', $user->id) }}" class="btn btn-primary btn-sm">Προβολή</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="d-flex justify-content-center my-4">
        {{ $users->links('pagination::bootstrap-5') }}
    </div>
</x-layout>
