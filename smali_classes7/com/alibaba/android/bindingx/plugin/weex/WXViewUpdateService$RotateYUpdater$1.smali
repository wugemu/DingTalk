.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$cmd:Ljava/lang/Object;

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
    .line 524
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v5, "perspective"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 525
    .local v2, "perspective":I
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Laou;->a(Landroid/content/Context;I)I

    move-result v2

    .line 527
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v5, "transformOrigin"

    .line 528
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    .line 527
    invoke-static {v4, v5}, Laou;->a(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v3

    .line 530
    .local v3, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v2, :cond_0

    .line 531
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setCameraDistance(F)V

    .line 533
    :cond_0
    if-eqz v3, :cond_1

    .line 534
    iget-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    .line 535
    iget-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotY(F)V

    .line 538
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 539
    .local v0, "d":D
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationY(F)V

    .line 540
    return-void
.end method
