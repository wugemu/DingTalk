.class public Lcom/taobao/weex/ui/flat/widget/TextWidget;
.super Lcom/taobao/weex/ui/flat/widget/BaseWidget;
.source "TextWidget.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mLayout:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V
    .locals 0
    .param p1, "context"    # Lcom/taobao/weex/ui/flat/FlatGUIContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/TextWidget;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/TextWidget;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 44
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
    .line 30
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    return-void
.end method

.method public bridge synthetic setContentBox(IIII)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setContentBox(IIII)V

    return-void
.end method

.method public bridge synthetic setLayout(IIIIIILandroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 30
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateTextDrawable(Landroid/text/Layout;)V
    .locals 0
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/TextWidget;->mLayout:Landroid/text/Layout;

    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/TextWidget;->invalidate()V

    .line 49
    return-void
.end method
