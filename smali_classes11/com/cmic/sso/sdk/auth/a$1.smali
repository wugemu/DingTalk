.class Lcom/cmic/sso/sdk/auth/a$1;
.super Ljava/lang/Object;
.source "AuthnBusiness.java"

# interfaces
.implements Lcom/cmic/sso/sdk/a/b/b;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmic/sso/sdk/auth/b;

.field final synthetic d:Lcom/cmic/sso/sdk/auth/a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/a;Landroid/os/Bundle;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a$1;->d:Lcom/cmic/sso/sdk/auth/a;

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/a$1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cmic/sso/sdk/auth/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmic/sso/sdk/auth/a$1;->c:Lcom/cmic/sso/sdk/auth/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "privateKey"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$1;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "privateKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a$1;->d:Lcom/cmic/sso/sdk/auth/a;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$1;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/a$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/a$1;->c:Lcom/cmic/sso/sdk/auth/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/a;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/b;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a$1;->c:Lcom/cmic/sso/sdk/auth/b;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$1;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
