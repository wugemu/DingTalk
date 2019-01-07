.class public Lcom/ali/user/open/ucc/webview/UccWebViewActivity;
.super Lcom/ali/user/open/core/webview/BaseWebViewActivity;
.source "UccWebViewActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;-><init>()V

    .line 34
    const-class v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "https://www.alipay.com/webviewbridge"

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->b:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->e:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string/jumbo v0, "hideTitleBar"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->c(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string/jumbo v0, "hideTitleBar"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic c(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->b(Landroid/net/Uri;)V

    return-void
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 149
    if-nez v0, :cond_d

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 153
    :goto_0
    const-string/jumbo v0, "action"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "quit"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    const-string/jumbo v0, "havana_iv_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/ali/user/open/core/model/ResultCode;->SUCCESS:Lcom/ali/user/open/core/model/ResultCode;

    iget v1, v1, Lcom/ali/user/open/core/model/ResultCode;->code:I

    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "iv_token"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->finish()V

    move v0, v9

    .line 234
    :goto_1
    return v0

    .line 159
    :cond_1
    const-string/jumbo v3, "close"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    sget v0, Lcom/ali/user/open/ucc/util/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccCallback;

    .line 161
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->finish()V

    .line 162
    if-eqz v0, :cond_2

    .line 163
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    const/16 v2, 0x57b

    const-string/jumbo v3, "user cancel"

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    move v0, v9

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    const-string/jumbo v3, "bind"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    const-string/jumbo v0, "requestToken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    const-string/jumbo v0, "bindUserToken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {}, Lcom/ali/user/open/ucc/b;->a()Lcom/ali/user/open/ucc/b;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->f:Ljava/lang/String;

    sget v1, Lcom/ali/user/open/ucc/util/b;->a:I

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ali/user/open/ucc/UccCallback;

    move-object v1, p0

    .line 170
    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    move v0, v9

    .line 177
    goto :goto_1

    .line 178
    :cond_4
    const-string/jumbo v3, "bindAfterIdentify"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    const-string/jumbo v0, "request_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    const-string/jumbo v0, "havana_iv_token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string/jumbo v0, "userBindToken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {}, Lcom/ali/user/open/ucc/b;->a()Lcom/ali/user/open/ucc/b;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->f:Ljava/lang/String;

    sget v1, Lcom/ali/user/open/ucc/util/b;->a:I

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ali/user/open/ucc/UccCallback;

    move-object v1, p0

    .line 182
    invoke-virtual/range {v0 .. v8}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    move v0, v9

    .line 190
    goto/16 :goto_1

    .line 191
    :cond_5
    const-string/jumbo v3, "continueLogin"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-static {}, Lcom/ali/user/open/ucc/e;->a()Lcom/ali/user/open/ucc/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->scene:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->token:Ljava/lang/String;

    sget v1, Lcom/ali/user/open/ucc/util/b;->a:I

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ali/user/open/ucc/UccCallback;

    move-object v1, p0

    .line 193
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/open/ucc/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    move v0, v9

    .line 199
    goto/16 :goto_1

    .line 200
    :cond_6
    const-string/jumbo v3, "taobao_auth_token"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 201
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string/jumbo v0, "needSession"

    iget-object v2, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->e:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/ali/user/open/ucc/b;->a()Lcom/ali/user/open/ucc/b;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    const-string/jumbo v4, "top_auth_code"

    .line 206
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oauthcode"

    sget v1, Lcom/ali/user/open/ucc/util/b;->a:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ali/user/open/ucc/UccCallback;

    move-object v1, p0

    .line 203
    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V

    move v0, v9

    .line 210
    goto/16 :goto_1

    .line 211
    :cond_7
    const-string/jumbo v3, "registerSuc"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "afterBindMobile"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 212
    :cond_8
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->e:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    const-string/jumbo v0, "trustToken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {}, Lcom/ali/user/open/ucc/b;->a()Lcom/ali/user/open/ucc/b;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->f:Ljava/lang/String;

    sget v1, Lcom/ali/user/open/ucc/util/b;->a:I

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ali/user/open/ucc/UccCallback;

    move-object v1, p0

    .line 216
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    :goto_2
    move v0, v9

    .line 232
    goto/16 :goto_1

    .line 223
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->f:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    :cond_a
    sget v0, Lcom/ali/user/open/ucc/util/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccCallback;

    .line 227
    if-eqz v0, :cond_b

    .line 228
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    :cond_b
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->finish()V

    goto :goto_2

    :cond_c
    move v0, v2

    .line 234
    goto/16 :goto_1

    :cond_d
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static serialBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 239
    const/4 v0, 0x0

    .line 240
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    const-string/jumbo v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 245
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 246
    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 247
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkWebviewBridge(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$2;-><init>(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)V

    return-object v0
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;-><init>(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)V

    return-object v0
.end method

.method protected initParams(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->initParams(Landroid/content/Intent;)V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string/jumbo v0, "targetSite"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "userToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->c:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "needSession"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->e:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->token:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "scene"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->scene:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "needToast"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->f:Ljava/lang/String;

    .line 74
    :cond_0
    return-void
.end method

.method public onBackHistory()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "authorization-notice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "agreement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/MemberWebView;->goBack()V

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_1
    sget v0, Lcom/ali/user/open/ucc/util/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/callback/CallbackManager;->getCallback(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/ucc/UccCallback;

    .line 274
    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->d:Ljava/lang/String;

    const/16 v2, 0x57b

    const-string/jumbo v3, "user cancel"

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->finish()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    const-string/jumbo v1, "accountBridge"

    new-instance v2, Lcom/ali/user/open/tbauth/bridge/LoginBridge;

    invoke-direct {v2}, Lcom/ali/user/open/tbauth/bridge/LoginBridge;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/open/core/webview/MemberWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->memberWebView:Lcom/ali/user/open/core/webview/MemberWebView;

    const-string/jumbo v1, "loginBridge"

    new-instance v2, Lcom/ali/user/open/tbauth/bridge/LoginBridge;

    invoke-direct {v2}, Lcom/ali/user/open/tbauth/bridge/LoginBridge;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/open/core/webview/MemberWebView;->addBridgeObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    sget-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->onDestroy()V

    .line 284
    return-void
.end method
