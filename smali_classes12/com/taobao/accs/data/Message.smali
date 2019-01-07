.class public Lcom/taobao/accs/data/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/data/Message$ReqType;,
        Lcom/taobao/accs/data/Message$a;
    }
.end annotation


# static fields
.field public static CONTROL_MAX_RETRY_TIMES:I = 0x0

.field public static final EXT_HEADER_VALUE_MAX_LEN:I = 0x3ff

.field public static final FLAG_ACK_TYPE:I = 0x20

.field public static final FLAG_BIZ_RET:I = 0x40

.field public static final FLAG_DATA_TYPE:I = 0x8000

.field public static final FLAG_ERR:I = 0x1000

.field public static final FLAG_REQ_BIT1:I = 0x4000

.field public static final FLAG_REQ_BIT2:I = 0x2000

.field public static final FLAG_RET:I = 0x800

.field public static final KEY_BINDAPP:Ljava/lang/String; = "ctrl_bindapp"

.field public static final KEY_BINDSERVICE:Ljava/lang/String; = "ctrl_bindservice"

.field public static final KEY_BINDUSER:Ljava/lang/String; = "ctrl_binduser"

.field public static final KEY_UNBINDAPP:Ljava/lang/String; = "ctrl_unbindapp"

.field public static final KEY_UNBINDSERVICE:Ljava/lang/String; = "ctrl_unbindservice"

.field public static final KEY_UNBINDUSER:Ljava/lang/String; = "ctrl_unbinduser"

.field public static final MAX_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Message"

.field static baseMessageId:J = 0x0L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field appKey:Ljava/lang/String;

.field public appSign:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field public bizId:Ljava/lang/String;

.field brand:Ljava/lang/String;

.field public command:Ljava/lang/Integer;

.field compress:B

.field public cunstomDataId:Ljava/lang/String;

.field data:[B

.field public dataId:Ljava/lang/String;

.field dataLength:S

.field public delyTime:J

.field extHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field extHeaderLength:S

.field exts:Ljava/lang/String;

.field public flags:S

.field public force:Z

.field public host:Ljava/net/URL;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field public isAck:Z

.field public isCancel:Z

.field macAddress:Ljava/lang/String;

.field model:Ljava/lang/String;

.field transient netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

.field noUse:B

.field node:I

.field osType:Ljava/lang/Integer;

.field osVersion:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public retryTimes:I

.field sdkVersion:Ljava/lang/Integer;

.field sendTime:J

.field public serviceId:Ljava/lang/String;

.field source:Ljava/lang/String;

.field sourceLength:B

.field public startSendTime:J

.field target:Ljava/lang/String;

.field targetLength:B

.field public timeout:I

.field totalLength:S

.field ttid:Ljava/lang/String;

.field type:I

.field updateDevice:Ljava/lang/Integer;

.field public userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x5

    sput v0, Lcom/taobao/accs/data/Message;->CONTROL_MAX_RETRY_TIMES:I

    .line 142
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/taobao/accs/data/Message;->baseMessageId:J

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->isAck:Z

    .line 146
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->force:Z

    .line 148
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->isCancel:Z

    .line 152
    iput-byte v3, p0, Lcom/taobao/accs/data/Message;->compress:B

    .line 154
    iput-byte v3, p0, Lcom/taobao/accs/data/Message;->noUse:B

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/accs/data/Message;->type:I

    .line 179
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->updateDevice:Ljava/lang/Integer;

    .line 185
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->appKey:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->appSign:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->osType:Ljava/lang/Integer;

    .line 191
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->osVersion:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->exts:Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->appVersion:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 199
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->ttid:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->macAddress:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->model:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->brand:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->imei:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 223
    iput v3, p0, Lcom/taobao/accs/data/Message;->retryTimes:I

    .line 225
    const v0, 0x9c40

    iput v0, p0, Lcom/taobao/accs/data/Message;->timeout:I

    .line 229
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    .line 237
    const-class v1, Lcom/taobao/accs/data/Message;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-wide v2, Lcom/taobao/accs/data/Message;->baseMessageId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/taobao/accs/data/Message;->baseMessageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->startSendTime:J

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static BuildPing(ZI)Lcom/taobao/accs/data/Message;
    .locals 4
    .param p0, "force"    # Z
    .param p1, "delyTime"    # I

    .prologue
    .line 565
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 566
    .local v0, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x2

    iput v1, v0, Lcom/taobao/accs/data/Message;->type:I

    .line 567
    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 568
    iput-boolean p0, v0, Lcom/taobao/accs/data/Message;->force:Z

    .line 569
    int-to-long v2, p1

    iput-wide v2, v0, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 570
    return-object v0
.end method

.method public static buildBindApp(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 584
    const/4 v9, 0x0

    .line 586
    .local v9, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "ttid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "ttid":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "cookie":Ljava/lang/String;
    const-string/jumbo v0, "appVersion"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "appversion":Ljava/lang/String;
    move-object v0, p0

    .line 596
    invoke-static/range {v0 .. v7}, Lcom/taobao/accs/data/Message;->buildBindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v9

    .line 607
    invoke-static {p0, v9}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v1    # "appkey":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ttid":Ljava/lang/String;
    .end local v4    # "appversion":Ljava/lang/String;
    .end local v5    # "sid":Ljava/lang/String;
    .end local v6    # "userId":Ljava/lang/String;
    .end local v7    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 608
    :catch_0
    move-exception v8

    .line 609
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Message"

    const-string/jumbo v10, "buildBindApp"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v10, v8, v11}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildBindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "user_id"    # Ljava/lang/String;
    .param p7, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 616
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 645
    :goto_0
    return-object v1

    .line 619
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 621
    .local v1, "message":Lcom/taobao/accs/data/Message;
    const/4 v4, 0x1

    :try_start_0
    iput v4, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 622
    const/4 v4, 0x1

    sget-object v5, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 623
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->osType:Ljava/lang/Integer;

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->osVersion:Ljava/lang/String;

    .line 625
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 626
    const-string/jumbo v4, "3|dm|"

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 627
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 628
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->appKey:Ljava/lang/String;

    .line 629
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, p1, v4, v5, v6}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->appSign:Ljava/lang/String;

    .line 630
    const/16 v4, 0xd5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 631
    iput-object p4, v1, Lcom/taobao/accs/data/Message;->appVersion:Ljava/lang/String;

    .line 632
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 633
    iput-object p3, v1, Lcom/taobao/accs/data/Message;->ttid:Ljava/lang/String;

    .line 634
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->model:Ljava/lang/String;

    .line 635
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->brand:Ljava/lang/String;

    .line 636
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 637
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v1, Lcom/taobao/accs/data/Message;->imei:Ljava/lang/String;

    .line 638
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iput-object v3, v1, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;

    .line 639
    const-string/jumbo v3, "ctrl_bindapp"

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    move-object v4, v3

    .line 637
    goto :goto_1
.end method

.method public static buildBindService(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 699
    const/4 v8, 0x0

    .line 701
    .local v8, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "serviceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 705
    .local v3, "serviceId":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "cookie":Ljava/lang/String;
    move-object v0, p0

    .line 711
    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->buildBindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v8

    .line 715
    invoke-static {p0, v8}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "serviceId":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 716
    :catch_0
    move-exception v7

    .line 717
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Message"

    const-string/jumbo v9, "buildBindService"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v7, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 718
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildBindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "user_id"    # Ljava/lang/String;
    .param p6, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 724
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    return-object v0

    .line 727
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 728
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 729
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 730
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 731
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 732
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 733
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 734
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 736
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 737
    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 738
    const-string/jumbo v1, "ctrl_bindservice"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildBindUser(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 791
    const/4 v7, 0x0

    .line 793
    .local v7, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cookie":Ljava/lang/String;
    move-object v0, p0

    .line 801
    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildBindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 805
    invoke-static {p0, v7}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 806
    :catch_0
    move-exception v6

    .line 807
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Message"

    const-string/jumbo v8, "buildBindUser"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 808
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildBindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "sid"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 814
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    :cond_0
    const/4 v0, 0x0

    .line 830
    :goto_0
    return-object v0

    .line 817
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 818
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 819
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 820
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 822
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 823
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 824
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 825
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 826
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 827
    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 828
    const-string/jumbo v1, "ctrl_binduser"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildElection(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .prologue
    .line 875
    .local p1, "electionPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 876
    const/4 v4, 0x0

    .line 899
    :goto_0
    return-object v4

    .line 878
    :cond_0
    new-instance v4, Lcom/taobao/accs/data/Message;

    invoke-direct {v4}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 880
    .local v4, "message":Lcom/taobao/accs/data/Message;
    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v8, 0x1

    invoke-direct {v4, v6, v7, v8}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 881
    const/4 v6, 0x1

    iput v6, v4, Lcom/taobao/accs/data/Message;->node:I

    .line 882
    iput-object p0, v4, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 883
    const-string/jumbo v6, "4|sal|el"

    iput-object v6, v4, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 884
    const/16 v6, 0x69

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 886
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 887
    .local v2, "jarray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 888
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 889
    .local v3, "jobject":Lorg/json/JSONObject;
    const-string/jumbo v6, "pkg"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string/jumbo v6, "sdkv"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 896
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jarray":Lorg/json/JSONArray;
    .end local v3    # "jobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 897
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Message"

    const-string/jumbo v7, "buildElection"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 893
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jarray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v6, Ljjj$a;

    invoke-direct {v6}, Ljjj$a;-><init>()V

    const-string/jumbo v7, "sdkv"

    const/16 v8, 0xd5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljjj$a;

    move-result-object v6

    const-string/jumbo v7, "packs"

    invoke-virtual {v6, v7, v2}, Ljjj$a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Ljjj$a;

    move-result-object v6

    .line 8083
    iget-object v6, v6, Ljjj$a;->a:Lorg/json/JSONObject;

    .line 893
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/accs/data/Message;->data:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static buildHandshake(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 575
    .local v0, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x3

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 576
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 577
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 578
    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 579
    return-object v0
.end method

.method public static buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # I

    .prologue
    .line 1115
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1116
    .local v0, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x1

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 1117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 1118
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 1119
    return-object v0
.end method

.method public static buildPushAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "businessAck"    # Z
    .param p4, "flags"    # S
    .param p5, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .prologue
    .local p6, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1083
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1084
    .local v1, "message":Lcom/taobao/accs/data/Message;
    iput v3, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 1086
    invoke-direct {v1, p4, p3}, Lcom/taobao/accs/data/Message;->setPushAckFlag(SZ)V

    .line 1087
    iput-object p0, v1, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    .line 1088
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 1089
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    .line 1090
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->isAck:Z

    .line 1091
    iput-object p6, v1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    .line 1093
    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1094
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    :goto_0
    iget-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v3, :cond_0

    .line 1104
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1111
    :cond_0
    :goto_1
    return-object v1

    .line 1097
    :cond_1
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1099
    :catch_0
    move-exception v2

    .line 1100
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v3, "Message"

    const-string/jumbo v4, "buildPushAck"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1102
    iget-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v3, :cond_0

    .line 1104
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1106
    :catch_1
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 1106
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1107
    .restart local v0    # "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 1102
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v4, :cond_2

    .line 1104
    :try_start_5
    new-instance v4, Ljava/net/URL;

    invoke-static {}, Ljim;->a()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1108
    :cond_2
    :goto_2
    throw v3

    .line 1106
    :catch_3
    move-exception v0

    .line 1107
    .restart local v0    # "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2
.end method

.method public static buildRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "requstInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 1010
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/taobao/accs/data/Message;->buildRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    return-object v0
.end method

.method public static buildRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "requstInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p4, "needSetUnit"    # Z

    .prologue
    const/4 v5, 0x1

    .line 967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const/4 v1, 0x0

    .line 1006
    :goto_0
    return-object v1

    .line 970
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 971
    .local v1, "message":Lcom/taobao/accs/data/Message;
    iput v5, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 972
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v1, v5, v0, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 973
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 974
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 975
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 976
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 978
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->data:[B

    .line 979
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v7, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 980
    .local v7, "targetServiceName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "2|"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 982
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 983
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    .line 984
    iget v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez v0, :cond_1

    .line 985
    iget v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput v0, v1, Lcom/taobao/accs/data/Message;->timeout:I

    .line 988
    :cond_1
    if-eqz p4, :cond_4

    .line 989
    invoke-static {p0, v1, p3}, Lcom/taobao/accs/data/Message;->setUnit(Landroid/content/Context;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    .line 994
    :goto_3
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    invoke-virtual {v0}, Ljim;->c()Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, "user_id":Ljava/lang/String;
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    invoke-virtual {v0}, Ljim;->b()Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "sid":Ljava/lang/String;
    sget-object v4, Ljim;->i:Ljava/lang/String;

    .line 998
    .local v4, "cookie":Ljava/lang/String;
    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v6, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->fillExtHeader(Landroid/content/Context;Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    new-instance v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 1001
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 1002
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 1003
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    .end local v2    # "sid":Ljava/lang/String;
    .end local v3    # "user_id":Ljava/lang/String;
    .end local v4    # "cookie":Ljava/lang/String;
    .end local v7    # "targetServiceName":Ljava/lang/String;
    :cond_2
    iget-object v7, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    goto :goto_1

    .line 980
    .restart local v7    # "targetServiceName":Ljava/lang/String;
    :cond_3
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    goto :goto_2

    .line 991
    :cond_4
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    goto :goto_3
.end method

.method public static buildSendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 919
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/taobao/accs/data/Message;->buildSendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    return-object v0
.end method

.method public static buildSendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p4, "needSetUnit"    # Z

    .prologue
    const/4 v5, 0x1

    .line 924
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    const/4 v1, 0x0

    .line 962
    :goto_0
    return-object v1

    .line 927
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 928
    .local v1, "message":Lcom/taobao/accs/data/Message;
    iput v5, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 929
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v1, v5, v0, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 930
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 931
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 933
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 934
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 935
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->data:[B

    .line 936
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v7, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 937
    .local v7, "targetServiceName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "2|"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 939
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 940
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    .line 941
    iget v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez v0, :cond_1

    .line 942
    iget v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput v0, v1, Lcom/taobao/accs/data/Message;->timeout:I

    .line 945
    :cond_1
    if-eqz p4, :cond_4

    .line 946
    invoke-static {p0, v1, p3}, Lcom/taobao/accs/data/Message;->setUnit(Landroid/content/Context;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    .line 951
    :goto_3
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    invoke-virtual {v0}, Ljim;->c()Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, "user_id":Ljava/lang/String;
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    invoke-virtual {v0}, Ljim;->b()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "sid":Ljava/lang/String;
    sget-object v4, Ljim;->i:Ljava/lang/String;

    .line 954
    .local v4, "cookie":Ljava/lang/String;
    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v6, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->fillExtHeader(Landroid/content/Context;Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 957
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 958
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 959
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 936
    .end local v2    # "sid":Ljava/lang/String;
    .end local v3    # "user_id":Ljava/lang/String;
    .end local v4    # "cookie":Ljava/lang/String;
    .end local v7    # "targetServiceName":Ljava/lang/String;
    :cond_2
    iget-object v7, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    goto :goto_1

    .line 937
    .restart local v7    # "targetServiceName":Ljava/lang/String;
    :cond_3
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    goto :goto_2

    .line 948
    :cond_4
    iget-object v0, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    goto :goto_3
.end method

.method public static buildStatist(Ljava/lang/String;[B)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x1

    .line 904
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 905
    :cond_0
    const/4 v0, 0x0

    .line 915
    :goto_0
    return-object v0

    .line 908
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 909
    .local v0, "message":Lcom/taobao/accs/data/Message;
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 910
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 911
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->data:[B

    .line 912
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 913
    const-string/jumbo v1, "4|sal|st"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 914
    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static buildUnbindApp(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const-string/jumbo v6, "Message"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "buildUnbindApp1"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-static {v8}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :try_start_0
    const-string/jumbo v6, "packageName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "userInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, "userId":Ljava/lang/String;
    const-string/jumbo v6, "sid"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "sid":Ljava/lang/String;
    const-string/jumbo v6, "anti_brush_cookie"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {p0, v3, v4, v5, v0}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 661
    invoke-static {p0, v2}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Message"

    const-string/jumbo v7, "buildUnbindApp1"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v1, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 665
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildUnbindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 671
    const/4 v1, 0x0

    .line 673
    .local v1, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v3, "Message"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "buildUnbindApp"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    const/4 v3, 0x0

    .line 694
    :goto_0
    return-object v3

    .line 677
    :cond_0
    new-instance v2, Lcom/taobao/accs/data/Message;

    invoke-direct {v2}, Lcom/taobao/accs/data/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v1    # "message":Lcom/taobao/accs/data/Message;
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x1

    :try_start_1
    iput v3, v2, Lcom/taobao/accs/data/Message;->node:I

    .line 679
    const/4 v3, 0x1

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 680
    iput-object p1, v2, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 681
    const-string/jumbo v3, "3|dm|"

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 682
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 683
    iput-object p1, v2, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 684
    const/16 v3, 0xd5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 685
    const-string/jumbo v3, "ctrl_unbindapp"

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 688
    invoke-static {p0, v2}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    .restart local v1    # "message":Lcom/taobao/accs/data/Message;
    :goto_1
    move-object v3, v1

    .line 694
    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v3, "Message"

    const-string/jumbo v4, "buildUnbindApp"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 692
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "message":Lcom/taobao/accs/data/Message;
    .restart local v2    # "message":Lcom/taobao/accs/data/Message;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    .restart local v1    # "message":Lcom/taobao/accs/data/Message;
    goto :goto_2
.end method

.method public static buildUnbindService(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 745
    const/4 v8, 0x0

    .line 747
    .local v8, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "serviceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "serviceId":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "cookie":Ljava/lang/String;
    move-object v0, p0

    .line 757
    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->buildUnbindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v8

    .line 761
    invoke-static {p0, v8}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "serviceId":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 762
    :catch_0
    move-exception v7

    .line 763
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Message"

    const-string/jumbo v9, "buildUnbindService"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v7, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 764
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildUnbindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "user_id"    # Ljava/lang/String;
    .param p6, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    :cond_0
    const/4 v0, 0x0

    .line 786
    :goto_0
    return-object v0

    .line 773
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 774
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 775
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 776
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 778
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 779
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 780
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 781
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 782
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 783
    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 784
    const-string/jumbo v1, "ctrl_unbindservice"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildUnbindUser(Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 834
    const/4 v7, 0x0

    .line 836
    .local v7, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cookie":Ljava/lang/String;
    move-object v0, p0

    .line 844
    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildUnbindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 848
    invoke-static {p0, v7}, Lcom/taobao/accs/data/Message;->setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 849
    :catch_0
    move-exception v6

    .line 850
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Message"

    const-string/jumbo v8, "buildUnbindUser"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 851
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildUnbindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "sid"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 857
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const/4 v0, 0x0

    .line 870
    :goto_0
    return-object v0

    .line 860
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 861
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 862
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 863
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 865
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 866
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 867
    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 868
    const-string/jumbo v1, "ctrl_unbinduser"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static fillExtHeader(Landroid/content/Context;Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "businessId"    # Ljava/lang/String;
    .param p6, "extTag"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3ff

    .line 1123
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_5

    .line 1128
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    .line 1129
    if-eqz p5, :cond_1

    invoke-static {p5}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1130
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 1133
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 1136
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :cond_3
    if-eqz p6, :cond_4

    invoke-static {p6}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 1139
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p4}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_5

    .line 1142
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_5
    return-void
.end method

.method private static setControlHost(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 1075
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Message"

    const-string/jumbo v3, "setControlHost"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static setControlUnit(Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 1060
    :try_start_0
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v2

    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v3

    invoke-virtual {v3}, Ljim;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lka;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Message"

    const-string/jumbo v3, "setControlUnit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setPushAckFlag(SZ)V
    .locals 1
    .param p1, "flag"    # S
    .param p2, "businessAck"    # Z

    .prologue
    .line 1163
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/accs/data/Message;->type:I

    .line 1165
    iput-short p1, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1166
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    and-int/lit16 v0, v0, -0x4001

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1167
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    or-int/lit16 v0, v0, 0x2000

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1168
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    and-int/lit16 v0, v0, -0x801

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1169
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    and-int/lit8 v0, v0, -0x41

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1172
    if-eqz p2, :cond_0

    .line 1173
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1175
    :cond_0
    return-void
.end method

.method private static setUnit(Landroid/content/Context;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "requstInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 1038
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    if-nez v1, :cond_0

    .line 1040
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljiu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v1, "Message"

    const-string/jumbo v2, "setUnit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1044
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1047
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v1, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    goto :goto_0
.end method

.method private type(ILcom/taobao/accs/data/Message$ReqType;I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "req"    # Lcom/taobao/accs/data/Message$ReqType;
    .param p3, "res"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1148
    iput p1, p0, Lcom/taobao/accs/data/Message;->type:I

    .line 1149
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1150
    and-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message$ReqType;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    shl-int/lit8 v0, v0, 0xb

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1152
    :cond_0
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;I)[B
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionType"    # I

    .prologue
    .line 310
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/taobao/accs/data/Message;->buildData(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 318
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 319
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 324
    .local v12, "oriData":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->compressData()V

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/accs/data/Message;->isAck:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    const-string/jumbo v17, ""

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    const-string/jumbo v17, ""

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    .line 337
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 338
    .local v3, "bDataId":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->sourceLength:B

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->targetLength:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 349
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/Message;->getExtHeaderLen(Ljava/util/Map;)S

    move-result v8

    .line 351
    .local v8, "extHeaderLen":S
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->targetLength:B

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->sourceLength:B

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    array-length v0, v3

    move/from16 v18, v0

    add-int v18, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    const/16 v17, 0x0

    :goto_5
    add-int v17, v17, v18

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/taobao/accs/data/Message;->dataLength:S

    .line 353
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->dataLength:S

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/taobao/accs/data/Message;->totalLength:S

    .line 355
    new-instance v13, Ljjl;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->totalLength:S

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    add-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljjl;-><init>(I)V

    .line 357
    .local v13, "os":Ljjl;
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "Build Message"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :try_start_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->compress:B

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 2016
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write(I)V

    .line 366
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 367
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tversion:2 compress:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->compress:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_1
    if-nez p2, :cond_11

    .line 370
    const/16 v17, -0x80

    .line 3016
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write(I)V

    .line 371
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "\tflag: 0x80"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    :goto_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->totalLength:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->a(S)Ljjl;

    .line 379
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 380
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\ttotalLength:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->totalLength:S

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->dataLength:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->a(S)Ljjl;

    .line 383
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 384
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tdataLength:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->dataLength:S

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_3
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->flags:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->a(S)Ljjl;

    .line 388
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 389
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tflags:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->flags:S

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :cond_4
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->targetLength:B

    move/from16 v17, v0

    .line 5016
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write(I)V

    .line 394
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 395
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\ttargetLength:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->targetLength:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write([B)V

    .line 399
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 400
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\ttarget:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->sourceLength:B

    move/from16 v17, v0

    .line 6016
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write(I)V

    .line 404
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 405
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tsourceLength:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->sourceLength:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write([B)V

    .line 409
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 410
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tsource:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :cond_8
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 7016
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write(I)V

    .line 415
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 416
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tdataIdLength:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v3

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_9
    invoke-virtual {v13, v3}, Ljjl;->write([B)V

    .line 421
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 422
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\tdataId:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :cond_a
    invoke-virtual {v13, v8}, Ljjl;->a(S)Ljjl;

    .line 426
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 427
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\textHeader len:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 432
    .local v15, "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 433
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 434
    invoke-virtual {v15}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v17

    move/from16 v0, v17

    int-to-short v10, v0

    .line 435
    .local v10, "key":S
    const-string/jumbo v17, "utf-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-short v11, v0

    .line 436
    .local v11, "len":S
    shl-int/lit8 v17, v10, 0xa

    or-int v17, v17, v11

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->a(S)Ljjl;

    .line 437
    const-string/jumbo v17, "utf-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write([B)V

    .line 438
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 439
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\textHeader key:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 456
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":S
    .end local v11    # "len":S
    .end local v15    # "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 457
    .local v6, "e1":Ljava/io/IOException;
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "build4"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 460
    .end local v6    # "e1":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v13}, Ljjl;->toByteArray()[B

    move-result-object v14

    .line 462
    .local v14, "result":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/accs/data/Message;->printByte([B)V

    .line 465
    :try_start_3
    invoke-virtual {v13}, Ljjl;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 469
    :goto_9
    return-object v14

    .line 311
    .end local v3    # "bDataId":[B
    .end local v8    # "extHeaderLen":S
    .end local v12    # "oriData":Ljava/lang/String;
    .end local v13    # "os":Ljjl;
    .end local v14    # "result":[B
    :catch_1
    move-exception v7

    .line 312
    .local v7, "e2":Lorg/json/JSONException;
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "build1"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 313
    .end local v7    # "e2":Lorg/json/JSONException;
    :catch_2
    move-exception v5

    .line 314
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "build2"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 321
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_d
    const-string/jumbo v12, ""

    .restart local v12    # "oriData":Ljava/lang/String;
    goto/16 :goto_1

    .line 328
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 340
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    .line 341
    .local v7, "e2":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "build3"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 343
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 344
    .restart local v3    # "bDataId":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->sourceLength:B

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->targetLength:B

    goto/16 :goto_4

    .line 351
    .end local v7    # "e2":Ljava/lang/Exception;
    .restart local v8    # "extHeaderLen":S
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    goto/16 :goto_5

    .line 373
    .restart local v13    # "os":Ljjl;
    :cond_11
    const/16 v17, 0x40

    .line 4016
    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write(I)V

    .line 374
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "\tflag: 0x40"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 446
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljjl;->write([B)V

    .line 450
    :cond_13
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 451
    const-string/jumbo v17, "Message"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "\toriData:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_14
    invoke-virtual {v13}, Ljjl;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 466
    .restart local v14    # "result":[B
    :catch_4
    move-exception v5

    .line 467
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v17, "Message"

    const-string/jumbo v18, "build5"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method buildData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x64

    .line 526
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    new-instance v1, Ljjj$a;

    invoke-direct {v1}, Ljjj$a;-><init>()V

    const-string/jumbo v2, "command"

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "osType"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->osType:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "sign"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->appSign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "sdkVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "ttid"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->ttid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "model"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "brand"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "imei"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "imsi"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    const-string/jumbo v1, "os"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljjj$a;

    move-result-object v0

    .line 7083
    iget-object v0, v0, Ljjj$a;->a:Lorg/json/JSONObject;

    .line 530
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->data:[B

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    goto :goto_1
.end method

.method compressData()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 495
    .local v4, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/taobao/accs/data/Message;->data:[B

    if-nez v6, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v5, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    iget-object v6, p0, Lcom/taobao/accs/data/Message;->data:[B

    invoke-virtual {v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 501
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 503
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 504
    .local v2, "dataCompress":[B
    if-eqz v2, :cond_2

    array-length v6, v2

    iget-object v7, p0, Lcom/taobao/accs/data/Message;->data:[B

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 505
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->data:[B

    .line 506
    const/4 v6, 0x1

    iput-byte v6, p0, Lcom/taobao/accs/data/Message;->compress:B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 514
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 517
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 521
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 522
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 508
    .end local v2    # "dataCompress":[B
    :catch_1
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string/jumbo v6, "Message"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    if-eqz v4, :cond_3

    .line 514
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 516
    :cond_3
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 522
    :catch_2
    move-exception v6

    goto :goto_0

    .line 512
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 513
    :goto_2
    if-eqz v4, :cond_4

    .line 514
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 516
    :cond_4
    if-eqz v0, :cond_5

    .line 517
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 521
    :cond_5
    :goto_3
    throw v6

    :catch_3
    move-exception v7

    goto :goto_3

    .line 512
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 508
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getDelyTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    return-wide v0
.end method

.method getExtHeaderLen(Ljava/util/Map;)S
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;)S"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    .local p1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 475
    .local v1, "extHeaderLen":S
    if-eqz p1, :cond_1

    .line 476
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    .line 477
    .local v4, "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 478
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 479
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v6, v6, 0x3ff

    int-to-short v3, v6

    .line 480
    .local v3, "len":S
    add-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v1

    int-to-short v1, v6

    goto :goto_0

    .line 484
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "len":S
    .end local v4    # "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method public getIntDataId()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    const/4 v0, -0x1

    .line 262
    .local v0, "ret":I
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/accs/data/Message;->isAck:Z

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 265
    :cond_0
    sget-wide v2, Lcom/taobao/accs/data/Message;->baseMessageId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v2

    neg-int v0, v1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Message"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parse int dataId error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    return-object v0
.end method

.method public getNode()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/taobao/accs/data/Message;->node:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/taobao/accs/data/Message;->retryTimes:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/taobao/accs/data/Message;->type:I

    return v0
.end method

.method public isControlFrame()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    const-string/jumbo v0, "3|dm|"

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTimeOut()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->startSendTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    add-long/2addr v2, v4

    iget v4, p0, Lcom/taobao/accs/data/Message;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    .line 299
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v2, "Message"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delay time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " beforeSendTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/accs/data/Message;->startSendTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/accs/data/Message;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_0
    return v0

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method printByte([B)V
    .locals 6
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 551
    const-string/jumbo v1, ""

    .line 552
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    const-string/jumbo v2, "Message"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "len:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    array-length v2, p1

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    const-string/jumbo v2, "Message"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setSendTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/taobao/accs/data/Message;->sendTime:J

    .line 276
    return-void
.end method
