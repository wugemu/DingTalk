.class final Lcom/alicom/phonenumberauthsdk/gatewayauth/b/c;
.super Landroid/os/CountDownTimer;
.source "CUCCVaildManager.java"


# instance fields
.field final synthetic a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;


# direct methods
.method constructor <init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;JJ)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/c;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/c;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;Z)Z

    .line 133
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 134
    const-string/jumbo v1, "CUCC"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setVendorName(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "CUCC \u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u5931\u8d25\uff1atimeout\uff01"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/c;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
