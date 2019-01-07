.class public final Lsq;
.super Landroid/widget/PopupWindow;
.source "PopupWindowProxy.java"


# instance fields
.field private a:Lsp;


# direct methods
.method public constructor <init>(Landroid/view/View;IILsp;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "mController"    # Lsp;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 54
    iput-object p4, p0, Lsq;->a:Lsp;

    .line 55
    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 76
    return-void
.end method

.method public final dismiss()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 64
    iget-object v2, p0, Lsq;->a:Lsp;

    if-nez v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lsq;->a:Lsp;

    invoke-interface {v2}, Lsp;->j()Z

    move-result v1

    .line 67
    .local v1, "performDismiss":Z
    if-eqz v1, :cond_0

    .line 68
    iget-object v2, p0, Lsq;->a:Lsp;

    invoke-interface {v2}, Lsp;->k()Z

    move-result v0

    .line 69
    .local v0, "dismissAtOnce":Z
    if-eqz v0, :cond_0

    .line 1075
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
