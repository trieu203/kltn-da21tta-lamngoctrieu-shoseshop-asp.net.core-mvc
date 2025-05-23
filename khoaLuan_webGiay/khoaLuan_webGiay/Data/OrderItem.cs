﻿namespace khoaLuan_webGiay.Data;

public partial class OrderItem
{
    public int OrderItemId { get; set; }

    public int? OrderId { get; set; }

    public int? ProductId { get; set; }

    public string? Size { get; set; }

    public int Quantity { get; set; }

    public decimal Price { get; set; }
    public bool IsReviewed { get; set; } = false;

    public virtual Order? Order { get; set; }

    public virtual Product? Product { get; set; }
}
