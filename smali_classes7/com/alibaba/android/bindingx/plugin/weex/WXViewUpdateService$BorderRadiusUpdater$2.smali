.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$translator:Laoa$b;

.field final synthetic val$value:D


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;Landroid/view/View;DLaoa$b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iput-object p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Laoa$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 828
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 829
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 830
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 831
    .local v0, "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Laoa$b;

    invoke-static {v4, v5, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLaoa$b;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 832
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Laoa$b;

    invoke-static {v4, v5, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLaoa$b;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 833
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Laoa$b;

    invoke-static {v4, v5, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLaoa$b;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 834
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-wide v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$value:D

    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater$2;->val$translator:Laoa$b;

    invoke-static {v4, v5, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2200(DLaoa$b;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 836
    .end local v0    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    :cond_0
    return-void
.end method