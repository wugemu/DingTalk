.class public final Lkpl$3;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Z

.field final synthetic c:Lkpl;


# direct methods
.method public constructor <init>(Lkpl;[BZ)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lkpl$3;->c:Lkpl;

    iput-object p2, p0, Lkpl$3;->a:[B

    iput-boolean p3, p0, Lkpl$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    .line 365
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lkpl$3;->a:[B

    const-string/jumbo v7, "utf-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 366
    .local v4, "message":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 367
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "agoo_fail_ack"

    const-string/jumbo v8, "msg==null"

    const-wide/16 v10, 0x0

    invoke-static {v6, v7, v8, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 405
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 370
    .restart local v4    # "message":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "AgooFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "message = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    .local v3, "json":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 373
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v6, "api"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "api":Ljava/lang/String;
    const-string/jumbo v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v6, "agooReport"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 376
    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    :cond_2
    const-string/jumbo v6, "agooAck"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 379
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "agoo_success_ack"

    const-string/jumbo v8, "handlerACKMessage"

    const-wide/16 v10, 0x0

    invoke-static {v6, v7, v8, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 381
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 382
    :cond_4
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "agoo_fail_ack"

    const-string/jumbo v8, "json key null"

    const-wide/16 v10, 0x0

    invoke-static {v6, v7, v8, v10, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "AgooFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateMsg get data error,e="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "agoo_fail_ack"

    const-string/jumbo v8, "json exception"

    invoke-static {v6, v7, v8, v12, v13}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 385
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "api":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v6, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v6}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 386
    const-string/jumbo v6, "AgooFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateMsg data begin,api="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",reportTimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lkpl;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lkph;->a(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_6
    const-string/jumbo v6, "agooReport"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 389
    const-string/jumbo v6, "4"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lkpl$3;->b:Z

    if-eqz v6, :cond_8

    .line 391
    iget-object v6, p0, Lkpl$3;->c:Lkpl;

    invoke-static {v6}, Lkpl;->a(Lkpl;)Lorg/android/agoo/message/MessageService;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v2, v7}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_7
    :goto_1
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "agoo_success_ack"

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v5, v8, v9}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 392
    :cond_8
    const-string/jumbo v6, "8"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "9"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_9
    iget-boolean v6, p0, Lkpl$3;->b:Z

    if-eqz v6, :cond_7

    .line 395
    iget-object v6, p0, Lkpl$3;->c:Lkpl;

    invoke-static {v6}, Lkpl;->a(Lkpl;)Lorg/android/agoo/message/MessageService;

    move-result-object v6

    const-string/jumbo v7, "100"

    invoke-virtual {v6, v2, v7}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
