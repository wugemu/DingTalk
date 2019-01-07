.class final Lbtb$a;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lbsy$b;

.field final synthetic b:Lbtb;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbtb;IJLjava/lang/String;Lbsy$b;)V
    .locals 1
    .param p2, "devId"    # I
    .param p3, "devUid"    # J
    .param p5, "activeCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lbsy$b;

    .prologue
    .line 419
    iput-object p1, p0, Lbtb$a;->b:Lbtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput p2, p0, Lbtb$a;->c:I

    .line 421
    iput-wide p3, p0, Lbtb$a;->d:J

    .line 422
    iput-object p5, p0, Lbtb$a;->e:Ljava/lang/String;

    .line 423
    iput-object p6, p0, Lbtb$a;->a:Lbsy$b;

    .line 424
    return-void
.end method

.method private a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;)Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    .locals 14
    .param p1, "reqModel"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 375
    new-instance v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-direct {v3}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;-><init>()V

    .line 377
    .local v3, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    .line 378
    .local v5, "socket":Ljava/net/Socket;
    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lbtb$a;->b:Lbtb;

    .line 1064
    iget-object v7, v7, Lbtb;->c:Ljava/lang/String;

    .line 378
    iget-object v8, p0, Lbtb$a;->b:Lbtb;

    .line 2064
    iget v8, v8, Lbtb;->d:I

    .line 378
    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 379
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 381
    :try_start_1
    new-instance v4, Lbsq;

    const/4 v6, 0x3

    invoke-direct {v4, v6, p1}, Lbsq;-><init>(ILjava/lang/Object;)V

    .line 382
    .local v4, "out":Lbsq;
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v4, v6}, Lbsr;->a(Lbsq;Ljava/io/OutputStream;)V

    .line 383
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lbsr;->a(Ljava/io/InputStream;)Lbsq;

    move-result-object v2

    .line 384
    .local v2, "in":Lbsq;
    if-eqz v2, :cond_0

    .line 2108
    iget-object v6, v2, Lbsq;->a:Ljava/lang/Object;

    .line 385
    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    .line 386
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 416
    .end local v2    # "in":Lbsq;
    .end local v4    # "out":Lbsq;
    .end local v5    # "socket":Ljava/net/Socket;
    :goto_1
    return-object v3

    .line 388
    .restart local v2    # "in":Lbsq;
    .restart local v4    # "out":Lbsq;
    .restart local v5    # "socket":Ljava/net/Socket;
    :cond_0
    :try_start_3
    const-string/jumbo v6, "Fail"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    .line 389
    const-string/jumbo v6, "fail to read response!"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 391
    .end local v2    # "in":Lbsq;
    .end local v4    # "out":Lbsq;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_4
    const-string/jumbo v6, "Fail"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    .line 393
    const-string/jumbo v6, "request time out!"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    .line 394
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 395
    const-string/jumbo v6, "door"

    const-string/jumbo v7, "TCPBindPresenter"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "activeDevice socket timeout exception:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    :try_start_5
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 405
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v5    # "socket":Ljava/net/Socket;
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e1":Ljava/net/UnknownHostException;
    const-string/jumbo v6, "Fail"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    .line 407
    const-string/jumbo v6, "fail to read response!"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    .line 408
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 409
    const-string/jumbo v6, "door"

    const-string/jumbo v7, "TCPBindPresenter"

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "activeDevice unknown host exception:"

    aput-object v9, v8, v11

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    .end local v1    # "e1":Ljava/net/UnknownHostException;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "Fail"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    .line 398
    const-string/jumbo v6, "fail to read response!"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    const-string/jumbo v6, "door"

    const-string/jumbo v7, "TCPBindPresenter"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "activeDevice exception:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    :try_start_7
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Fail"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    .line 412
    const-string/jumbo v6, "fail to read response!"

    iput-object v6, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    .line 413
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 414
    const-string/jumbo v6, "door"

    const-string/jumbo v7, "TCPBindPresenter"

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "activeDevice io exception:"

    aput-object v9, v8, v11

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v6

    :try_start_8
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    throw v6
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 431
    .local v4, "tz":Ljava/util/TimeZone;
    iget-object v5, p0, Lbtb$a;->b:Lbtb;

    .line 3359
    invoke-static {v4}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 3360
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 3361
    const-string/jumbo v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x36ee80

    div-int v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0xea60

    div-int v9, v5, v9

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3362
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-ltz v5, :cond_0

    const-string/jumbo v5, "+"

    :goto_0
    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "timeZone":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;-><init>()V

    .line 434
    .local v2, "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    iget v5, p0, Lbtb$a;->c:I

    iput v5, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->a:I

    .line 435
    iget-object v5, p0, Lbtb$a;->e:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->b:Ljava/lang/String;

    .line 436
    iget-wide v6, p0, Lbtb$a;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->c:Ljava/lang/Long;

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->f:Ljava/lang/Long;

    .line 439
    iput-object v3, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->d:Ljava/lang/String;

    .line 440
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->e:Ljava/lang/String;

    .line 442
    invoke-direct {p0, v2}, Lbtb$a;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;)Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3453
    .end local v2    # "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    .end local v3    # "timeZone":Ljava/lang/String;
    .end local v4    # "tz":Ljava/util/TimeZone;
    :goto_1
    iget-object v5, p0, Lbtb$a;->b:Lbtb;

    new-instance v6, Lbtb$a$1;

    invoke-direct {v6, p0, v1}, Lbtb$a$1;-><init>(Lbtb$a;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V

    invoke-virtual {v5, v6}, Lbtb;->a(Ljava/lang/Runnable;)V

    .line 450
    return-void

    .line 3362
    .restart local v4    # "tz":Ljava/util/TimeZone;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "-"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 444
    .end local v4    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    const-string/jumbo v5, "door"

    const-string/jumbo v6, "TCPBindPresenter"

    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "activeDevice running exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
