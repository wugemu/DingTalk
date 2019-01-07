.class Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;
.super Ljava/lang/Object;
.source "H5BizUtil.java"


# static fields
.field private static mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Liny;",
            ">;"
        }
    .end annotation
.end field

.field private static mPointCutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mPointCutMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mContextMap:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mResultMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isStartedBizService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mPointCutMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static popResult(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liny;

    .line 57
    .local v0, "bridgeContext":Liny;
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->unregisterServicePointCut(Ljava/lang/String;)V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 61
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez v1, :cond_1

    .line 62
    const-string/jumbo v2, "6001"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->sendErrorCode(Liny;Ljava/lang/String;)V

    .line 68
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mPointCutMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v2, 0x1

    return v2

    .line 64
    .restart local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method

.method static registerServicePointCut(Ljava/lang/String;Liny;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "context"    # Liny;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    sget-object v4, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mPointCutMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 24
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    :goto_0
    return v2

    .line 28
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "advice":Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;
    sget-object v4, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mPointCutMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    aput-object v6, v5, v2

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    aput-object v2, v5, v3

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/aspect/b;->a([Ljava/lang/String;Lcom/alipay/mobile/aspect/a;)V

    .line 38
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 39
    goto :goto_0
.end method

.method static saveResult(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 50
    const-string/jumbo v0, "funcName"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method static sendErrorCode(Liny;Ljava/lang/String;)V
    .locals 2
    .param p0, "bridgeContext"    # Liny;
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 82
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {p0, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 84
    return-void
.end method

.method static unregisterServicePointCut(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->mPointCutMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 44
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/aspect/b;->a()Lcom/alipay/mobile/aspect/b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/aspect/a;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/aspect/b;->a(Lcom/alipay/mobile/aspect/a;)V

    .line 47
    :cond_0
    return-void
.end method
