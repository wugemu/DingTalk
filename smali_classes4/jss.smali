.class public final Ljss;
.super Ljsw;
.source "ProGuard"


# instance fields
.field private k:Ljuc;

.field private l:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljsv;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljsw;-><init>(Ljsv;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 365
    new-instance v0, Ljss$1;

    invoke-direct {v0, p0}, Ljss$1;-><init>(Ljss;)V

    invoke-static {v0}, Ljtw;->a(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Ljss;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsw$a;

    .line 375
    iget v3, v0, Ljsw$a;->a:I

    if-ne v3, p2, :cond_0

    .line 376
    iget-object v1, v0, Ljsw$a;->b:Ljuc;

    .line 377
    iget-object v3, p0, Ljss;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 383
    :goto_0
    if-nez p4, :cond_2

    .line 384
    if-eqz v0, :cond_1

    .line 385
    invoke-interface {v0}, Ljuc;->a()V

    .line 408
    :cond_1
    :goto_1
    return-void

    .line 390
    :cond_2
    const-string/jumbo v1, "key_response"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    :try_start_0
    invoke-static {v1}, Ljtx;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1413
    const-string/jumbo v3, "access_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1414
    const-string/jumbo v4, "expires_in"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1415
    const-string/jumbo v5, "openid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1418
    iget-object v5, p0, Ljss;->b:Ljsv;

    invoke-virtual {v5, v3, v4}, Ljsv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v3, p0, Ljss;->b:Ljsv;

    .line 2049
    iput-object v1, v3, Ljsv;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 396
    invoke-static {p1, p4}, Lcom/tencent/connect/common/AssistActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 400
    :cond_4
    const/4 v1, -0x1

    if-ne p3, v1, :cond_5

    .line 401
    invoke-static {p4, v0}, Ljss;->a(Landroid/content/Intent;Ljuc;)V

    .line 2191
    :goto_3
    iput-object v2, p0, Ljss;->l:Landroid/app/Activity;

    .line 2192
    iput-object v2, p0, Ljss;->k:Ljuc;

    .line 407
    invoke-static {}, Ljtg;->a()V

    goto :goto_1

    .line 403
    :cond_5
    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v3, "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL"

    invoke-static {v1, v3}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-interface {v0}, Ljuc;->a()V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method
