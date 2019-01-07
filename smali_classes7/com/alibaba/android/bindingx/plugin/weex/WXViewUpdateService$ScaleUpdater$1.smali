.class Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 346
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v10, "perspective"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 347
    .local v1, "perspective":I
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Laou;->a(Landroid/content/Context;I)I

    move-result v1

    .line 349
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$config:Ljava/util/Map;

    const-string/jumbo v10, "transformOrigin"

    .line 350
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    .line 349
    invoke-static {v3, v10}, Laou;->a(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v2

    .line 352
    .local v2, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v1, :cond_0

    .line 353
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    int-to-float v10, v1

    invoke-virtual {v3, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 355
    :cond_0
    if-eqz v2, :cond_1

    .line 356
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/View;->setPivotX(F)V

    .line 357
    iget-object v10, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/View;->setPivotY(F)V

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 361
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 362
    .local v4, "val":D
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v10, v4

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleX(F)V

    .line 363
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v10, v4

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleY(F)V

    .line 374
    .end local v4    # "val":D
    :cond_2
    :goto_0
    return-void

    .line 364
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 366
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x2

    if-lt v3, v10, :cond_2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 367
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 368
    .local v6, "x":D
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 369
    .local v8, "y":D
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v10, v6

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleX(F)V

    .line 370
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater$1;->val$targetView:Landroid/view/View;

    double-to-float v10, v8

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method
