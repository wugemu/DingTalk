.class public abstract Lhes;
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

.field protected c:I

.field protected d:Lhep;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lhes;, "Lhes<TT;>;"
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput v0, p0, Lhes;->b:I

    .line 39
    iput v0, p0, Lhes;->c:I

    .line 45
    invoke-virtual {p0, p1}, Lhes;->a(Landroid/view/View;)V

    .line 46
    iput-object p1, p0, Lhes;->a:Landroid/view/View;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lhes;, "Lhes<TT;>;"
    iget-object v0, p0, Lhes;->a:Landroid/view/View;

    return-object v0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;ILhep;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "handler"    # Lhep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lhep;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lhes;, "Lhes<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput p2, p0, Lhes;->b:I

    .line 71
    iput-object p3, p0, Lhes;->d:Lhep;

    .line 72
    invoke-virtual {p0, p1}, Lhes;->a(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
