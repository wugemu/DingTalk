.class public Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;
.super Lcom/taobao/weex/ui/flat/widget/BaseWidget;
.source "AndroidViewWidget.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V
    .locals 0
    .param p1, "context"    # Lcom/taobao/weex/ui/flat/FlatGUIContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    .line 40
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    .line 79
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    .line 64
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 67
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 59
    :cond_0
    return-void
.end method

.method public bridge synthetic setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .locals 0
    .param p1    # Lcom/taobao/weex/ui/view/border/BorderDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    return-void
.end method

.method public setContentBox(IIII)V
    .locals 1
    .param p1, "leftOffset"    # I
    .param p2, "topOffset"    # I
    .param p3, "rightOffset"    # I
    .param p4, "bottomOffset"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->invalidate()V

    .line 52
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    .line 44
    return-void
.end method

.method public bridge synthetic setLayout(IIIIIILandroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 32
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method
