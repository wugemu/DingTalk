.class final Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;
.super Ljava/lang/Object;
.source "CTCCVaildManager.java"

# interfaces
.implements Lcn/com/chinatelecom/gateway/lib/PreCodeListener;


# instance fields
.field final synthetic a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;


# direct methods
.method constructor <init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ctcc\uff1agetAccessCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->e(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 47
    const-string/jumbo v1, "CTCC"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setVendorName(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "CTCC\uff1a\u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u7ed3\u679c\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 52
    :cond_0
    const-class v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;

    invoke-static {p1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;

    .line 53
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->getResult()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenData;

    invoke-static {v0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenData;

    .line 56
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenData;->getAccessCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;-><init>()V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-static {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->b(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|ct_sjl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setAccessCode(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setDeviceType(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setOsType(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "ct_sjl"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setVendor_key(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 65
    const-string/jumbo v2, "CTCC"

    invoke-virtual {v1, v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setVendorName(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/model/TokenRet;->getResult()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setCode(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u5931\u8d25\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v0

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_2
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 72
    const-string/jumbo v1, "CTCC"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setVendorName(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u5931\u8d25\uff0cjson\u89e3\u6790\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/ctcc/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
