.class public Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;
.super Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field public static final ACTION_AUTH_FAILED:Ljava/lang/String; = "com.alibaba.alimei.common.sdk.auth.failed"

.field public static final INTENT_KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final TAG:Ljava/lang/String; = "AuthenticationFailedException"

.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;->handleAuthFail(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string/jumbo v1, "message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    if-eqz p4, :cond_1

    .line 40
    const-string/jumbo v1, "throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_1
    const-string/jumbo v1, "AuthenticationFailedException"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;->sendAuthFailBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private handleAuthFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1026
    sget-object v1, Lup;->a:Luq;

    .line 48
    .local v1, "oAuthLogin":Luq;
    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v1, p1}, Luq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;-><init>(Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;Ljava/lang/String;)V

    .line 2026
    .local v0, "listener":Lxv;, "Lxv<Lur;>;"
    sget-object v2, Lup;->a:Luq;

    .line 60
    invoke-interface {v2, p1, v0}, Luq;->a(Ljava/lang/String;Lxv;)V

    .line 67
    .end local v0    # "listener":Lxv;, "Lxv<Lur;>;"
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;->sendAuthFailBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;->sendAuthFailBroadcast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendAuthFailBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.alimei.common.sdk.auth.failed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    const-string/jumbo v1, "AuthenticationFailedException"

    const-string/jumbo v2, "auth failed notify"

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
