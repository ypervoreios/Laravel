<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        
        if (!Schema::hasTable('dv_user_role')) {
            Schema::create('dv_user_role', function (Blueprint $table) {
                $table->unsignedBigInteger('role_id');
                $table->unsignedBigInteger('user_id');

                $table->primary(['role_id', 'user_id']);
                $table->index('user_id');

                $table->foreign('role_id')
                    ->references('id')->on('dv_users_roles')
                    ->onDelete('cascade')
                    ->onUpdate('cascade');

                $table->foreign('user_id')
                    ->references('id')->on('dv_users')
                    ->onDelete('cascade')
                    ->onUpdate('cascade');
            });
    }
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dv_user_role');
    }
};
