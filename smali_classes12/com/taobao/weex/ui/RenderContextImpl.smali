.class Lcom/taobao/weex/ui/RenderContextImpl;
.super Ljava/lang/Object;
.source "RenderContextImpl.java"

# interfaces
.implements Lcom/taobao/weex/dom/RenderContext;


# instance fields
.field private mRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 46
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mRegistry:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mRegistry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method public getInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "comp"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public unregisterComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/ui/RenderContextImpl;->mRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method
