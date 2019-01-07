.class public final Lcom/alipay/mobile/common/logging/MdapLogUploadManager;
.super Ljava/lang/Object;
.source "MdapLogUploadManager.java"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Liky;

    invoke-direct {v0}, Liky;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/mdap/upload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "file object is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lilu;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 298
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 300
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "file content is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :catch_0
    move-exception v2

    .line 295
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "read file error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 303
    :cond_1
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v2

    invoke-interface {v2}, Lijz;->s()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "log host is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_2
    invoke-static {}, Lima;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    const-string/jumbo v3, "com.alipay.mobile.logmonitor.ClientMonitorExtReceiver"

    .line 2065
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2066
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2067
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v5, v7, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :goto_0
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".monitor.action.UPLOAD_MDAP_LOG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string/jumbo v3, "file"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 324
    :cond_3
    :goto_1
    invoke-static {v4}, Lima;->b(Ljava/lang/String;)[B

    move-result-object v9

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    array-length v7, v9

    .line 3030
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "curUploadDay"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3031
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "curUploadTrafic"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1

    invoke-virtual {v3, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    div-long/2addr v12, v14

    .line 3034
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v3

    .line 3115
    iget-object v3, v3, Lilz;->a:Landroid/content/SharedPreferences;

    const-wide/16 v14, 0x0

    invoke-interface {v3, v8, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3036
    invoke-static {v2}, Lime;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 3037
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 3038
    :goto_2
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v3

    .line 3959
    invoke-virtual {v3}, Lilq;->b()V

    .line 3961
    iget v5, v3, Lilq;->g:I

    if-nez v5, :cond_4

    .line 3962
    iget-object v5, v3, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v16, "LogStrategyConfig"

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3963
    const-string/jumbo v16, "PositiveDiagnose"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lilq;->g:I

    .line 3965
    :cond_4
    iget v5, v3, Lilq;->g:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_9

    .line 3966
    iget-object v3, v3, Lilq;->d:Landroid/content/Context;

    invoke-static {v3}, Lime;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3967
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    const/4 v3, 0x1

    move v5, v3

    .line 3039
    :goto_3
    if-nez v5, :cond_5

    const-string/jumbo v3, "WIFI"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_5
    const/4 v3, 0x1

    .line 3041
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    .line 3042
    const/16 v17, 0x40

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x0

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3044
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 3045
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " upload"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    cmp-long v14, v12, v14

    if-eqz v14, :cond_c

    .line 3048
    const-string/jumbo v14, " on the new day"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v14

    .line 4107
    iget-object v14, v14, Lilz;->a:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14, v8, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3052
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lilz;->a(Ljava/lang/String;I)V

    .line 3055
    invoke-static {v2, v3, v10, v7}, Lilc;->a(ZZLjava/lang/String;I)V

    .line 3081
    :goto_5
    const-string/jumbo v3, ", contentPeek: #"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    const-string/jumbo v3, ", contentSize: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3083
    const-string/jumbo v3, ", traficByte: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3084
    const-string/jumbo v3, ", network: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    const-string/jumbo v3, ", connected: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3086
    const-string/jumbo v2, ", positive: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3088
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "MdapTraffic"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 329
    const-string/jumbo v3, "Content-type"

    const-string/jumbo v4, "text/xml"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v3, "ProcessName"

    invoke-static {}, Lika;->a()Likh;

    move-result-object v4

    invoke-interface {v4}, Likh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v3, "bizCode"

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v3, "userId"

    invoke-static {}, Lika;->b()Lijz;

    move-result-object v4

    invoke-interface {v4}, Lijz;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v3, "productId"

    invoke-static {}, Lika;->b()Lijz;

    move-result-object v4

    invoke-interface {v4}, Lijz;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v3, Lilb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/loggw/logUpload.do"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lilb;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 338
    :try_start_3
    invoke-virtual {v3, v9, v2}, Lilb;->a([BLjava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 344
    if-nez v2, :cond_f

    .line 345
    invoke-virtual {v3}, Lilb;->e()V

    .line 346
    const-string/jumbo v2, "unknown"

    const-string/jumbo v3, "unknown"

    const-string/jumbo v4, "http response is NULL"

    array-length v5, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "http response is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2068
    :catch_1
    move-exception v2

    .line 2069
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v5, "MdapLogUploadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setComponentEnabled: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :catch_2
    move-exception v2

    .line 320
    const-string/jumbo v3, "MdapLogUploadManager"

    const-string/jumbo v5, "uploadFile"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3037
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3967
    :cond_8
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_3

    .line 3969
    :cond_9
    iget v3, v3, Lilq;->g:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_a

    const/4 v3, 0x1

    move v5, v3

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_3

    .line 3039
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 3059
    :cond_c
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v8

    .line 5103
    iget-object v8, v8, Lilz;->a:Landroid/content/SharedPreferences;

    const/4 v12, 0x0

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3061
    add-int v12, v8, v7

    .line 3062
    const-string/jumbo v13, ", todayByte: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3064
    const/high16 v13, 0x200000

    if-le v8, v13, :cond_e

    .line 3067
    if-eqz v3, :cond_d

    .line 3068
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v8, "MdapTraffic"

    const-string/jumbo v10, "checkAndUpdateConsume, do not check by positive."

    invoke-interface {v3, v8, v10}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3072
    :cond_d
    new-instance v2, Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " upload trafic limited ! todayByte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3077
    :cond_e
    invoke-static {v2, v3, v10, v12}, Lilc;->a(ZZLjava/lang/String;I)V

    goto/16 :goto_5

    .line 339
    :catch_3
    move-exception v2

    .line 340
    const-string/jumbo v3, "unknown"

    const-string/jumbo v4, "unknown"

    const-string/jumbo v5, "POST request error"

    array-length v6, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v5, v6}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "POST request error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 350
    :cond_f
    invoke-virtual {v3}, Lilb;->a()J

    move-result-wide v4

    .line 351
    invoke-virtual {v3}, Lilb;->d()J

    move-result-wide v6

    .line 353
    invoke-virtual {v3}, Lilb;->b()I

    move-result v10

    .line 354
    invoke-virtual {v3}, Lilb;->c()Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-virtual {v3}, Lilb;->e()V

    .line 357
    const/16 v2, 0xc8

    if-eq v10, v2, :cond_11

    .line 359
    sget-object v2, Lijy;->f:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 360
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 361
    const-string/jumbo v2, "filePath"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v2, "fileLen"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string/jumbo v2, "reqLen"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {}, Lika;->e()Likn;

    move-result-object v2

    const-string/jumbo v3, "MdapLog"

    const-string/jumbo v4, "Upload"

    const-string/jumbo v6, "ResponseCode"

    .line 365
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v5, p2

    .line 364
    invoke-interface/range {v2 .. v8}, Likn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    :cond_10
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    const-string/jumbo v4, "http response code error"

    array-length v5, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response code is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_11
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 375
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_12

    .line 376
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mdap response code error"

    array-length v6, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v5, v6}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "responseContent code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 381
    :catch_4
    move-exception v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    const-string/jumbo v4, "get responseContent code error,JSONException"

    array-length v5, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "get responseContent code error,JSONException"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_12
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    invoke-static {v2}, Lima;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 393
    const/4 v2, 0x0

    .line 395
    :try_start_6
    const-string/jumbo v3, "logSwitch="

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 396
    if-lez v3, :cond_13

    .line 397
    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    .line 402
    :cond_13
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "logswitch: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 388
    :catch_5
    move-exception v2

    .line 389
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delete file error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 399
    :catch_6
    move-exception v3

    .line 400
    invoke-static {}, Lika;->d()Likq;

    move-result-object v8

    const-string/jumbo v9, "MdapLogUploadManager"

    invoke-interface {v8, v9, v3}, Likq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 411
    const-string/jumbo v0, "LogMonitor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Likj;

    invoke-direct {v0}, Likj;-><init>()V

    .line 415
    const-string/jumbo v1, "LogMonitor"

    .line 5455
    iput-object v1, v0, Likj;->e:Ljava/lang/String;

    .line 416
    const-string/jumbo v1, "LogUpload"

    .line 6336
    iput-object v1, v0, Likj;->a:Ljava/lang/String;

    .line 6344
    iput-object p0, v0, Likj;->b:Ljava/lang/String;

    .line 6352
    iput-object p1, v0, Likj;->c:Ljava/lang/String;

    .line 6360
    iput-object p2, v0, Likj;->d:Ljava/lang/String;

    .line 420
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Likj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v1, "zipLength"

    invoke-virtual {v0, v1, p4}, Likj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lika;->c()Likl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Likl;->a(Ljava/lang/String;Likj;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    monitor-enter p0

    const/4 v1, 0x0

    .line 75
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/mdap/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lima;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    const-string/jumbo v2, "mdap"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 80
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "upload"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    move-object v2, v1

    .line 89
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b:Landroid/content/Context;

    const-string/jumbo v1, "mdap"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 90
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 129
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :goto_3
    :try_start_6
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v4, "MdapLogUploadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "syncLog backupFileDir: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    move-object v1, v3

    .line 94
    :goto_4
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "MdapLogUploadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "syncLog logFileDir: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_2

    .line 106
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "MdapLogUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncLog: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 109
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lima;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lima;->d()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 116
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-static {v5, v7}, Lilu;->b(Ljava/io/File;Ljava/io/File;)V

    .line 120
    :cond_4
    invoke-static {v5, v6}, Lilu;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 107
    :cond_5
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 121
    :catch_2
    move-exception v0

    .line 122
    :try_start_9
    invoke-static {}, Lika;->d()Likq;

    move-result-object v6

    const-string/jumbo v7, "MdapLogUploadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", syncLog: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 126
    :catch_3
    move-exception v0

    .line 127
    :try_start_a
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "MdapLogUploadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncLog, move fail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 93
    :catch_4
    move-exception v0

    goto/16 :goto_4

    .line 84
    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_6
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 26

    .prologue
    .line 135
    monitor-enter p0

    .line 1255
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    invoke-static {v2}, Lilu;->c(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/32 v4, 0x3200000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1259
    const/4 v3, 0x0

    .line 1261
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v4, v2

    .line 1265
    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    array-length v2, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 140
    :cond_0
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 141
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v2, v0

    if-nez v2, :cond_5

    .line 142
    :cond_1
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "MdapLogUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " do not need upload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 1262
    :catch_0
    move-exception v2

    .line 1263
    :try_start_4
    const-string/jumbo v4, "MdapLogUploadManager"

    const-string/jumbo v5, "cleanExpiresFile"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v3

    goto :goto_0

    .line 1268
    :cond_3
    sget-object v2, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a:Ljava/util/Comparator;

    invoke-static {v4, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1270
    array-length v2, v4

    div-int/lit8 v5, v2, 0x4

    .line 1271
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_0

    .line 1272
    aget-object v6, v4, v3

    .line 1273
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 1277
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1278
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v7, "MdapLogUploadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cleanExpiresFile: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is too large or too old, total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1278
    invoke-interface {v2, v7, v8}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1271
    :cond_4
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1280
    :catch_1
    move-exception v2

    .line 1281
    :try_start_6
    invoke-static {}, Lika;->d()Likq;

    move-result-object v7

    const-string/jumbo v8, "MdapLogUploadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " cleanExpiresFile"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 136
    :catch_2
    move-exception v2

    .line 137
    :try_start_7
    const-string/jumbo v3, "MdapLogUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cleanExpiresFile: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 135
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 145
    :cond_5
    :try_start_8
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "MdapLogUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " will upload, count of all mdap files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v12, 0x0

    .line 149
    const-wide/16 v4, 0x0

    .line 150
    const-wide/16 v6, 0x0

    .line 152
    const/4 v11, 0x0

    .line 153
    const/4 v10, 0x0

    .line 155
    const/4 v9, 0x0

    .line 156
    const/4 v8, 0x0

    .line 158
    const/4 v3, 0x0

    .line 160
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_5
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_10

    .line 161
    aget-object v14, v17, v16

    .line 162
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 164
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v18

    .line 169
    :try_start_9
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v2

    .line 1294
    invoke-virtual {v2}, Lilq;->b()V

    .line 1296
    const-string/jumbo v13, "_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1297
    array-length v15, v13

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    .line 1298
    const/4 v13, 0x0

    .line 170
    :cond_6
    :goto_6
    if-nez v13, :cond_a

    move-object v2, v3

    move-object v3, v8

    move/from16 v22, v9

    move-wide v8, v6

    move v6, v11

    move v7, v12

    move-wide/from16 v23, v4

    move/from16 v4, v22

    move-object v5, v10

    move-wide/from16 v10, v23

    .line 160
    :goto_7
    add-int/lit8 v12, v16, 0x1

    move/from16 v16, v12

    move v12, v7

    move-object/from16 v22, v3

    move-object v3, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-wide v4, v10

    move v11, v6

    move-object/from16 v10, v24

    move-wide v6, v8

    move/from16 v9, v23

    move-object/from16 v8, v22

    goto :goto_5

    .line 1301
    :cond_7
    const/4 v15, 0x2

    aget-object v13, v13, v15

    .line 1302
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1303
    const/4 v13, 0x0

    goto :goto_6

    .line 1306
    :cond_8
    iget-object v15, v2, Lilq;->d:Landroid/content/Context;

    invoke-static {v15}, Lime;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v15

    .line 1308
    if-eqz v15, :cond_6

    .line 1309
    iget-object v2, v2, Lilq;->e:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lilp;

    .line 1310
    if-eqz v2, :cond_6

    .line 1311
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    if-nez v19, :cond_9

    iget-object v0, v2, Lilp;->d:Ljava/util/List;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mobile"

    .line 1312
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 1313
    const/4 v13, 0x0

    goto :goto_6

    .line 1315
    :cond_9
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_6

    iget-object v2, v2, Lilp;->d:Ljava/util/List;

    const-string/jumbo v15, "wifi"

    .line 1316
    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 1317
    const/4 v13, 0x0

    goto :goto_6

    .line 174
    :cond_a
    if-eqz v3, :cond_b

    :try_start_a
    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 175
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v14, "MdapLogUploadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v19, " previous has occured MdapTrafficException, so this uploading is limited and not performed"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v8

    move/from16 v22, v9

    move-wide v8, v6

    move v6, v11

    move v7, v12

    move-wide/from16 v23, v4

    move/from16 v4, v22

    move-object v5, v10

    move-wide/from16 v10, v23

    .line 178
    goto/16 :goto_7

    .line 181
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/io/File;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 182
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v15, "MdapLogUploadManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " upload success: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v2, v15, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    add-int/lit8 v12, v12, 0x1

    .line 185
    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v4, v4, v20

    .line 186
    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v6, v14

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 189
    add-int/lit8 v2, v9, 0x1

    move-object/from16 v22, v3

    move-object v3, v8

    move-wide v8, v6

    move v6, v11

    move v7, v12

    move/from16 v23, v2

    move-object/from16 v2, v22

    move-wide/from16 v24, v4

    move/from16 v4, v23

    move-object v5, v10

    move-wide/from16 v10, v24

    goto/16 :goto_7

    .line 192
    :cond_c
    if-nez v8, :cond_d

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 197
    :goto_8
    :try_start_b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    move/from16 v23, v9

    move-wide v8, v6

    move v6, v11

    move v7, v12

    move-wide/from16 v24, v4

    move/from16 v4, v23

    move-object v5, v10

    move-wide/from16 v10, v24

    .line 219
    goto/16 :goto_7

    .line 195
    :cond_d
    :try_start_c
    const-string/jumbo v2, "&"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v2, v8

    goto :goto_8

    .line 200
    :catch_3
    move-exception v2

    move-wide v14, v4

    move-object v4, v8

    move-object/from16 v8, p1

    move-wide/from16 v22, v6

    move v7, v12

    move-wide/from16 v12, v22

    .line 201
    :goto_9
    add-int/lit8 v6, v11, 0x1

    .line 202
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {}, Lika;->d()Likq;

    move-result-object v10

    const-string/jumbo v11, "MdapLogUploadManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " upload failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v11, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v10, 0x1

    if-ne v6, v10, :cond_f

    .line 207
    instance-of v10, v2, Ljava/lang/NullPointerException;

    if-nez v10, :cond_e

    .line 208
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/NullPointerException;

    if-eqz v10, :cond_f

    .line 209
    :cond_e
    invoke-static {}, Lika;->d()Likq;

    move-result-object v10

    const-string/jumbo v11, "MdapLogUploadManager"

    const-string/jumbo v18, "uploadLog"

    move-object/from16 v0, v18

    invoke-interface {v10, v11, v0, v2}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_f
    instance-of v2, v2, Lcom/alipay/mobile/common/logging/http/MdapTrafficController$MdapTrafficException;

    if-eqz v2, :cond_15

    .line 214
    if-nez v3, :cond_14

    .line 215
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 217
    :goto_a
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-wide v10, v14

    move v4, v9

    move-wide v8, v12

    goto/16 :goto_7

    .line 223
    :cond_10
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "MdapLogUploadManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "uploadLog end, realUploadCount: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v3, v13}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-nez v12, :cond_11

    .line 226
    if-lez v11, :cond_2

    .line 227
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "MdapLogUploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorUploadCount, all the uploading are failed ! lastErrorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 233
    :cond_11
    if-nez v8, :cond_13

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    :goto_b
    if-lez v9, :cond_12

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const/4 v2, 0x1

    if-le v9, v2, :cond_12

    .line 241
    const-string/jumbo v2, "_x"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    :cond_12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lika;->b()Lijz;

    move-result-object v3

    invoke-interface {v3}, Lijz;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/loggw/logUpload.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-static/range {v2 .. v8}, Likm;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Likm;

    move-result-object v2

    invoke-virtual {v2}, Likm;->b()V

    goto/16 :goto_2

    .line 236
    :cond_13
    const-string/jumbo v2, "&"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    .line 200
    :catch_4
    move-exception v2

    move-wide v14, v4

    move-object v4, v8

    move-object v8, v13

    move-wide/from16 v22, v6

    move v7, v12

    move-wide/from16 v12, v22

    goto/16 :goto_9

    :catch_5
    move-exception v8

    move-wide v14, v4

    move-object v4, v2

    move-object v2, v8

    move-object v8, v13

    move-wide/from16 v22, v6

    move v7, v12

    move-wide/from16 v12, v22

    goto/16 :goto_9

    :cond_14
    move-object v2, v3

    goto/16 :goto_a

    :cond_15
    move-object v2, v3

    move-wide v10, v14

    move-object v3, v4

    move v4, v9

    move-wide v8, v12

    goto/16 :goto_7

    :cond_16
    move-object v2, v3

    move-object v3, v8

    move/from16 v22, v9

    move-wide v8, v6

    move v6, v11

    move v7, v12

    move-wide/from16 v23, v4

    move/from16 v4, v22

    move-object v5, v10

    move-wide/from16 v10, v23

    goto/16 :goto_7
.end method
