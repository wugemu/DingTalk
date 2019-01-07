.class final Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;
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
    .line 97
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->b:Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Ljez;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->b:Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getRpcParams()Lcom/alipay/android/phone/mrpc/core/RpcParams;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    return-object v0
.end method

.method public final getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->getGwUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isGzip()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;->a:Lcom/alipay/android/phone/mrpc/core/RpcParams;

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
    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    .line 129
    .local v1, "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v3, ""

    .line 165
    .end local v1    # "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :goto_0
    return-object v3

    .line 137
    .restart local v1    # "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v4

    .line 138
    .local v4, "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    if-nez v4, :cond_1

    .line 144
    const-string/jumbo v3, ""

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "INPUT"

    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 150
    .local v2, "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p2, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 151
    iput-object v0, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 152
    const/4 v5, 0x4

    iput v5, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 153
    const-string/jumbo v5, ""

    invoke-interface {v4, v2, v5}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "sign":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
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
