.class Lcom/taobao/weex/ui/component/WXComponent$6;
.super Landroid/graphics/drawable/RippleDrawable;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "x0"    # Landroid/content/res/ColorStateList;
    .param p3, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1573
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$6;, "Lcom/taobao/weex/ui/component/WXComponent$6;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0, p2, p3, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$6;, "Lcom/taobao/weex/ui/component/WXComponent$6;"
    const/4 v5, 0x0

    .line 1576
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXComponent;->access$400(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXComponent;->access$400(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 1578
    .local v0, "border":Landroid/graphics/Path;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1580
    .end local v0    # "border":Landroid/graphics/Path;
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1581
    return-void
.end method
