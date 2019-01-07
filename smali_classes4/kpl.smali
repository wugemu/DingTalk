.class public final Lkpl;
.super Ljava/lang/Object;
.source "AgooFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkpl$a;,
        Lkpl$b;
    }
.end annotation


# static fields
.field private static d:Landroid/content/Context;


# instance fields
.field protected a:Lkpm;

.field public b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private c:Lorg/android/agoo/message/MessageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lkpl;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lkpl;->a:Lkpm;

    .line 49
    iput-object v0, p0, Lkpl;->c:Lorg/android/agoo/message/MessageService;

    .line 599
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lkpl;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(JLkpj;)Landroid/os/Bundle;
    .locals 8
    .param p0, "flag"    # J
    .param p2, "msgDO"    # Lkpj;

    .prologue
    const/16 v7, 0x9

    const/16 v3, 0x8

    const/16 v6, 0x31

    .line 455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v0, "flagExtras":Landroid/os/Bundle;
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 459
    .local v1, "flags":[C
    if-eqz v1, :cond_4

    array-length v2, v1

    if-gt v3, v2, :cond_4

    .line 460
    array-length v2, v1

    if-gt v3, v2, :cond_1

    .line 461
    const-string/jumbo v2, "encrypted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x6

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_0

    .line 467
    const-string/jumbo v2, "report"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v2, "1"

    iput-object v2, p2, Lkpj;->e:Ljava/lang/String;

    .line 470
    :cond_0
    const/4 v2, 0x7

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_1

    .line 471
    const-string/jumbo v2, "notify"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_1
    array-length v2, v1

    if-gt v7, v2, :cond_2

    .line 476
    const/16 v2, 0x8

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 477
    const-string/jumbo v2, "has_test"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_2
    const/16 v2, 0xa

    array-length v3, v1

    if-gt v2, v3, :cond_3

    .line 482
    const/16 v2, 0x9

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_3

    .line 483
    const-string/jumbo v2, "duplicate"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_3
    const/16 v2, 0xb

    array-length v3, v1

    if-gt v2, v3, :cond_4

    .line 488
    const/16 v2, 0xa

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_4

    .line 489
    const-string/jumbo v2, "popup"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "flags":[C
    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "finalResult":Ljava/lang/String;
    const/4 v2, 0x0

    .line 296
    .local v2, "key":[B
    :try_start_0
    sget v9, Ljik;->e:I

    .line 304
    sget-object v9, Lkpl;->d:Landroid/content/Context;

    invoke-static {v9}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    .line 305
    .local v5, "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v5, :cond_0

    .line 306
    const-string/jumbo v9, "AgooFactory"

    const-string/jumbo v10, "SecurityGuardManager not null!"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v7

    .line 308
    .local v7, "ssCom":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    new-instance v6, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 309
    .local v6, "sgpc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    sget-object v9, Lkpl;->d:Landroid/content/Context;

    invoke-static {v9}, Ljjg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 310
    iget-object v9, v6, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string/jumbo v10, "INPUT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lkpl;->d:Landroid/content/Context;

    invoke-static {v12}, Ljjg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lkpl;->d:Landroid/content/Context;

    invoke-static {v12}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/4 v9, 0x3

    iput v9, v6, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 313
    sget-object v9, Ljik;->g:Ljava/lang/String;

    invoke-interface {v7, v6, v9}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "keyStr":Ljava/lang/String;
    invoke-static {v3}, Lkpi;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 319
    .end local v3    # "keyStr":Ljava/lang/String;
    .end local v6    # "sgpc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v7    # "ssCom":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :goto_0
    if-eqz v2, :cond_1

    array-length v9, v2

    if-lez v9, :cond_1

    .line 320
    const/16 v9, 0x10

    invoke-static {p0, v9}, Lkpf;->a(Ljava/lang/String;I)[B

    move-result-object v9

    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v2}, Lkpi;->a([B)[B

    move-result-object v11

    const-string/jumbo v12, "AES"

    invoke-direct {v10, v11, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v11, Lkpl;->d:Landroid/content/Context;

    invoke-static {v11}, Ljjg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "utf-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lkpi;->a([B)[B

    move-result-object v11

    invoke-static {v9, v10, v11}, Lkpi;->a([BLjavax/crypto/spec/SecretKeySpec;[B)[B

    move-result-object v4

    .line 322
    .local v4, "result":[B
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-direct {v1, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v0    # "finalResult":Ljava/lang/String;
    .local v1, "finalResult":Ljava/lang/String;
    move-object v0, v1

    .line 329
    .end local v1    # "finalResult":Ljava/lang/String;
    .end local v4    # "result":[B
    .end local v5    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .restart local v0    # "finalResult":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 316
    .restart local v5    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_0
    const-string/jumbo v9, "AgooFactory"

    const-string/jumbo v10, "SecurityGuardManager is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v5    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v8

    .line 327
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "AgooFactory"

    const-string/jumbo v10, "parseEncryptedMsg failure: "

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9, v10, v8, v11}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 324
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v5    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_1
    :try_start_1
    const-string/jumbo v9, "AgooFactory"

    const-string/jumbo v10, "aesDecrypt key is null!"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lkpl;)Lorg/android/agoo/message/MessageService;
    .locals 1
    .param p0, "x0"    # Lkpl;

    .prologue
    .line 43
    iget-object v0, p0, Lkpl;->c:Lorg/android/agoo/message/MessageService;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pack"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 540
    :try_start_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onHandleMessage current tid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_0
    iget-object v1, p0, Lkpl;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lkpl$b;

    invoke-direct {v2, p0, p1, p2}, Lkpl$b;-><init>(Lkpl;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "sendMsgByBindService error >>"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 442
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 445
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 446
    const/4 v2, 0x1

    .line 451
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic b(Lkpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lkpl;

    .prologue
    .line 43
    iget-object v0, p0, Lkpl;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public final a([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;
    .locals 33
    .param p1, "data"    # [B
    .param p2, "messageSource"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .param p4, "msgToBussiness"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-gtz v27, :cond_2

    .line 149
    :cond_0
    invoke-static {}, Ljjo;->a()Ljjo;

    const v27, 0x101d2

    const-string/jumbo v28, "accs.msgRecevie"

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "data==null"

    invoke-static/range {v27 .. v30}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    const-string/jumbo v27, "AgooFactory"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "handleMessage data==null,utdid="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v10, 0x0

    .line 288
    :cond_1
    :goto_0
    return-object v10

    .line 153
    :cond_2
    new-instance v20, Ljava/lang/String;

    const-string/jumbo v27, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 154
    .local v20, "message":Ljava/lang/String;
    sget-object v27, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v27 .. v27}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 155
    const-string/jumbo v27, "AgooFactory"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "msgRecevie,message--->["

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "],utdid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 158
    invoke-static {}, Ljjo;->a()Ljjo;

    const v27, 0x101d2

    const-string/jumbo v28, "accs.msgRecevie"

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "message==null"

    invoke-static/range {v27 .. v30}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    const-string/jumbo v27, "AgooFactory"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "handleMessage message==null,utdid="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 162
    :cond_4
    new-instance v18, Lorg/json/JSONArray;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 163
    .local v18, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 167
    .local v19, "len":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v16, "ids":Ljava/lang/StringBuilder;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v23, "removeIds":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v25, "removePacks":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 171
    .local v10, "extras":Landroid/os/Bundle;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_14

    .line 172
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "extras":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 173
    .restart local v10    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 174
    .local v17, "json":Lorg/json/JSONObject;
    if-eqz v17, :cond_6

    .line 177
    new-instance v21, Lkpj;

    invoke-direct/range {v21 .. v21}, Lkpj;-><init>()V

    .line 178
    .local v21, "msgDO":Lkpj;
    const-string/jumbo v27, "p"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 179
    .local v22, "pack":Ljava/lang/String;
    const-string/jumbo v27, "i"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "id":Ljava/lang/String;
    const-string/jumbo v27, "b"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "body":Ljava/lang/String;
    const-string/jumbo v27, "f"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 182
    .local v12, "flag":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v27, v19, -0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_5

    .line 184
    const-string/jumbo v27, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_5
    move-object/from16 v0, v21

    iput-object v15, v0, Lkpj;->a:Ljava/lang/String;

    .line 187
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->b:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->d:Ljava/lang/String;

    .line 189
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 190
    const-string/jumbo v27, "11"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->c:Ljava/lang/String;

    .line 191
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkpm;->a(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 171
    .end local v7    # "body":Ljava/lang/String;
    .end local v12    # "flag":J
    .end local v15    # "id":Ljava/lang/String;
    .end local v21    # "msgDO":Lkpj;
    .end local v22    # "pack":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 194
    .restart local v7    # "body":Ljava/lang/String;
    .restart local v12    # "flag":J
    .restart local v15    # "id":Ljava/lang/String;
    .restart local v21    # "msgDO":Lkpj;
    .restart local v22    # "pack":Ljava/lang/String;
    :cond_7
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 195
    const-string/jumbo v27, "12"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->c:Ljava/lang/String;

    .line 196
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkpm;->a(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 284
    .end local v7    # "body":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v12    # "flag":J
    .end local v14    # "i":I
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "ids":Ljava/lang/StringBuilder;
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v18    # "jsonArray":Lorg/json/JSONArray;
    .end local v19    # "len":I
    .end local v20    # "message":Ljava/lang/String;
    .end local v21    # "msgDO":Lkpj;
    .end local v22    # "pack":Ljava/lang/String;
    .end local v23    # "removeIds":Ljava/lang/StringBuilder;
    .end local v25    # "removePacks":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 285
    .local v8, "e":Ljava/lang/Throwable;
    sget-object v27, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v27 .. v27}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 286
    const-string/jumbo v27, "AgooFactory"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "msgRecevie is error,e="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 199
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v7    # "body":Ljava/lang/String;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v12    # "flag":J
    .restart local v14    # "i":I
    .restart local v15    # "id":Ljava/lang/String;
    .restart local v16    # "ids":Ljava/lang/StringBuilder;
    .restart local v17    # "json":Lorg/json/JSONObject;
    .restart local v18    # "jsonArray":Lorg/json/JSONArray;
    .restart local v19    # "len":I
    .restart local v20    # "message":Ljava/lang/String;
    .restart local v21    # "msgDO":Lkpj;
    .restart local v22    # "pack":Ljava/lang/String;
    .restart local v23    # "removeIds":Ljava/lang/StringBuilder;
    .restart local v25    # "removePacks":Ljava/lang/StringBuilder;
    :cond_9
    const-wide/16 v28, -0x1

    cmp-long v27, v12, v28

    if-nez v27, :cond_a

    .line 200
    :try_start_1
    const-string/jumbo v27, "13"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->c:Ljava/lang/String;

    .line 201
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkpm;->a(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_2

    .line 204
    :cond_a
    sget-object v27, Lkpl;->d:Landroid/content/Context;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lkpl;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 205
    const-string/jumbo v27, "AgooFactory"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v29, "msgRecevie checkpackage is del,pack="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Ljjo;->a()Ljjo;

    const v27, 0x101d2

    const-string/jumbo v28, "accs.msgRecevie"

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "deletePack"

    move/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v27, v19, -0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_6

    .line 210
    const-string/jumbo v27, ","

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v27, ","

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 215
    :cond_b
    move-object/from16 v0, v21

    invoke-static {v12, v13, v0}, Lkpl;->a(JLkpj;)Landroid/os/Bundle;

    move-result-object v11

    .line 216
    .local v11, "flagExtras":Landroid/os/Bundle;
    const-string/jumbo v27, "encrypted"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, "encrypted":Ljava/lang/String;
    const/4 v6, 0x0

    .line 220
    .local v6, "agooFlag":Z
    sget-object v27, Lkpl;->d:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 221
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 222
    const-string/jumbo v27, "AgooFactory"

    const-string/jumbo v28, "normal msg~~"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_c
    const-string/jumbo v27, "has_decrypted"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    :goto_3
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :try_start_2
    const-string/jumbo v27, "t"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 249
    .local v26, "time":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 250
    const-string/jumbo v27, "time"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 257
    .end local v26    # "time":Ljava/lang/String;
    :cond_d
    :goto_4
    :try_start_3
    const-string/jumbo v27, "trace"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    const-string/jumbo v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v27, "body"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v27, "source"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v27, "fromAppkey"

    sget-object v28, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v28 .. v28}, Ljjg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-eqz p4, :cond_13

    .line 263
    sget-object v28, Lkpl;->d:Landroid/content/Context;

    .line 2503
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 2504
    const-string/jumbo v27, "org.agoo.android.intent.action.RECEIVE"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2505
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2506
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2507
    const-string/jumbo v27, "type"

    const-string/jumbo v30, "common-push"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2508
    const-string/jumbo v27, "message_source"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    const/16 v27, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2511
    :try_start_4
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 2512
    const-string/jumbo v30, "accs_extra"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2513
    const-string/jumbo v30, "msg_agoo_bundle"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 2518
    :goto_5
    :try_start_5
    sget-object v27, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v27 .. v27}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 2519
    const-string/jumbo v27, "AgooFactory"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "sendMsgToBussiness intent:"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ",utdid="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v28 .. v28}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ",pack="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ",agooFlag="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2522
    :cond_e
    if-eqz v6, :cond_12

    .line 2523
    invoke-static {}, Ljjo;->a()Ljjo;

    const v27, 0x101d2

    const-string/jumbo v30, "accs.msgRecevie"

    invoke-static/range {v28 .. v28}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v31, "agooMsg"

    const-string/jumbo v32, "15"

    move/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2524
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lkpl;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 223
    :cond_f
    const/16 v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 224
    const-string/jumbo v27, "AgooFactory"

    const-string/jumbo v28, "begin parse EncryptedMsg"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-static {v7}, Lkpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 227
    invoke-static {}, Ljjo;->a()Ljjo;

    const v27, 0x101d2

    const-string/jumbo v28, "accs.msgRecevie"

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "parseEncryptedMsg failure"

    const-string/jumbo v31, "22"

    invoke-static/range {v27 .. v31}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v27, "22"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->c:Ljava/lang/String;

    .line 229
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkpm;->a(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2

    .line 233
    :cond_10
    const-string/jumbo v27, "AgooFactory"

    const-string/jumbo v28, "msgRecevie msg encrypted flag not exist, cannot prase!!!"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Ljjo;->a()Ljjo;

    const v27, 0x101d2

    const-string/jumbo v28, "accs.msgRecevie"

    sget-object v29, Lkpl;->d:Landroid/content/Context;

    invoke-static/range {v29 .. v29}, Ljjg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "encrypted!=4"

    const-string/jumbo v31, "15"

    invoke-static/range {v27 .. v31}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    const-string/jumbo v27, "15"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lkpj;->c:Ljava/lang/String;

    .line 236
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkpm;->a(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2

    .line 241
    :cond_11
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 253
    :catch_1
    move-exception v27

    sget-object v27, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v27 .. v27}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 254
    const-string/jumbo v27, "AgooFactory"

    const-string/jumbo v28, "msgRecevie parse json:time error"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2514
    :catch_2
    move-exception v27

    .line 2515
    const-string/jumbo v30, "AgooFactory"

    const-string/jumbo v31, "sendMsgToBussiness"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2527
    :cond_12
    invoke-static/range {v22 .. v22}, Ljik;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2528
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 265
    :cond_13
    const-string/jumbo v27, "type"

    const-string/jumbo v28, "common-push"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v27, "message_source"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 269
    .end local v6    # "agooFlag":Z
    .end local v7    # "body":Ljava/lang/String;
    .end local v9    # "encrypted":Ljava/lang/String;
    .end local v11    # "flagExtras":Landroid/os/Bundle;
    .end local v12    # "flag":J
    .end local v15    # "id":Ljava/lang/String;
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v21    # "msgDO":Lkpj;
    .end local v22    # "pack":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    if-lez v27, :cond_1

    .line 270
    new-instance v24, Lkpj;

    invoke-direct/range {v24 .. v24}, Lkpj;-><init>()V

    .line 271
    .local v24, "removeMsg":Lkpj;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    iput-object v0, v1, Lkpj;->a:Ljava/lang/String;

    .line 272
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    iput-object v0, v1, Lkpj;->b:Ljava/lang/String;

    .line 273
    const-string/jumbo v27, "10"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    iput-object v0, v1, Lkpj;->c:Ljava/lang/String;

    .line 274
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    iput-object v0, v1, Lkpj;->d:Ljava/lang/String;

    .line 276
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkpm;->a(Lkpj;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Lkpm;Lorg/android/agoo/message/MessageService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifyManagerTemp"    # Lkpm;
    .param p3, "messageServiceTemp"    # Lorg/android/agoo/message/MessageService;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 57
    sput-object p1, Lkpl;->d:Landroid/content/Context;

    .line 1027
    invoke-static {}, Lkpk$a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lkpl;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 59
    iput-object p2, p0, Lkpl;->a:Lkpm;

    .line 60
    iget-object v0, p0, Lkpl;->a:Lkpm;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lkpm;

    invoke-direct {v0}, Lkpm;-><init>()V

    iput-object v0, p0, Lkpl;->a:Lkpm;

    .line 63
    :cond_0
    iget-object v0, p0, Lkpl;->a:Lkpm;

    sget-object v1, Lkpl;->d:Landroid/content/Context;

    .line 1043
    sput-object v1, Lkpm;->a:Landroid/content/Context;

    .line 2027
    invoke-static {}, Lkpk$a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    .line 1044
    iput-object v1, v0, Lkpm;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lkpl;->c:Lorg/android/agoo/message/MessageService;

    .line 65
    iget-object v0, p0, Lkpl;->c:Lorg/android/agoo/message/MessageService;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lorg/android/agoo/message/MessageService;

    invoke-direct {v0}, Lorg/android/agoo/message/MessageService;-><init>()V

    iput-object v0, p0, Lkpl;->c:Lorg/android/agoo/message/MessageService;

    .line 68
    :cond_1
    iget-object v0, p0, Lkpl;->c:Lorg/android/agoo/message/MessageService;

    sget-object v1, Lkpl;->d:Landroid/content/Context;

    .line 2063
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/android/agoo/message/MessageService;->c:Ljava/util/Map;

    .line 2064
    sput-object v1, Lorg/android/agoo/message/MessageService;->a:Landroid/content/Context;

    .line 2065
    new-instance v2, Lorg/android/agoo/message/MessageService$MessageDBHelper;

    invoke-direct {v2, v1}, Lorg/android/agoo/message/MessageService$MessageDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/android/agoo/message/MessageService;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 69
    return-void
.end method

.method public final a([BLjava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "status"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lkpl;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lkpl$1;

    invoke-direct {v1, p0, p1, p2}, Lkpl$1;-><init>(Lkpl;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
