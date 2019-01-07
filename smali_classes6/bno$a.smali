.class final Lbno$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lbno;


# direct methods
.method constructor <init>(Lbno;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lbno;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 101
    iput-object p1, p0, Lbno$a;->b:Lbno;

    .line 102
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    sget v0, Lbpu$d;->iv_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbno$a;->a:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lbno$a;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Lbno;->c(Lbno;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method
