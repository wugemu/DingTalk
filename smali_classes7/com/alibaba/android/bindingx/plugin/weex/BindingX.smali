.class public Lcom/alibaba/android/bindingx/plugin/weex/BindingX;
.super Ljava/lang/Object;
.source "BindingX.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 36
    const-string/jumbo v0, "expressionBinding"

    const-class v1, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 37
    const-string/jumbo v0, "binding"

    const-class v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 38
    const-string/jumbo v0, "bindingx"

    const-class v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 39
    return-void
.end method
