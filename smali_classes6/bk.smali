.class final Lbk;
.super Lbr;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lbm;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lbr;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Lbk;->a:Lbr$a;

    invoke-virtual {v0, p1}, Lbr$a;->a(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Lbk;->a:Lbr$a;

    invoke-virtual {v0, p1}, Lbr$a;->b(Landroid/view/View;)V

    .line 44
    return-void
.end method
