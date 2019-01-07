.class public Lnet/openid/appauth/AuthorizationManagementActivity;
.super Landroid/app/Activity;
.source "AuthorizationManagementActivity.java"


# instance fields
.field private a:Z

.field private b:Landroid/content/Intent;

.field private c:Lkkt;

.field private d:Landroid/app/PendingIntent;

.field private e:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "responseUri"    # Landroid/net/Uri;

    .prologue
    .line 187
    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/openid/appauth/AuthorizationManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 298
    const-string/jumbo v2, "No stored state - unable to handle response"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lklq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    .line 315
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string/jumbo v2, "authIntent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->b:Landroid/content/Intent;

    .line 304
    const-string/jumbo v2, "authStarted"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    .line 306
    :try_start_0
    const-string/jumbo v2, "authRequest"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "authRequestJson":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 308
    invoke-static {v0}, Lkkt;->a(Ljava/lang/String;)Lkkt;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const-string/jumbo v2, "completeIntent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    .line 314
    const-string/jumbo v2, "cancelIntent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 308
    goto :goto_1

    .line 310
    .end local v0    # "authRequestJson":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "ex":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to deserialize authorization request"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->a(Landroid/os/Bundle;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationManagementActivity;->setIntent(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    iput-boolean v5, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1258
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1318
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "error"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationException;->fromOAuthRedirect(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1260
    :goto_1
    if-nez v0, :cond_5

    .line 1261
    const-string/jumbo v0, "Failed to extract OAuth2 response from redirect"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lklq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :goto_2
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementActivity;->finish()V

    goto :goto_0

    .line 1321
    :cond_1
    new-instance v0, Lkku$a;

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;

    invoke-direct {v0, v2}, Lkku$a;-><init>(Lkkt;)V

    .line 1322
    invoke-virtual {v0, v1}, Lkku$a;->a(Landroid/net/Uri;)Lkku$a;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Lkku$a;->a()Lkku;

    move-result-object v0

    .line 1325
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;

    iget-object v2, v2, Lkkt;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lkku;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;

    iget-object v2, v2, Lkkt;->j:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;

    iget-object v2, v2, Lkkt;->j:Ljava/lang/String;

    iget-object v3, v0, Lkku;->b:Ljava/lang/String;

    .line 1326
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1328
    :cond_3
    const-string/jumbo v2, "State returned in authorization response (%s) does not match state from request (%s) - discarding response"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lkku;->b:Ljava/lang/String;

    aput-object v0, v3, v4

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;

    iget-object v0, v0, Lkkt;->j:Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lklq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    sget-object v0, Lnet/openid/appauth/AuthorizationException$a;->j:Lnet/openid/appauth/AuthorizationException;

    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 1336
    :cond_4
    invoke-virtual {v0}, Lkku;->b()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 1264
    :cond_5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1266
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    .line 1267
    const-string/jumbo v1, "Authorization complete - invoking completion intent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    :try_start_0
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    const-string/jumbo v1, "Failed to send completion intent"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lklq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1274
    :cond_6
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 2279
    :cond_7
    const-string/jumbo v0, "Authorization flow canceled by user"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2280
    sget-object v0, Lnet/openid/appauth/AuthorizationException$b;->b:Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    .line 2283
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationException;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2284
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 2286
    :try_start_1
    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2287
    :catch_1
    move-exception v0

    .line 2288
    const-string/jumbo v1, "Failed to send cancel intent"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lklq;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2291
    :cond_8
    invoke-virtual {p0, v4, v0}, Lnet/openid/appauth/AuthorizationManagementActivity;->setResult(ILandroid/content/Intent;)V

    .line 2292
    const-string/jumbo v0, "No cancel intent set - will return to previous activity"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string/jumbo v0, "authStarted"

    iget-boolean v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string/jumbo v0, "authIntent"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    const-string/jumbo v0, "authRequest"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->c:Lkkt;

    .line 3017
    invoke-virtual {v1}, Lkkt;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v0, "completeIntent"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    const-string/jumbo v0, "cancelIntent"

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationManagementActivity;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    return-void
.end method
