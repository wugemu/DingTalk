.class final Lfct$a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PicAndTxtViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfct$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfct$a;

.field private b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lfct$a;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lfct$a;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 206
    iput-object p1, p0, Lfct$a$a;->a:Lfct$a;

    .line 207
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 208
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lfct$a$a;->b:Landroid/widget/ImageView;

    .line 209
    return-void
.end method

.method static synthetic a(Lfct$a$a;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lfct$a$a;

    .prologue
    .line 203
    iget-object v0, p0, Lfct$a$a;->b:Landroid/widget/ImageView;

    return-object v0
.end method
