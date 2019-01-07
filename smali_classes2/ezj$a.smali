.class final Lezj$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlphaDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/RelativeLayout;

.field final synthetic d:Lezj;


# direct methods
.method constructor <init>(Lezj;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lezj;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 108
    iput-object p1, p0, Lezj$a;->d:Lezj;

    .line 109
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    sget v0, Lezg$h;->img_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lezj$a;->a:Landroid/widget/ImageView;

    .line 111
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lezj$a;->b:Landroid/widget/TextView;

    .line 112
    sget v0, Lezg$h;->rl_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lezj$a;->c:Landroid/widget/RelativeLayout;

    .line 113
    return-void
.end method
