.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DeviceBindActivity.java"

# interfaces
.implements Lbsw$e;
.implements Lbsy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
        "Lbsw$e",
        "<",
        "Lbsw$c;",
        ">;",
        "Lbsy;"
    }
.end annotation


# instance fields
.field final a:Lbsw$b;

.field b:Lbsw$c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Dialog;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 113
    new-instance v0, Lbsx;

    invoke-direct {v0}, Lbsx;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)Lbsw$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 320
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string/jumbo v6, "params_mesh_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 324
    .local v5, "meshType":Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;
    const-string/jumbo v6, "params_corp_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "corpId":Ljava/lang/String;
    const-string/jumbo v6, "params_can_start_config"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 326
    .local v0, "canStartConfig":Z
    const-string/jumbo v6, "wds"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 327
    .local v3, "isWds":Z
    const-string/jumbo v6, "params_mesh_code"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 328
    .local v4, "meshCode":I
    if-eqz v3, :cond_2

    .line 329
    sget-object v5, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 331
    :cond_2
    if-nez v5, :cond_3

    .line 332
    sget-object v5, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 334
    :cond_3
    const-string/jumbo v6, "params_dev_servid"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 335
    .local v2, "devServid":I
    const-string/jumbo v6, "DoorGuardBind"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "canStartConfig = "

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", isWds = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ", meshType = "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, ", devServid = "

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v6, v5}, Lbsw$b;->a(Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;)V

    .line 337
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v6, v1}, Lbsw$b;->g(Ljava/lang/String;)V

    .line 338
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v6, v0}, Lbsw$b;->h(Z)V

    .line 339
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v6, v4}, Lbsw$b;->e(I)V

    .line 340
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v6}, Lbsw$b;->e()I

    move-result v6

    if-gtz v6, :cond_0

    .line 341
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v6, v2}, Lbsw$b;->b(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 665
    const-string/jumbo v2, "https://attend.dingtalk.com/atm/manage.html#/upgrade"

    .line 667
    .local v2, "url":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    const/16 v3, 0x3f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 670
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 671
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "https://attend.dingtalk.com/atm/manage.html#/upgrade"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .end local v1    # "index":I
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 676
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 679
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->finish()V

    .line 680
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "canEnterOnceMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 684
    if-nez p1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 693
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->f:Z

    if-eqz v1, :cond_3

    .line 694
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    goto :goto_0

    .line 697
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    .line 698
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p0, "currentVersion"    # Ljava/lang/String;
    .param p1, "targetVersion"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 353
    if-eqz p0, :cond_8

    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v0, v8

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    if-nez p1, :cond_2

    .line 358
    const/4 v0, -0x1

    goto :goto_0

    .line 362
    :cond_2
    const-string/jumbo v10, "\\."

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, "targetVersionArray":[Ljava/lang/String;
    const-string/jumbo v10, "\\."

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "currentVersionArray":[Ljava/lang/String;
    array-length v10, v7

    array-length v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 366
    .local v5, "minLength":I
    const/4 v0, 0x0

    .line 367
    .local v0, "compareFinalResult":I
    const-string/jumbo v10, "[0-9]*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 368
    .local v6, "pattern":Ljava/util/regex/Pattern;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 370
    aget-object v10, v7, v4

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4

    aget-object v10, v2, v4

    .line 371
    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 373
    :try_start_0
    aget-object v10, v7, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v2, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    sub-int v1, v10, v11

    .line 382
    .local v1, "compareResult":I
    :goto_2
    if-lez v1, :cond_5

    .line 383
    const/4 v0, 0x1

    .line 394
    .end local v1    # "compareResult":I
    :cond_3
    :goto_3
    if-nez v0, :cond_0

    .line 395
    array-length v8, v7

    array-length v9, v2

    if-le v8, v9, :cond_7

    .line 396
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const-string/jumbo v10, "door"

    const-string/jumbo v11, "ui"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const-string/jumbo v13, "parse int exception:"

    aput-object v13, v12, v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    aget-object v10, v7, v4

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "compareResult":I
    goto :goto_2

    .line 385
    :cond_5
    if-eqz v1, :cond_6

    .line 388
    const/4 v0, -0x1

    .line 389
    goto :goto_3

    .line 368
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 397
    .end local v1    # "compareResult":I
    :cond_7
    array-length v8, v7

    array-length v9, v2

    if-ge v8, v9, :cond_0

    .line 398
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 403
    .end local v0    # "compareFinalResult":I
    .end local v2    # "currentVersionArray":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "minLength":I
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "targetVersionArray":[Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    move v0, v8

    .line 404
    goto/16 :goto_0

    :cond_9
    move v0, v9

    .line 406
    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)Lbsw$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 504
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const-string/jumbo v9, "action"

    invoke-static {v8, v9}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "createGroupSuccess"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 510
    :try_start_0
    const-string/jumbo v9, "corpId"

    invoke-static {v8, v9}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "corpId":Ljava/lang/String;
    const-string/jumbo v9, "orgId"

    invoke-static {v8, v9}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "orgId":Ljava/lang/String;
    const-string/jumbo v9, "orgName"

    invoke-static {v8, v9}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "orgName":Ljava/lang/String;
    const-string/jumbo v9, "from"

    invoke-static {v8, v9}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, "from":Ljava/lang/String;
    const-string/jumbo v9, "native"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "__ORGNAME__"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 516
    const-string/jumbo v7, ""

    .line 519
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    .line 523
    :try_start_1
    const-string/jumbo v9, "utf-8"

    invoke-static {v7, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 529
    :goto_1
    :try_start_2
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;-><init>()V

    .line 530
    .local v2, "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    .line 531
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    .line 532
    iput-object v7, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    .line 534
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v9, v2}, Lbsw$b;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 6984
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    .line 536
    instance-of v9, v9, Lbss;

    if-eqz v9, :cond_3

    .line 537
    iget-object v9, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v9, v2}, Lbsw$b;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->r()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 547
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v2    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .end local v5    # "from":Ljava/lang/String;
    .end local v6    # "orgId":Ljava/lang/String;
    .end local v7    # "orgName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 548
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    const-string/jumbo v9, "door"

    const-string/jumbo v10, "ui"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "parseNewGroup exception:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "corpId":Ljava/lang/String;
    .restart local v5    # "from":Ljava/lang/String;
    .restart local v6    # "orgId":Ljava/lang/String;
    .restart local v7    # "orgName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    const-string/jumbo v9, "door"

    const-string/jumbo v10, "ui"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "URLDecoder exception:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v9

    const-string/jumbo v10, "group"

    invoke-virtual {v9, v10}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .line 542
    .local v4, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
    if-eqz v4, :cond_0

    .line 543
    iget-object v9, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->b(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->dismissLoadingDialog()V

    .line 1000
    return-void
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 589
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    :goto_0
    return-void

    .line 592
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const-string/jumbo v2, "group"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    sget v1, Lbrx$g;->dt_device_config_exit_dialog_message:I

    .line 601
    .local v1, "resId":I
    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 602
    sget v2, Lbrx$g;->ok:I

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 615
    sget v2, Lbrx$g;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i:Landroid/app/Dialog;

    .line 617
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 596
    .end local v1    # "resId":I
    :cond_1
    const-string/jumbo v2, "wifi"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "tcp"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 597
    :cond_2
    sget v1, Lbrx$g;->dt_smartdevice_cancelconfignetwork_confirm:I

    .restart local v1    # "resId":I
    goto :goto_1

    .line 599
    .end local v1    # "resId":I
    :cond_3
    sget v1, Lbrx$g;->dt_smartdevice_cancelbind_confirm:I

    .restart local v1    # "resId":I
    goto :goto_1
.end method

.method public final a(I)V
    .locals 5
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 922
    const-string/jumbo v2, "lan_mesh_forbid"

    .line 923
    .local v2, "step":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 932
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;

    move-result-object v1

    .line 928
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 929
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "params_mesh_forbid_code"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshForbidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 931
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lbrx$d;->container:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "cancelable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 954
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 957
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 962
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->showLoadingDialog(I)V

    .line 960
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1007
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1008
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1009
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1011
    sget v1, Lbrx$g;->dt_common_exit:I

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h:Landroid/app/Dialog;

    .line 1018
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1019
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->showLoadingDialog()V

    .line 995
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 654
    const-string/jumbo v0, "bluetooth"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 711
    const-string/jumbo v1, "bluetooth"

    .line 8703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 712
    if-nez v2, :cond_0

    .line 719
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    move-result-object v0

    .line 717
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 718
    sget v2, Lbrx$g;->dt_smartdevice_config_device:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(I)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 646
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 647
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    invoke-interface {v0}, Lbsw$c;->f()V

    .line 650
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 724
    const-string/jumbo v1, "tcp"

    .line 9703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 725
    if-nez v2, :cond_0

    .line 732
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    move-result-object v0

    .line 730
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 731
    sget v2, Lbrx$g;->dt_smartdevice_config_device:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(I)V

    goto :goto_0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    const-string/jumbo v0, "Smart_Device_Bind"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    const-string/jumbo v0, "a2q0r.11908433"

    return-object v0
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 736
    const-string/jumbo v1, "wire"

    .line 10703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 737
    if-nez v2, :cond_0

    .line 744
    :goto_0
    return-void

    .line 741
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->E()Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    move-result-object v0

    .line 742
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 743
    sget v2, Lbrx$g;->dt_smartdevice_config_device:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 751
    const-string/jumbo v1, "wifi"

    .line 11703
    .local v1, "step":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 752
    if-nez v2, :cond_0

    .line 759
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->a(Ljava/lang/String;Z)Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    move-result-object v0

    .line 757
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 758
    sget v2, Lbrx$g;->dt_smartdevice_config_device_network:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 11949
    sget v4, Lbrx$g;->dt_door_guard_default_device_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 758
    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 766
    const-string/jumbo v1, "group"

    .line 12703
    .local v1, "step":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 767
    if-nez v2, :cond_0

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->a(II)Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    move-result-object v0

    .line 772
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 773
    sget v2, Lbrx$g;->dt_smartdevice_config_group_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 12949
    sget v4, Lbrx$g;->dt_door_guard_default_device_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 773
    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 781
    const-string/jumbo v1, "group_found"

    .line 13703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 782
    if-nez v2, :cond_0

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->E()Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    move-result-object v0

    .line 787
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 788
    sget v2, Lbrx$g;->dt_device_group_found:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 810
    const-string/jumbo v0, "success"

    .line 14703
    .local v0, "step":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 811
    if-nez v1, :cond_0

    .line 816
    :goto_0
    return-void

    .line 815
    :cond_0
    sget v1, Lbrx$g;->dt_device_bind_success:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 820
    const-string/jumbo v1, "error"

    .line 15703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 821
    if-nez v2, :cond_0

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/ErrorFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/ErrorFragment;-><init>()V

    .line 826
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/ErrorFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method public final n()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 831
    const-string/jumbo v1, "wifi_unavailable"

    .line 16703
    .local v1, "step":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 832
    if-nez v2, :cond_0

    .line 840
    :goto_0
    return-void

    .line 836
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;-><init>()V

    .line 837
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 839
    sget v2, Lbrx$g;->dt_smartdevice_config_device_network:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 16949
    sget v4, Lbrx$g;->dt_door_guard_default_device_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 839
    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 844
    const-string/jumbo v1, "static_ip"

    .line 17703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 845
    if-nez v2, :cond_0

    .line 853
    :goto_0
    return-void

    .line 849
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;-><init>()V

    .line 850
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/StaticIpFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 852
    sget v2, Lbrx$g;->dt_smart_device_config_static_ip_address:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 433
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 434
    const-string/jumbo v1, "DoorGuardBind"

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 436
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    if-eqz v1, :cond_0

    .line 437
    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->B()V

    .line 439
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 579
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    if-eqz v1, :cond_0

    .line 580
    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->A()V

    .line 585
    :goto_0
    return-void

    .line 582
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v15, "DoorGuardBind"

    const-string/jumbo v16, "onCreate"

    invoke-static/range {v15 .. v16}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 130
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v15, "params_target_ui"

    invoke-virtual {v9, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    .line 131
    const-string/jumbo v15, "params_conn_type"

    invoke-virtual {v9, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "connType":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v15, "params_device_bind"

    invoke-virtual {v9, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v10, "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x80

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 144
    sget v15, Lbrx$e;->activity_device_bind:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setContentView(I)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->hideToolbarDivide()V

    .line 147
    if-eqz v10, :cond_8

    .line 149
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->minVersion:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 151
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v6, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 152
    .local v6, "currentVersion":Ljava/lang/String;
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->minVersion:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 153
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v6    # "currentVersion":Ljava/lang/String;
    .end local v10    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->finish()V

    goto :goto_0

    .line 156
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :catch_1
    move-exception v8

    .line 157
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    iget v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceId:I

    if-eqz v15, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceId:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-interface/range {v15 .. v17}, Lbsw$b;->a(J)V

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    new-instance v16, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;

    iget v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceId:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;-><init>(I)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    iget v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->serviceId:I

    if-eqz v15, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->serviceId:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lbsw$b;->b(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    new-instance v16, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;

    iget v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->serviceId:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;-><init>(I)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_3
    iget v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceTypeCode:I

    if-eqz v15, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceTypeCode:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lbsw$b;->a(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    new-instance v16, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceTypeCodeScanFilter;

    iget v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceTypeCode:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceTypeCodeScanFilter;-><init>(I)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->macAddress:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    new-instance v16, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->macAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_5
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->status:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 179
    :try_start_2
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->status:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 180
    .local v13, "status":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j:Ljava/util/ArrayList;

    new-instance v16, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;-><init>(I)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    .end local v13    # "status":I
    :cond_6
    :goto_1
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->d:Ljava/lang/String;

    .line 189
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 191
    :try_start_3
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 192
    .local v14, "uri":Landroid/net/Uri;
    const-string/jumbo v15, "ip"

    invoke-static {v14, v15}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->k:Ljava/lang/String;

    .line 193
    const-string/jumbo v15, "port"

    invoke-static {v14, v15}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, "port":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 195
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->l:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    .end local v11    # "port":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lbsw$b;->o(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceVersion:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lbsw$b;->p(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget-boolean v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->wifiSupport:Z

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lbsw$b;->m(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->ssids:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lbsw$b;->b(Ljava/util/List;)V

    .line 210
    :cond_8
    const-string/jumbo v15, "params_device_bind_listener_id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->e:I

    .line 213
    const-string/jumbo v15, "ble"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->k:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 215
    new-instance v12, Lbtb;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->l:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v12, v15, v0, v1, v2}, Lbtb;-><init>(Ljava/lang/String;ILbsw$e;Lbsw$b;)V

    .line 2936
    .local v12, "presenter":Lbsw$c;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b(Landroid/content/Intent;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    if-eqz v15, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lbsw$c;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 181
    .end local v12    # "presenter":Lbsw$c;
    :catch_2
    move-exception v8

    .line 182
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string/jumbo v15, "door"

    const-string/jumbo v16, "ui"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "parse status int exception:"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 198
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const-string/jumbo v15, "door"

    const-string/jumbo v16, "ui"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "parse port int exception:"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 218
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz v10, :cond_b

    iget v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceTypeCode:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    if-eqz v15, :cond_b

    .line 219
    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const-string/jumbo v16, "sn"

    invoke-static/range {v15 .. v16}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "deviceSN":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 1255
    new-instance v15, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v9, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1310
    new-instance v16, Lbsc;

    invoke-direct/range {v16 .. v16}, Lbsc;-><init>()V

    .line 1311
    move-object/from16 v0, v16

    iput-object v7, v0, Lbsc;->e:Ljava/lang/String;

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lbsw$b;->e()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lbsc;->c:Ljava/lang/Integer;

    .line 1313
    const/16 v17, 0x7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lbsc;->b:Ljava/lang/Integer;

    .line 1314
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v17

    .line 1315
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v18

    const-class v19, Lcma;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-interface {v0, v15, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcma;

    .line 2165
    new-instance v18, Lbso$1;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lbso$1;-><init>(Lbso;Lcma;)V

    .line 2174
    const-class v15, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v15}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->queryDeviceBindStatus(Lbsc;Liyv;)V

    goto/16 :goto_0

    .line 226
    .end local v7    # "deviceSN":Ljava/lang/String;
    :cond_b
    new-instance v12, Lbsv;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v12, v0, v15, v1}, Lbsv;-><init>(Lbsw$e;Lbsw$b;Ljava/lang/String;)V

    .restart local v12    # "presenter":Lbsw$c;
    goto/16 :goto_3

    .line 229
    .end local v12    # "presenter":Lbsw$c;
    :cond_c
    const-string/jumbo v15, "lan"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 230
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Landroid/content/Intent;)V

    .line 231
    new-instance v12, Lbsz;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v15}, Lbsz;-><init>(Lbsw$e;Lbsw$b;)V

    .line 233
    .restart local v12    # "presenter":Lbsw$c;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v15}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v15

    sget-object v16, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 234
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v4, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "source"

    if-eqz v10, :cond_d

    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->minVersion:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string/jumbo v15, "1"

    :goto_4
    move-object/from16 v0, v16

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v15

    const-string/jumbo v16, "DoorGuardBind"

    const-string/jumbo v17, "alpha_welcome"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 235
    :cond_d
    const-string/jumbo v15, "2"

    goto :goto_4

    .line 238
    .end local v4    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "presenter":Lbsw$c;
    :cond_e
    const-string/jumbo v15, "qrcode"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lbsw$b;->c()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 239
    new-instance v12, Lbst;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v15}, Lbst;-><init>(Lbsw$e;Lbsw$b;)V

    .restart local v12    # "presenter":Lbsw$c;
    goto/16 :goto_3

    .line 241
    .end local v12    # "presenter":Lbsw$c;
    :cond_f
    if-eqz v10, :cond_10

    iget-object v15, v10, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/4 v15, 0x0

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1058
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1060
    const/4 v1, 0x1

    .line 1062
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 631
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 632
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    invoke-interface {v0}, Lbsw$c;->a()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onDeviceBindSuccess(I)V

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->e:I

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onDeviceBindFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 622
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->onBackPressed()V

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 486
    const-string/jumbo v0, "lan"

    const-string/jumbo v1, "params_conn_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    const-string/jumbo v0, "DoorGuardBind"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Landroid/content/Intent;)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->q()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->x()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4984
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    .line 493
    instance-of v0, v0, Lbsz;

    if-eqz v0, :cond_1

    .line 5984
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    .line 494
    check-cast v0, Lbsz;

    invoke-virtual {v0}, Lbsz;->x()V

    .line 498
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b(Landroid/content/Intent;)V

    .line 499
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->onBackPressed()V

    .line 573
    :cond_0
    :goto_0
    return v1

    .line 559
    :cond_1
    const/4 v2, 0x2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 560
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    .line 562
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->k()Z

    goto :goto_0

    .line 568
    .end local v0    # "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 569
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3

    .line 570
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 573
    :cond_3
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 424
    const-string/jumbo v0, "step"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    invoke-interface {v0, p1}, Lbsw$c;->c(Landroid/os/Bundle;)V

    .line 429
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 444
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->f:Z

    .line 3449
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3450
    const-string/jumbo v0, "group"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3451
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->j()V

    .line 3480
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    .line 446
    return-void

    .line 3452
    :cond_1
    const-string/jumbo v0, "group_found"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3453
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->k()V

    goto :goto_0

    .line 3454
    :cond_2
    const-string/jumbo v0, "bluetooth"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3455
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->f()V

    goto :goto_0

    .line 3456
    :cond_3
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3796
    const-string/jumbo v0, "name"

    .line 4703
    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 3797
    if-eqz v1, :cond_0

    .line 3801
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v1}, Lbsw$b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/NameFragment;

    move-result-object v1

    .line 3802
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0

    .line 3458
    :cond_4
    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3459
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->l()V

    goto :goto_0

    .line 3460
    :cond_5
    const-string/jumbo v0, "wifi"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3461
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i()V

    goto :goto_0

    .line 3462
    :cond_6
    const-string/jumbo v0, "error"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3463
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->m()V

    goto/16 :goto_0

    .line 3464
    :cond_7
    const-string/jumbo v0, "lan_waiting"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3465
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->q()V

    goto/16 :goto_0

    .line 3466
    :cond_8
    const-string/jumbo v0, "lan_net_setting"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3467
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->r()V

    goto/16 :goto_0

    .line 3468
    :cond_9
    const-string/jumbo v0, "lan_wifi_name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3469
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->s()V

    goto/16 :goto_0

    .line 3470
    :cond_a
    const-string/jumbo v0, "lan_mesh"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3471
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->t()V

    goto/16 :goto_0

    .line 3472
    :cond_b
    const-string/jumbo v0, "wire"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3473
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h()V

    goto/16 :goto_0

    .line 3474
    :cond_c
    const-string/jumbo v0, "wifi_unavailable"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3475
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->n()V

    goto/16 :goto_0

    .line 3476
    :cond_d
    const-string/jumbo v0, "static_ip"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3477
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->o()V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->f:Z

    .line 413
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 414
    const-string/jumbo v0, "step"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    invoke-interface {v0, p1}, Lbsw$c;->b(Landroid/os/Bundle;)V

    .line 419
    :cond_0
    return-void
.end method

.method public final p()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 857
    return-object p0
.end method

.method public final q()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 862
    const-string/jumbo v2, "lan_waiting"

    .line 863
    .local v2, "step":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 874
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;

    move-result-object v1

    .line 868
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 869
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "params_can_start_config"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->G()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 870
    const-string/jumbo v3, "params_connect_wifi_guide"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->H()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 871
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWaitingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 872
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lbrx$d;->container:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 873
    sget v3, Lbrx$g;->dt_smartdevice_config_device:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(I)V

    goto :goto_0
.end method

.method public final r()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 878
    const-string/jumbo v1, "lan_net_setting"

    .line 18703
    .local v1, "step":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 879
    if-nez v3, :cond_0

    .line 888
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    move-result-object v0

    .line 884
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 885
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 886
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 887
    sget v3, Lbrx$g;->dt_alpha_set_smart_work_net:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final s()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 892
    const-string/jumbo v1, "lan_wifi_name"

    .line 19703
    .local v1, "step":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 893
    if-nez v2, :cond_0

    .line 900
    :goto_0
    return-void

    .line 897
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;

    move-result-object v0

    .line 898
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanWifiNameFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lbrx$d;->container:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 899
    sget v2, Lbrx$g;->dt_alpha_setting_wifi_name:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lbsw$c;

    .line 19936
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    .line 76
    return-void
.end method

.method public final t()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 904
    const-string/jumbo v2, "lan_mesh"

    .line 905
    .local v2, "step":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 918
    :goto_0
    return-void

    .line 909
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;

    move-result-object v1

    .line 910
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "params_mesh_type"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 912
    const-string/jumbo v3, "params_mesh_code"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->x()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    const-string/jumbo v3, "params_corp_id"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string/jumbo v3, "params_device_id"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->f()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 915
    const-string/jumbo v3, "params_mesh_count"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    invoke-interface {v4}, Lbsw$b;->w()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 916
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanMeshFragment;->setArguments(Landroid/os/Bundle;)V

    .line 917
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lbrx$d;->container:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    sget v0, Lbrx$g;->dt_door_guard_default_device_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 966
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->i:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Lbsw$e;
    .locals 0

    .prologue
    .line 979
    return-object p0
.end method

.method public final x()Lbsw$c;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    return-object v0
.end method

.method public final y()Lbsw$b;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    return-object v0
.end method
