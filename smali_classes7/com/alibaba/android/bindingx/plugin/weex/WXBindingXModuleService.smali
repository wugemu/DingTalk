.class public Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModuleService;
.super Landroid/app/Service;
.source "WXBindingXModuleService.java"

# interfaces
.implements Lcom/taobao/weex/ui/IExternalModuleGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/common/WXModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-string/jumbo v0, "bindingx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-class v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string/jumbo v0, "binding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const-class v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v0, "expressionBinding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const-class v0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
