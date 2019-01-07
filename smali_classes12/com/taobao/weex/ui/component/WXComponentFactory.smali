.class public Lcom/taobao/weex/ui/component/WXComponentFactory;
.super Ljava/lang/Object;
.source "WXComponentFactory.java"


# static fields
.field private static sComponentTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/component/WXComponentFactory;->sComponentTypes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentTypesByInstanceId(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/taobao/weex/ui/component/WXComponentFactory;->sComponentTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static newInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 7
    .param p0, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p1, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p2, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    const/4 v5, 0x0

    .line 51
    if-eqz p0, :cond_0

    iget-object v4, p2, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 81
    :goto_0
    return-object v4

    .line 55
    :cond_1
    sget-object v4, Lcom/taobao/weex/ui/component/WXComponentFactory;->sComponentTypes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 56
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 57
    .local v3, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/taobao/weex/ui/component/WXComponentFactory;->sComponentTypes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v3    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v4, Lcom/taobao/weex/ui/component/WXComponentFactory;->sComponentTypes:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v6, p2, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v4, p2, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    invoke-static {v4}, Lcom/taobao/weex/ui/WXComponentRegistry;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/IFComponentHolder;

    move-result-object v1

    .line 62
    .local v1, "holder":Lcom/taobao/weex/ui/IFComponentHolder;
    if-nez v1, :cond_4

    .line 63
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WXComponentFactory error type:["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] class not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 69
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "container"

    invoke-static {v4}, Lcom/taobao/weex/ui/WXComponentRegistry;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/IFComponentHolder;

    move-result-object v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    new-instance v4, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v5, "Container component not found."

    invoke-direct {v4, v5}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_4
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/taobao/weex/ui/IFComponentHolder;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WXComponentFactory Exception type:["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 81
    goto/16 :goto_0
.end method

.method public static removeComponentTypesByInstanceId(Ljava/lang/String;)V
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/taobao/weex/ui/component/WXComponentFactory;->sComponentTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
