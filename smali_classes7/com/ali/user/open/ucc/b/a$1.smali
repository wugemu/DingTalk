.class Lcom/ali/user/open/ucc/b/a$1;
.super Ljava/lang/Object;
.source "BaseUccServiceProvider.java"

# interfaces
.implements Lcom/ali/user/open/oauth/OauthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b/a;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic e:Lcom/ali/user/open/ucc/b/a;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b/a;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ali/user/open/ucc/b/a$1;->e:Lcom/ali/user/open/ucc/b/a;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b/a$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ali/user/open/ucc/b/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/open/ucc/b/a$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/ali/user/open/ucc/b/a$1;->d:Lcom/ali/user/open/ucc/UccCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ali/user/open/ucc/b/a$1;->d:Lcom/ali/user/open/ucc/UccCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v0, "authCode"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "accessToken"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v0

    .line 60
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v5, "oauthcode"

    .line 61
    :goto_1
    invoke-static {}, Lcom/ali/user/open/ucc/b;->a()Lcom/ali/user/open/ucc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/open/ucc/b/a$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b/a$1;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/open/ucc/b/a$1;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/ali/user/open/ucc/b/a$1;->d:Lcom/ali/user/open/ucc/UccCallback;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 62
    return-void

    :cond_0
    move-object v4, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string/jumbo v5, "accesstoken"

    goto :goto_1
.end method
