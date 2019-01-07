.class public Lcom/ali/user/open/ucc/a/a;
.super Lcom/ali/user/open/ucc/b/a;
.source "AlipayUccServiceProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ali/user/open/ucc/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/oauth/AppCredential;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ali/user/open/ucc/UccCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x3e9

    .line 23
    if-nez p4, :cond_1

    .line 24
    if-eqz p6, :cond_0

    .line 25
    const-string/jumbo v0, "app credential is null"

    invoke-interface {p6, p3, v1, v0}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p4, Lcom/ali/user/open/oauth/AppCredential;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p4, Lcom/ali/user/open/oauth/AppCredential;->pid:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p4, Lcom/ali/user/open/oauth/AppCredential;->signType:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    :cond_2
    const-string/jumbo v0, "app credential is null"

    invoke-interface {p6, p3, v1, v0}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/ali/user/open/ucc/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/oauth/AppCredential;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
