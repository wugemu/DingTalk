.class Lcom/cmic/sso/sdk/auth/AuthnHelper$3;
.super Ljava/lang/Object;
.source "AuthnHelper.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/b;


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;->a:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-static {p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->access$300(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V

    .line 167
    return-void
.end method
