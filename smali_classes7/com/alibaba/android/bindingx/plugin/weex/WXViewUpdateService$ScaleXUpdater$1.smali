.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$cmd:Ljava/lang/Object;

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
    .line 393
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v4, "transformOrigin"

    .line 394
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    .line 393
    invoke-static {v3, v4}, Laou;->a(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v2

    .line 396
    .local v2, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v2, :cond_0

    .line 397
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotX(F)V

    .line 398
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotY(F)V

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 402
    .local v0, "d3":D
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 403
    return-void
.end method
