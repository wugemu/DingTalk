.class abstract Lcom/taobao/weex/ui/flat/widget/BaseWidget;
.super Ljava/lang/Object;
.source "BaseWidget.java"

# interfaces
.implements Lcom/taobao/weex/ui/flat/widget/Widget;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private borderBox:Landroid/graphics/Rect;

.field private bottomOffset:I

.field private final context:Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private leftOffset:I

.field private offsetOfContainer:Landroid/graphics/Point;

.field private rightOffset:I

.field private topOffset:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V
    .locals 1
    .param p1, "context"    # Lcom/taobao/weex/ui/flat/FlatGUIContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    .line 48
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 49
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasWithinBorderBox(Lcom/taobao/weex/ui/flat/widget/Widget;Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->leftOffset:I

    iget v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->topOffset:I

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->rightOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->bottomOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 109
    iget v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->leftOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->topOffset:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    return-void
.end method

.method public final getBackgroundAndBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0
.end method

.method public final getBorderBox()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getLocInFlatContainer()Landroid/graphics/Point;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    return-object v0
.end method

.method protected invalidate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 116
    .local v0, "dirtyRegion":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getWidgetContainerView(Lcom/taobao/weex/ui/flat/widget/Widget;)Landroid/view/View;

    move-result-object v1

    .local v1, "widgetContainer":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 121
    .end local v1    # "widgetContainer":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .locals 3
    .param p1, "backgroundBorder"    # Lcom/taobao/weex/ui/view/border/BorderDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 76
    .local v0, "backgroundBox":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setCallback(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    .line 80
    return-void
.end method

.method protected setCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getWidgetContainerView(Lcom/taobao/weex/ui/flat/widget/Widget;)Landroid/view/View;

    move-result-object v0

    .local v0, "widgetContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    .end local v0    # "widgetContainer":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setContentBox(IIII)V
    .locals 0
    .param p1, "leftOffset"    # I
    .param p2, "topOffset"    # I
    .param p3, "rightOffset"    # I
    .param p4, "bottomOffset"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->leftOffset:I

    .line 64
    iput p2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->topOffset:I

    .line 65
    iput p3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->rightOffset:I

    .line 66
    iput p4, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->bottomOffset:I

    .line 67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    .line 68
    return-void
.end method

.method public setLayout(IIIIIILandroid/graphics/Point;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "bottom"    # I
    .param p7, "offset"    # Landroid/graphics/Point;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iput-object p7, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    .line 54
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    add-int v1, p3, p1

    add-int v2, p5, p2

    invoke-virtual {v0, p3, p5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    .line 59
    return-void
.end method
