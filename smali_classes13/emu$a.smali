.class public final Lemu$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbsRecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lemu;


# direct methods
.method public constructor <init>(Lemu;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lemu;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 292
    .local p0, "this":Lemu$a;, "Lemu<TT;>.a;"
    iput-object p1, p0, Lemu$a;->a:Lemu;

    .line 293
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 294
    return-void
.end method
