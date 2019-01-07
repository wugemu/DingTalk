.class final Lecy$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UselessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field final synthetic b:Lecy;


# direct methods
.method public constructor <init>(Lecy;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lecy;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Lecy$a;->b:Lecy;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lecy$a;->a:Landroid/widget/FrameLayout;

    .line 44
    return-void
.end method
