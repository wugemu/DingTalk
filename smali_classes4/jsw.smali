.class public abstract Ljsw;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljsw$a;
    }
.end annotation


# static fields
.field protected static e:I

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Z

.field private static final k:Ljava/lang/String;


# instance fields
.field protected a:Ljsu;

.field protected b:Ljsv;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljsw$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/content/Intent;

.field protected f:Ljuc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-class v0, Ljsw;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljsw;->k:Ljava/lang/String;

    .line 57
    const/16 v0, 0x3e8

    sput v0, Ljsw;->e:I

    .line 61
    sput-object v1, Ljsw;->g:Ljava/lang/String;

    .line 62
    sput-object v1, Ljsw;->h:Ljava/lang/String;

    .line 63
    sput-object v1, Ljsw;->i:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Ljsw;->j:Z

    return-void
.end method

.method private constructor <init>(Ljsu;Ljsv;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Ljsw;->c:Ljava/util/List;

    .line 56
    iput-object v0, p0, Ljsw;->d:Landroid/content/Intent;

    .line 58
    iput-object v0, p0, Ljsw;->f:Ljuc;

    .line 73
    iput-object v0, p0, Ljsw;->a:Ljsu;

    .line 74
    iput-object p2, p0, Ljsw;->b:Ljsv;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljsw;->c:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljsv;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljsw;-><init>(Ljsu;Ljsv;)V

    .line 80
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljuc;)V
    .locals 5

    .prologue
    const/4 v4, -0x4

    .line 130
    if-nez p0, :cond_1

    .line 131
    invoke-interface {p1}, Ljuc;->a()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string/jumbo v0, "key_action"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "action_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    const-string/jumbo v0, "key_error_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-nez v0, :cond_3

    .line 140
    const-string/jumbo v0, "key_response"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_2

    .line 143
    :try_start_0
    invoke-static {v1}, Ljtx;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    invoke-interface {p1, v0}, Ljuc;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v2, Ljue;

    const-string/jumbo v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v2, v4, v3, v1}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljuc;->a(Ljue;)V

    .line 148
    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenUi, onActivityResult, json error"

    invoke-static {v1, v2, v0}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_2
    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "OpenUi, onActivityResult, onComplete"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0}, Ljuc;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_3
    const-string/jumbo v1, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "OpenUi, onActivityResult, onError = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljtg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "key_error_msg"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string/jumbo v2, "key_error_detail"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljue;

    invoke-direct {v3, v0, v1, v2}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljuc;->a(Ljue;)V

    goto/16 :goto_0

    .line 162
    :cond_4
    const-string/jumbo v1, "action_share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "response"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    invoke-interface {p1}, Ljuc;->a()V

    goto/16 :goto_0

    .line 168
    :cond_5
    const-string/jumbo v2, "error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 169
    new-instance v0, Ljue;

    const/4 v2, -0x6

    const-string/jumbo v3, "unknown error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljuc;->a(Ljue;)V

    goto/16 :goto_0

    .line 171
    :cond_6
    const-string/jumbo v2, "complete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    if-nez v1, :cond_7

    const-string/jumbo v0, "{\"ret\": 0}"

    :goto_1
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-interface {p1, v2}, Ljuc;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 177
    new-instance v0, Ljue;

    const-string/jumbo v2, "json error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v2, v1}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljuc;->a(Ljue;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 173
    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ljsw;->d:Landroid/content/Intent;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 226
    .line 1195
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1197
    const-string/jumbo v0, "format"

    const-string/jumbo v3, "json"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string/jumbo v0, "status_os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string/jumbo v0, "status_machine"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v0, "status_version"

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string/jumbo v0, "sdkv"

    const-string/jumbo v3, "2.9.1.lite"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v0, "sdkp"

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Ljsw;->b:Ljsv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljsw;->b:Ljsv;

    .line 2019
    iget-object v3, v0, Ljsv;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Ljsv;->d:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    const/4 v0, 0x1

    .line 1203
    :goto_0
    if-eqz v0, :cond_0

    .line 1204
    const-string/jumbo v0, "access_token"

    iget-object v3, p0, Ljsw;->b:Ljsv;

    .line 2031
    iget-object v3, v3, Ljsv;->b:Ljava/lang/String;

    .line 1204
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v0, "oauth_consumer_key"

    iget-object v3, p0, Ljsw;->b:Ljsv;

    .line 3023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 1205
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v0, "openid"

    iget-object v3, p0, Ljsw;->b:Ljsv;

    .line 3045
    iget-object v3, v3, Ljsv;->c:Ljava/lang/String;

    .line 1206
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string/jumbo v0, "appid_for_getting_config"

    iget-object v3, p0, Ljsw;->b:Ljsv;

    .line 4023
    iget-object v3, v3, Ljsv;->a:Ljava/lang/String;

    .line 1209
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    :cond_0
    invoke-static {}, Ljtr;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "pfStore"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1219
    const-string/jumbo v1, "pf"

    const-string/jumbo v3, "openmobile_android"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    const-string/jumbo v1, "pf"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string/jumbo v1, "need_version"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    const-string/jumbo v1, "http://openmobile.qq.com/oauth2.0/m_jump_by_version?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v2}, Ljtx;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 2019
    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 277
    invoke-static {p0}, Lcom/tencent/connect/common/AssistActivity;->a(Ljsw;)V

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    sput-boolean v3, Lcom/tencent/connect/common/AssistActivity;->b:Z

    .line 280
    sget-boolean v1, Lcom/tencent/connect/common/AssistActivity;->a:Z

    if-eqz v1, :cond_0

    .line 281
    const-string/jumbo v1, "is_qq_mobile_share"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 284
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Ljsw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsw$a;

    .line 98
    iget v3, v0, Ljsw$a;->a:I

    if-ne v3, p2, :cond_0

    .line 99
    iget-object v1, v0, Ljsw$a;->b:Ljuc;

    .line 100
    iget-object v2, p0, Ljsw;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 105
    :goto_0
    if-nez v0, :cond_1

    .line 108
    sget-object v0, Ljsw;->k:Ljava/lang/String;

    const-string/jumbo v1, "BaseApi--onActivityResult-- listener == null"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1, p4}, Lcom/tencent/connect/common/AssistActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 120
    :goto_1
    return-void

    .line 113
    :cond_1
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 114
    invoke-static {p4, v0}, Ljsw;->a(Landroid/content/Intent;Ljuc;)V

    .line 119
    :goto_2
    invoke-static {}, Ljtg;->a()V

    goto :goto_1

    .line 116
    :cond_2
    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL"

    invoke-static {v1, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v0}, Ljuc;->a()V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Ljuc;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 301
    invoke-static {p0}, Lcom/tencent/connect/common/AssistActivity;->a(Ljsw;)V

    .line 302
    sget v0, Ljsw;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Ljsw;->e:I

    .line 303
    iget-object v1, p0, Ljsw;->d:Landroid/content/Intent;

    const-string/jumbo v2, "key_request_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Ljsw;->c:Ljava/util/List;

    new-instance v2, Ljsw$a;

    invoke-direct {v2, p0, v0, p2}, Ljsw$a;-><init>(Ljsw;ILjuc;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4267
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4268
    const-string/jumbo v1, "is_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const/16 v1, 0x2774

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method

.method protected final b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Ljsw;->d:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 323
    invoke-static {}, Ljtr;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljsw;->d:Landroid/content/Intent;

    .line 5192
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 5198
    :cond_0
    :goto_0
    return v0

    .line 5196
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5197
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 5198
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
