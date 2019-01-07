.class final Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/service/impl/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

.field final synthetic b:Lcom/mybank/android/phone/common/service/impl/ServiceLoader;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;Lcom/alipay/android/phone/mrpc/core/RpcParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->b:Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Ljez;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->b:Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getRpcParams()Lcom/alipay/android/phone/mrpc/core/RpcParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->b:Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->b(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setHeaders(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    return-object v0
.end method

.method public final getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->getGwUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isGzip()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->isGzip()Z

    move-result v0

    return v0
.end method

.method public final sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    .line 239
    .local v1, "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-nez v1, :cond_0

    .line 241
    const-string/jumbo v3, ""

    .line 263
    .end local v1    # "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :goto_0
    return-object v3

    .line 244
    .restart local v1    # "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v4

    .line 245
    .local v4, "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    if-nez v4, :cond_1

    .line 247
    const-string/jumbo v3, ""

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "INPUT"

    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 253
    .local v2, "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p2, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 254
    iput-object v0, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 255
    const/4 v5, 0x4

    iput v5, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 256
    const-string/jumbo v5, ""

    invoke-interface {v4, v2, v5}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 259
    .local v3, "sign":Ljava/lang/String;
    goto :goto_0

    .line 263
    .end local v0    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v2    # "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v3    # "sign":Ljava/lang/String;
    .end local v4    # "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :catch_0
    move-exception v5

    const-string/jumbo v3, ""

    goto :goto_0
.end method
