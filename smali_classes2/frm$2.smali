.class final Lfrm$2;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodePresenter.java"

# interfaces
.implements Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrm;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrm;


# direct methods
.method constructor <init>(Lfrm;)V
    .locals 0
    .param p1, "this$0"    # Lfrm;

    .prologue
    .line 106
    iput-object p1, p0, Lfrm$2;->a:Lfrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTokenFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "ret"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NotReceiveSmsCodePresenter.initSim.tokenListener.onTokenFailed: "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 5032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 141
    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 6032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 144
    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 7032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 145
    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->onDestroy()V

    .line 147
    :cond_1
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 8032
    iget-object v0, v0, Lfrm;->a:Landroid/app/Activity;

    .line 147
    new-instance v1, Lfrm$2$2;

    invoke-direct {v1, p0}, Lfrm$2$2;-><init>(Lfrm$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onTokenSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "ret"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 1032
    invoke-virtual {v0}, Lfrm;->a()Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 2032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 3032
    iget-object v0, v0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 113
    invoke-virtual {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->onDestroy()V

    .line 116
    :cond_1
    iget-object v0, p0, Lfrm$2;->a:Lfrm;

    .line 4032
    iget-object v0, v0, Lfrm;->a:Landroid/app/Activity;

    .line 116
    new-instance v1, Lfrm$2$1;

    invoke-direct {v1, p0, p1}, Lfrm$2$1;-><init>(Lfrm$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
