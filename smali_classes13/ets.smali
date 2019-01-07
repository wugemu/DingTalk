.class public abstract Lets;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MiniAppListBaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 39
    .local p0, "this":Lets;, "Lets<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lets;->b:I

    .line 40
    invoke-virtual {p0, p1}, Lets;->a(Landroid/view/View;)V

    .line 41
    iput-object p1, p0, Lets;->a:Landroid/view/View;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lets;, "Lets<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput p2, p0, Lets;->b:I

    .line 66
    invoke-virtual {p0, p1}, Lets;->a(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
