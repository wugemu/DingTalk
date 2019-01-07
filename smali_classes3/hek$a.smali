.class public final Lhek$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbsRecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhek;


# direct methods
.method public constructor <init>(Lhek;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lhek;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 312
    .local p0, "this":Lhek$a;, "Lhek<TT;>.a;"
    iput-object p1, p0, Lhek$a;->a:Lhek;

    .line 313
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 314
    return-void
.end method
