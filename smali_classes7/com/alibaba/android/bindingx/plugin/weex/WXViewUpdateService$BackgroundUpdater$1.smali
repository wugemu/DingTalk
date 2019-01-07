.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

.field final synthetic val$d:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$targetView:Landroid/view/View;

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 622
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 623
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 624
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$targetView:Landroid/view/View;

    iget v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    instance-of v3, v2, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 626
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 627
    .local v0, "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    iget v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setColor(I)V

    goto :goto_0

    .line 628
    .end local v0    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    :cond_2
    instance-of v3, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 629
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 630
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    iget v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater$1;->val$d:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_0
.end method
