.class public final Lelo;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "NotificationAlertPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "biz/notice_board_v2"

    const-class v1, Lclb;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 63
    .local v5, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 66
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v6, Lizk;

    array-length v7, p1

    invoke-direct {v6, v0, v7}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v6}, Liyo;-><init>(Lizj;)V

    .line 68
    .local v2, "e":Liyo;
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v6}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 79
    .end local v5    # "ret":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 83
    .end local v2    # "e":Liyo;
    :goto_0
    return-object v5

    .line 71
    .restart local v5    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 72
    .local v4, "ioException":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 73
    .end local v4    # "ioException":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "classNotFound":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 75
    .end local v1    # "classNotFound":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 76
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v6
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    check-cast p1, Lclb;

    .line 2039
    if-eqz p1, :cond_0

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2040
    :cond_0
    const-string/jumbo v0, "alert"

    const/4 v1, 0x0

    const-string/jumbo v2, "notice list model is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 2042
    :goto_0
    return-void

    .line 2045
    :cond_1
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2046
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2047
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 2049
    if-eqz v0, :cond_2

    .line 2050
    const-class v1, Leln;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lelo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 2051
    if-eqz v0, :cond_2

    instance-of v1, v0, Leln;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 2052
    check-cast v1, Leln;

    .line 2053
    const-string/jumbo v0, "alert"

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[Push] NotificationAlert uuid:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Leln;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " expire:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Leln;->f:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " sound:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v1, Leln;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, " vibrate:"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, v1, Leln;->g:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    invoke-static {}, Lelm;->b()Lelm;

    move-result-object v3

    .line 3052
    if-nez v1, :cond_3

    .line 3053
    const-string/jumbo v0, "alert"

    const/4 v1, 0x0

    const-string/jumbo v2, "alert module is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3056
    :cond_3
    iget-object v0, v1, Leln;->d:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 3057
    const-string/jumbo v0, "alert"

    const/4 v1, 0x0

    const-string/jumbo v2, "alert extension is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3060
    :cond_4
    iget-object v0, v1, Leln;->d:Ljava/util/Map;

    const-string/jumbo v2, "action"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3061
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3062
    const-string/jumbo v0, "alert"

    const/4 v1, 0x0

    const-string/jumbo v2, "alert url is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3066
    :cond_5
    iget-object v0, v1, Leln;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v3, Lelm;->a:Ljava/util/HashSet;

    iget-object v4, v1, Leln;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3067
    const-string/jumbo v0, "alert"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alert uuid is exist:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Leln;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3069
    :cond_6
    iget-object v0, v1, Leln;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3070
    iget-object v0, v3, Lelm;->a:Ljava/util/HashSet;

    iget-object v3, v1, Leln;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3073
    :cond_7
    iget-object v0, v1, Leln;->f:Ljava/lang/Long;

    .line 4044
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3074
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_8

    .line 3075
    const-string/jumbo v0, "alert"

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alert is expire time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3079
    :cond_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    iget-object v3, v1, Leln;->a:Ljava/lang/String;

    iget-object v4, v1, Leln;->b:Ljava/lang/String;

    iget-object v5, v1, Leln;->d:Ljava/util/Map;

    .line 4309
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4310
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 4313
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 4314
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 4318
    :goto_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v4

    invoke-virtual {v4}, Lccq;->a()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4319
    const-string/jumbo v0, "alert"

    const/4 v1, 0x0

    const-string/jumbo v2, "show alert notification disabled"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4323
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4328
    iget v4, v0, Lekg;->h:I

    const/16 v7, 0x7a8

    if-ge v4, v7, :cond_c

    .line 4329
    const/16 v4, 0x7a8

    iput v4, v0, Lekg;->h:I

    .line 4333
    :goto_4
    iget v4, v0, Lekg;->h:I

    const/16 v7, 0x7aa

    if-le v4, v7, :cond_a

    .line 4334
    const/16 v4, 0x7a8

    iput v4, v0, Lekg;->h:I

    .line 4338
    :cond_a
    :try_start_0
    iget-object v4, v0, Lekg;->a:Landroid/content/Context;

    sget-object v7, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Message:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v7}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;

    move-result-object v4

    .line 4341
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4342
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f020dfe

    invoke-static {v3, v7}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f020dff

    .line 4343
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, -0xffff01

    const/16 v7, 0x3e8

    const/16 v8, 0x3e8

    invoke-virtual {v1, v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4346
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4347
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4348
    iget-object v1, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4349
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4351
    if-eqz v5, :cond_b

    .line 4352
    const-string/jumbo v1, "bizType"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4353
    const-string/jumbo v2, "bizData"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 4355
    const-string/jumbo v5, "bizType"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4356
    const-string/jumbo v5, "bizData"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4357
    const-string/jumbo v5, "alert"

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "show alert record bizType:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    const-string/jumbo v9, " bizData:"

    aput-object v9, v8, v1

    const/4 v1, 0x3

    aput-object v2, v8, v1

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    :cond_b
    :goto_5
    iget-object v1, v0, Lekg;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v1, v2, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4364
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4365
    invoke-virtual {v0, v4}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 4366
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4368
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v1

    invoke-virtual {v1}, Lcmp;->d()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lekg;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4369
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4370
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->d()Lchj;

    move-result-object v1

    invoke-virtual {v1}, Lchj;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4371
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->d()Lchj;

    move-result-object v1

    .line 5029
    iget v1, v1, Lchj;->a:I

    .line 4373
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lccq;->a(II)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v4, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4384
    :goto_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, v0, Lekg;->h:I

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lekg;->a(ILjava/lang/String;ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4385
    :catch_0
    move-exception v0

    .line 4386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 4331
    :cond_c
    iget v4, v0, Lekg;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lekg;->h:I

    goto/16 :goto_4

    .line 4359
    :cond_d
    :try_start_1
    const-string/jumbo v1, "alert"

    const/4 v2, 0x0

    const-string/jumbo v5, "show alert record bizType or bizData is null"

    invoke-static {v1, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4375
    :cond_e
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V

    .line 4376
    const-string/jumbo v1, "alert"

    const/4 v2, 0x0

    const-string/jumbo v3, "show alert disable sound"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4379
    :cond_f
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V

    .line 4380
    const-string/jumbo v1, "alert"

    const/4 v2, 0x0

    const-string/jumbo v3, "show alert silence or in interval"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 6014
    :cond_10
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    goto/16 :goto_0

    :cond_11
    move-object v3, v4

    goto/16 :goto_3

    :cond_12
    move-object v1, v3

    goto/16 :goto_2
.end method
