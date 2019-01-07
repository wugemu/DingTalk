.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpacityUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Laoa$b;Ljava/util/Map;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cmd"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "translator"    # Laoa$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Laoa$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    .local p5, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v1, p3, Ljava/lang/Double;

    if-nez v1, :cond_0

    .line 262
    .end local p3    # "cmd":Ljava/lang/Object;
    :goto_0
    return-void

    .line 254
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_0
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "cmd":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 255
    .local v2, "val":D
    double-to-float v0, v2

    .line 256
    .local v0, "alpha":F
    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;Landroid/view/View;F)V

    invoke-static {v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->access$2300(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
