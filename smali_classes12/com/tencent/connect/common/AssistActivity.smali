.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field private static d:Ljsw;


# instance fields
.field private e:Ljsw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 28
    sput-boolean v0, Lcom/tencent/connect/common/AssistActivity;->b:Z

    .line 29
    sput-boolean v0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v0, 0x2775

    .line 196
    if-nez p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-nez p1, :cond_2

    .line 202
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_2
    :try_start_0
    const-string/jumbo v0, "key_response"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "AssistActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AssistActivity--setResultDataForLogin-- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "openid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    const/16 v0, 0x2775

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    :cond_3
    const/16 v0, 0x3039

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljsw;)V
    .locals 0

    .prologue
    .line 187
    sput-object p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljsw;

    .line 188
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    const-string/jumbo v0, "AssistActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AssistActivity--onActivityResult--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "AssistActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--requestCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    if-nez p1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-eqz p3, :cond_2

    .line 171
    const-string/jumbo v0, "key_action"

    const-string/jumbo v1, "action_login"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Ljsw;

    if-eqz v0, :cond_3

    .line 175
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "AssistActivity--onActivityResult-- mAPiObject != null"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Ljsw;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljsw;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 183
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_0

    .line 179
    :cond_3
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "AssistActivity--onActivityResult-- mAPiObject == null"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {p0, p3}, Lcom/tencent/connect/common/AssistActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z

    .line 41
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v2, "AssistActivity--onCreate--"

    invoke-static {v0, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->d:Ljsw;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->d:Ljsw;

    iput-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Ljsw;

    .line 48
    sput-object v9, Lcom/tencent/connect/common/AssistActivity;->d:Ljsw;

    .line 49
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Ljsw;

    invoke-virtual {v0}, Ljsw;->a()Landroid/content/Intent;

    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    move v0, v1

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "h5_share_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 54
    if-eqz p1, :cond_2

    .line 55
    const-string/jumbo v1, "RESTART_FLAG"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 57
    :cond_2
    if-nez v1, :cond_0

    .line 58
    if-nez v3, :cond_4

    .line 61
    invoke-virtual {p0, v2, v0}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 50
    :cond_3
    const-string/jumbo v0, "key_request_code"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1240
    :cond_4
    const-string/jumbo v0, "viaShareType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1241
    const-string/jumbo v0, "callbackAction"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1242
    const-string/jumbo v0, "url"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1243
    const-string/jumbo v0, "openId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    const-string/jumbo v1, "appId"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1246
    const-string/jumbo v2, ""

    .line 1247
    const-string/jumbo v3, ""

    .line 1248
    const-string/jumbo v7, "shareToQQ"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1249
    const-string/jumbo v2, "ANDROIDQQ.SHARETOQQ.XX"

    .line 1250
    const-string/jumbo v3, "10"

    .line 1256
    :cond_5
    :goto_2
    invoke-static {p0, v5}, Ljtx;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 1257
    if-nez v5, :cond_8

    .line 1258
    invoke-static {v4}, Ljtv;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljuc;

    .line 1259
    if-eqz v4, :cond_6

    .line 1260
    new-instance v5, Ljue;

    const/4 v7, -0x6

    const-string/jumbo v8, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    invoke-direct {v5, v7, v8, v9}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljuc;->a(Ljue;)V

    .line 1263
    :cond_6
    invoke-static {}, Ljtm;->a()Ljtm;

    const-string/jumbo v4, "3"

    const-string/jumbo v5, "1"

    const-string/jumbo v7, "0"

    const-string/jumbo v8, "2"

    const-string/jumbo v9, "0"

    invoke-static/range {v0 .. v9}, Ljtm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 1272
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shareH5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1251
    :cond_7
    const-string/jumbo v7, "shareToQzone"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1252
    const-string/jumbo v2, "ANDROIDQQ.SHARETOQZ.XX"

    .line 1253
    const-string/jumbo v3, "11"

    goto :goto_2

    .line 1268
    :cond_8
    invoke-static {}, Ljtm;->a()Ljtm;

    const-string/jumbo v4, "3"

    const-string/jumbo v5, "0"

    const-string/jumbo v7, "0"

    const-string/jumbo v8, "2"

    const-string/jumbo v9, "0"

    invoke-static/range {v0 .. v9}, Ljtm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "-->onDestroy"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 132
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Ljtv;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    const-string/jumbo v2, "AssistActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AssistActivity--onNewIntent--"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string/jumbo v1, "mAPiObject = null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "key_action"

    const-string/jumbo v2, "action_share"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    if-eqz v0, :cond_2

    .line 139
    check-cast v0, Ljuc;

    invoke-static {p1, v0}, Ljsw;->a(Landroid/content/Intent;Ljuc;)V

    .line 144
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 147
    :cond_0
    return-void

    .line 136
    :cond_1
    const-string/jumbo v1, "mAPiObject != null"

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "-->onPause"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "-->onResume"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "is_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string/jumbo v1, "is_qq_mobile_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    sget-boolean v0, Lcom/tencent/connect/common/AssistActivity;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 97
    :cond_2
    sput-boolean v2, Lcom/tencent/connect/common/AssistActivity;->b:Z

    .line 100
    :cond_3
    sget-boolean v0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-eqz v0, :cond_0

    .line 101
    sput-boolean v2, Lcom/tencent/connect/common/AssistActivity;->c:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "AssistActivity--onSaveInstanceState--"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "RESTART_FLAG"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "-->onStart"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    const-string/jumbo v0, "AssistActivity"

    const-string/jumbo v1, "-->onStop"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 116
    return-void
.end method
