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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->nullable();
            $table->string('order_number');
            $table->text('shipping_address');
            $table->string('payment_type')->default('cash');
            $table->float('subtotal',8,2);
            $table->float('discount',8,2);
            $table->float('charge',8,2);
            $table->float('total',8,2);
            $table->enum('order_status',["pending","packaging"])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
