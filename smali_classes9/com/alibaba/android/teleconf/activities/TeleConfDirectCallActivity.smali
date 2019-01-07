.class public Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfDirectCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 82
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CREATE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->d:Z

    .line 93
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    return-wide v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1258
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_4

    .line 1260
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_4

    .line 1262
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1264
    :try_start_0
    const-string/jumbo v2, "/page/directCreateCall"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1265
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CREATE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    .line 1267
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    .line 1268
    const-string/jumbo v1, "memberCnt"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 1271
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->f:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1276
    :cond_0
    :goto_0
    :try_start_2
    const-string/jumbo v1, "targetUid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1278
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    .line 1282
    :goto_1
    const-string/jumbo v1, "targetNumber"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    .line 1284
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 1287
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1294
    :cond_1
    :goto_2
    :try_start_4
    const-string/jumbo v1, "effectiveCallerId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1296
    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->j:Ljava/lang/String;

    .line 1298
    :cond_2
    const-string/jumbo v1, "userToUser"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1300
    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->k:Ljava/lang/String;

    .line 1303
    :cond_3
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a:Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", memberCount = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", type = "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I

    .line 1304
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", effectiveCallerId = "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ", userToUser = "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1303
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1326
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5

    .line 1327
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->c:Landroid/content/BroadcastReceiver;

    .line 1393
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1394
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CANCEL_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1396
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1397
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    return-void

    .line 1280
    :cond_6
    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "handleIntent "

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1305
    :cond_7
    :try_start_6
    const-string/jumbo v2, "/page/chooseCallType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1306
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CHOOSE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    .line 1308
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    .line 1309
    const-string/jumbo v1, "targetUid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1311
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    .line 1315
    :goto_4
    const-string/jumbo v1, "targetNumber"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    goto/16 :goto_3

    .line 1313
    :cond_8
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 253
    .line 3401
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3402
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->c:Landroid/content/BroadcastReceiver;

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 255
    return-void
.end method

.method protected onStart()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 108
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CREATE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    if-ne v0, v1, :cond_b

    .line 110
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_BIZ_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_7

    .line 114
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->d:Z

    if-nez v0, :cond_6

    .line 1418
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->f:I

    if-le v0, v3, :cond_d

    .line 2409
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    .line 2410
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v1

    .line 2411
    if-lt v0, v1, :cond_4

    .line 1421
    :goto_0
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->f:I

    if-le v1, v0, :cond_0

    .line 1422
    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->f:I

    :cond_0
    move v0, v2

    .line 1425
    :goto_1
    sget v1, Leuj$l;->dt_conference_start_biz_call_from_contact:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1426
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    .line 1430
    :cond_1
    iget v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->f:I

    sget v6, Leuj$l;->choose_limit:I

    const-string/jumbo v7, "DIRECT_CALL_ACTIVITY_CREATE_CALL"

    .line 2442
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2443
    const-string/jumbo v10, "choose_mode"

    invoke-virtual {v9, v10, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2444
    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v9, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    invoke-virtual {v1}, Lewh;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2447
    const-string/jumbo v1, "intent_key_support_fix_line"

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2449
    :cond_2
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2450
    if-ne v3, v0, :cond_5

    .line 2451
    const-string/jumbo v0, "choose_people_action"

    const/16 v1, 0xa

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2452
    const-string/jumbo v0, "filter_myself"

    invoke-virtual {v9, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2458
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 116
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->d:Z

    .line 244
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v1

    .line 2411
    goto :goto_0

    .line 2454
    :cond_5
    const-string/jumbo v0, "count_limit"

    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2455
    const-string/jumbo v0, "count_limit_tips"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 118
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    goto :goto_3

    .line 121
    :cond_7
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 122
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v3, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 121
    invoke-virtual {v1, v2, v0}, Lewh;->a(ZLcma;)V

    goto :goto_3

    .line 150
    :cond_8
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->i:I

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP_TO_PSTN:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 151
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_a

    .line 152
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_3

    .line 190
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    goto :goto_3

    .line 193
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;->PROTOCOL_CHOOSE:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$ProtocolType;

    if-ne v0, v1, :cond_3

    .line 194
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v8, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    .line 201
    .local v4, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 202
    new-array v0, v6, [Ljava/lang/String;

    .line 203
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v6, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v1, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, " "

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 202
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    :cond_c
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->h:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->g:J

    .line 210
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v9, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JUMP_PROTOCOL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 215
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)V

    const-class v7, Lcma;

    invoke-interface {v1, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcma;

    move-object v1, p0

    move-object v6, v5

    move-object v7, v5

    .line 208
    invoke-virtual/range {v0 .. v10}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Lcma;)V

    goto/16 :goto_3

    .end local v4    # "title":Ljava/lang/String;
    .end local v8    # "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    move v0, v3

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 249
    return-void
.end method
