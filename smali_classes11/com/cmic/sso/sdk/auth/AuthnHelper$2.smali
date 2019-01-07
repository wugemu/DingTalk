.class Lcom/cmic/sso/sdk/auth/AuthnHelper$2;
.super Ljava/lang/Object;
.source "AuthnHelper.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->access$100(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V

    .line 130
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    const-string/jumbo v1, "102509"

    const-string/jumbo v2, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-static {v3}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->access$200(Lcom/cmic/sso/sdk/auth/AuthnHelper;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/cmic/sso/sdk/auth/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->access$300(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V

    .line 131
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "AuthnHelper"

    const-string/jumbo v2, "have exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    return-void
.end method
