.class final Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;
.super Ljava/lang/Object;
.source "H5SessionTabInfoParser.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabObserver$H5SessionTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataParsed(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    const-string/jumbo v1, "H5SessionTabInfoParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "##tabbar## getOfflineData in callback data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "stupid"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    const-string/jumbo v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$appId:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 40
    .local v0, "dataObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 45
    .end local v0    # "dataObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$1;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
