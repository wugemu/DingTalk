.class Lcom/laiwang/protocol/android/bx$a;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bx;

.field private final b:Lcom/laiwang/protocol/core/Request;

.field private final c:Lcom/laiwang/protocol/android/bv;

.field private final d:Lcom/laiwang/protocol/android/bv$a;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/bv;Lcom/laiwang/protocol/android/bv$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bx;
    .param p2, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p3, "upFileItem"    # Lcom/laiwang/protocol/android/bv;
    .param p4, "frag"    # Lcom/laiwang/protocol/android/bv$a;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/laiwang/protocol/android/bx$a;->b:Lcom/laiwang/protocol/core/Request;

    .line 353
    iput-object p3, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    .line 354
    iput-object p4, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    .line 355
    return-void
.end method

.method private c(Lcom/laiwang/protocol/core/Response;)V
    .locals 15
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v11

    iget v0, v11, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    .line 490
    .local v0, "code":I
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v11}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 491
    .local v9, "startLine":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v5

    .line 492
    .local v5, "payload":[B
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v11}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "uploadId":Ljava/lang/String;
    const/16 v11, 0xc8

    if-ne v11, v0, :cond_8

    .line 495
    const-string/jumbo v11, "/r/FileUpload/pre"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 496
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v11, v11, Lcom/laiwang/protocol/android/bv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 498
    const-class v11, Lcom/laiwang/protocol/android/cf;

    invoke-static {v5, v11}, Lcom/laiwang/protocol/android/by;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/laiwang/protocol/android/cf;

    .line 499
    .local v6, "preResponse":Lcom/laiwang/protocol/android/cf;
    if-nez v6, :cond_1

    .line 500
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[upload_ng] "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " prepare response empty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 501
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 502
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 595
    .end local v6    # "preResponse":Lcom/laiwang/protocol/android/cf;
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local v6    # "preResponse":Lcom/laiwang/protocol/android/cf;
    :cond_1
    iget-object v10, v6, Lcom/laiwang/protocol/android/cf;->a:Ljava/lang/String;

    .line 506
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v11, v10}, Lcom/laiwang/protocol/android/bv;->b(Ljava/lang/String;)V

    .line 507
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v12, v6, Lcom/laiwang/protocol/android/cf;->c:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->b(I)V

    .line 508
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v12, v6, Lcom/laiwang/protocol/android/cf;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v11, "[upload_ng] %s new task id %s, frag size %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v6, Lcom/laiwang/protocol/android/cf;->a:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    .line 511
    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->q()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 510
    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    .end local v6    # "preResponse":Lcom/laiwang/protocol/android/cf;
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I

    move-result v8

    .line 542
    .local v8, "sendSize":I
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v11}, Lcom/laiwang/protocol/android/bv;->q()I

    move-result v11

    if-lez v11, :cond_0

    if-gtz v8, :cond_0

    .line 543
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laiwang/protocol/android/bv;

    .line 544
    .local v4, "item":Lcom/laiwang/protocol/android/bv;
    invoke-virtual {v4}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 545
    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v12, v4}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I

    move-result v8

    .line 546
    if-lez v8, :cond_3

    goto :goto_0

    .line 513
    .end local v4    # "item":Lcom/laiwang/protocol/android/bv;
    .end local v8    # "sendSize":I
    :cond_4
    const-string/jumbo v11, "/r/FileUpload/frag"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 514
    const-class v11, Lcom/laiwang/protocol/android/cd;

    invoke-static {v5, v11}, Lcom/laiwang/protocol/android/by;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/android/cd;

    .line 515
    .local v3, "fragResponse":Lcom/laiwang/protocol/android/cd;
    if-nez v3, :cond_5

    .line 516
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[upload_ng] "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " frag response empty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 517
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 518
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto/16 :goto_0

    .line 521
    :cond_5
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget v12, v12, Lcom/laiwang/protocol/android/bv$a;->a:I

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(I)V

    .line 522
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget-object v11, v11, Lcom/laiwang/protocol/android/bv$a;->b:[B

    array-length v2, v11

    .line 523
    .local v2, "fragLen":I
    const-string/jumbo v11, "[upload_ng] %s, request %s frag %s, size %s done"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget v14, v14, Lcom/laiwang/protocol/android/bv$a;->a:I

    .line 524
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 523
    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget v12, v12, Lcom/laiwang/protocol/android/bv$a;->a:I

    invoke-virtual {v11, v12, v2}, Lcom/laiwang/protocol/android/bv;->a(II)V

    goto/16 :goto_1

    .line 526
    .end local v2    # "fragLen":I
    .end local v3    # "fragResponse":Lcom/laiwang/protocol/android/cd;
    :cond_6
    const-string/jumbo v11, "/r/FileUpload/ci"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 527
    const-class v11, Lcom/laiwang/protocol/android/ca;

    invoke-static {v5, v11}, Lcom/laiwang/protocol/android/by;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/ca;

    .line 528
    .local v1, "commitResponse":Lcom/laiwang/protocol/android/ca;
    if-nez v1, :cond_7

    .line 529
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[upload_ng] "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " commit response empty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 530
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 531
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto/16 :goto_0

    .line 534
    :cond_7
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 535
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v1}, Lcom/laiwang/protocol/android/by;->a(Lcom/laiwang/protocol/android/ca;)Lcom/laiwang/protocol/upload/UploadResult;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/UploadResult;)V

    .line 536
    const-string/jumbo v11, "[upload_ng] %s, commit finished"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bx$a;->a()V

    goto/16 :goto_0

    .line 549
    .end local v1    # "commitResponse":Lcom/laiwang/protocol/android/ca;
    :cond_8
    const/16 v11, 0x198

    if-eq v11, v0, :cond_9

    const/16 v11, 0x258

    if-ne v11, v0, :cond_c

    .line 550
    :cond_9
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v11}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 551
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 552
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_CANCEL:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 553
    const-string/jumbo v11, "[upload_ng] %s %s, upload is canceled"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 554
    :cond_a
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v11, v11, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    const/4 v12, 0x5

    if-ge v11, v12, :cond_b

    .line 555
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v11, v11, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 556
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->b:Lcom/laiwang/protocol/core/Request;

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v13

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v11, v12, v13, p0, v14}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V

    .line 557
    const-string/jumbo v11, "[upload_ng] %s %s, retry %s times"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v14, v14, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 557
    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 560
    :cond_b
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 561
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_TIMEOUT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 562
    const-string/jumbo v11, "[upload_ng] %s %s, retry greater than 5 times, just failed"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v14}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 563
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 562
    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    :goto_2
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bx$a;->a()V

    goto/16 :goto_0

    .line 566
    :cond_c
    const/16 v11, 0xc8

    if-le v0, v11, :cond_0

    .line 567
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 568
    const-string/jumbo v11, "[upload_ng] %s %s already failed"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 571
    :cond_d
    const-class v11, Lcom/laiwang/idl/service/ResultError;

    invoke-static {v5, v11}, Lcom/laiwang/protocol/android/by;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/laiwang/idl/service/ResultError;

    .line 572
    .local v7, "resultError":Lcom/laiwang/idl/service/ResultError;
    if-nez v7, :cond_e

    .line 573
    const-string/jumbo v11, "[upload_ng] %s %s response code %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 575
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 576
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bx$a;->a()V

    goto/16 :goto_0

    .line 579
    :cond_e
    const-string/jumbo v11, "[upload_ng] %s %s, response code %s, error %s %s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, v7, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    iget-object v14, v7, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 579
    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    const-string/jumbo v11, "4004"

    iget-object v12, v7, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 582
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v11}, Lcom/laiwang/protocol/android/bv;->r()V

    .line 583
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v11, v11, Lcom/laiwang/protocol/android/bv;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 584
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 585
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_SERVER_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto/16 :goto_2

    .line 586
    :cond_f
    const-string/jumbo v11, "5000"

    iget-object v12, v7, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 587
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_RETRY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto/16 :goto_2

    .line 590
    :cond_10
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 591
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v12, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_SERVER_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v11, v12}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto/16 :goto_2
.end method


# virtual methods
.method a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bx;->d(Lcom/laiwang/protocol/android/bx;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bx;->e(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/bv;

    .line 602
    .local v0, "newItem":Lcom/laiwang/protocol/android/bv;
    if-eqz v0, :cond_0

    .line 603
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/bx;->d(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V

    .line 605
    const-string/jumbo v1, "[upload] %s %s, upload again"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .end local v0    # "newItem":Lcom/laiwang/protocol/android/bv;
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v1}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v2}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v0, v0, Lcom/laiwang/protocol/android/bv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 361
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bx$a;->b(Lcom/laiwang/protocol/core/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v0, v0, Lcom/laiwang/protocol/android/bv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v1, v1, Lcom/laiwang/protocol/android/bv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method b(Lcom/laiwang/protocol/core/Response;)V
    .locals 14
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v10

    iget v0, v10, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    .line 369
    .local v0, "code":I
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v10}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 370
    .local v5, "startLine":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->payload()[B

    move-result-object v3

    .line 371
    .local v3, "payload":[B
    const/4 v1, 0x0

    .line 372
    .local v1, "fragLen":I
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget-object v10, v10, Lcom/laiwang/protocol/android/bv$a;->b:[B

    if-eqz v10, :cond_0

    .line 373
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget-object v10, v10, Lcom/laiwang/protocol/android/bv$a;->b:[B

    array-length v1, v10

    .line 375
    :cond_0
    if-lez v1, :cond_1

    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-boolean v10, v10, Lcom/laiwang/protocol/android/bv;->c:Z

    if-nez v10, :cond_1

    .line 376
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 378
    :try_start_0
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;)I

    move-result v11

    sub-int/2addr v11, v1

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    const-string/jumbo v10, "[upload] %s, upload response code %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    :cond_1
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 385
    const-string/jumbo v10, "[upload] %s %s, upload file not in sending"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    :cond_2
    :goto_0
    return-void

    .line 380
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v10

    .line 389
    :cond_3
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v10}, Lcom/laiwang/protocol/android/bv;->k()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 390
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx$a;->c(Lcom/laiwang/protocol/core/Response;)V

    goto :goto_0

    .line 394
    :cond_4
    const/16 v10, 0xc8

    if-ne v10, v0, :cond_f

    .line 395
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v10}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "upReqId":Ljava/lang/String;
    const-string/jumbo v10, "up-resp"

    invoke-virtual {p1, v10}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/laiwang/protocol/android/by;->a(Ljava/lang/String;[B)Lcom/laiwang/protocol/android/bw;

    move-result-object v9

    .line 400
    .local v9, "upResponse":Lcom/laiwang/protocol/android/bw;
    invoke-virtual {v9}, Lcom/laiwang/protocol/android/bw;->a()Ljava/lang/String;

    move-result-object v8

    .line 402
    .local v8, "upRespId":Ljava/lang/String;
    const-string/jumbo v10, "uip"

    invoke-virtual {p1, v10}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_5

    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/laiwang/protocol/android/bv;->a(J)V

    .line 404
    :cond_5
    const-string/jumbo v10, "/up/pre"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 405
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v10, v10, Lcom/laiwang/protocol/android/bv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 408
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 410
    :cond_7
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v10, v8}, Lcom/laiwang/protocol/android/bv;->b(Ljava/lang/String;)V

    .line 411
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v9}, Lcom/laiwang/protocol/android/bw;->b()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->b(I)V

    .line 412
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v10}, Lcom/laiwang/protocol/android/bv;->r()V

    .line 413
    const-string/jumbo v10, "[upload] %s %s, new task id %s, frag size %d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    .line 414
    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v8, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->q()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 413
    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    const-string/jumbo v10, "/up/ci"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 416
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v10, v10, Lcom/laiwang/protocol/android/bv;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 418
    :cond_8
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget v10, v10, Lcom/laiwang/protocol/android/bv;->a:I

    const/4 v11, 0x3

    if-le v10, v11, :cond_b

    .line 419
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v11, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_RETRY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 420
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 423
    :cond_9
    const-string/jumbo v10, "/up/ci"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 425
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v9}, Lcom/laiwang/protocol/android/by;->a(Lcom/laiwang/protocol/android/bw;)Lcom/laiwang/protocol/upload/UploadResult;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/UploadResult;)V

    .line 426
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 427
    const-string/jumbo v10, "[upload] %s, commit finished"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bx$a;->a()V

    goto/16 :goto_0

    .line 432
    :cond_a
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget v11, v11, Lcom/laiwang/protocol/android/bv$a;->a:I

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->a(I)V

    .line 433
    const-string/jumbo v10, "[upload] %s, request %s frag %s, size %d done"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget v13, v13, Lcom/laiwang/protocol/android/bv$a;->a:I

    .line 434
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 433
    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->d:Lcom/laiwang/protocol/android/bv$a;

    iget v11, v11, Lcom/laiwang/protocol/android/bv$a;->a:I

    invoke-virtual {v10, v11, v1}, Lcom/laiwang/protocol/android/bv;->a(II)V

    .line 437
    :cond_b
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-boolean v10, v10, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-boolean v10, v10, Lcom/laiwang/protocol/android/bv;->g:Z

    if-nez v10, :cond_c

    const-string/jumbo v10, "/up/pre"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 438
    const-string/jumbo v10, "[upload] %s, request stream %s commit %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-boolean v13, v13, Lcom/laiwang/protocol/android/bv;->c:Z

    .line 439
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-boolean v13, v13, Lcom/laiwang/protocol/android/bv;->g:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    .line 438
    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V

    goto/16 :goto_0

    .line 442
    :cond_c
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-boolean v10, v10, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v10, :cond_d

    .line 443
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I

    goto/16 :goto_0

    .line 446
    :cond_d
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I

    move-result v4

    .line 447
    .local v4, "sendSize":I
    if-lez v1, :cond_2

    if-gtz v4, :cond_2

    .line 448
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/bv;

    .line 449
    .local v2, "item":Lcom/laiwang/protocol/android/bv;
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v12}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 450
    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v11, v2}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I

    move-result v4

    .line 451
    if-lez v4, :cond_e

    goto/16 :goto_0

    .line 456
    .end local v2    # "item":Lcom/laiwang/protocol/android/bv;
    .end local v4    # "sendSize":I
    .end local v6    # "tmp":Ljava/lang/String;
    .end local v7    # "upReqId":Ljava/lang/String;
    .end local v8    # "upRespId":Ljava/lang/String;
    .end local v9    # "upResponse":Lcom/laiwang/protocol/android/bw;
    :cond_f
    const-string/jumbo v11, "[upload] %s, commit response code %s, %s, upIdx %s"

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v10, 0x1

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v13, 0x2

    if-eqz v3, :cond_10

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V

    :goto_1
    aput-object v10, v12, v13

    const/4 v10, 0x3

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->t()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    .line 456
    invoke-static {v11, v12}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 459
    const-string/jumbo v10, "[upload] %s %s already failed"

    invoke-static {v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_10
    const-string/jumbo v10, ""

    goto :goto_1

    .line 462
    :cond_11
    const/16 v10, 0x198

    if-eq v10, v0, :cond_12

    const/16 v10, 0x258

    if-ne v10, v0, :cond_15

    .line 463
    :cond_12
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v10}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 464
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v11, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_CANCEL:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 466
    const-string/jumbo v10, "[upload] %s %s, upload is canceled"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 467
    :cond_13
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v10, v10, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_14

    .line 468
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v10, v10, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 469
    const-string/jumbo v10, "[upload] %s %s, retry %s times"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    iget-object v13, v13, Lcom/laiwang/protocol/android/bv;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 469
    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->b:Lcom/laiwang/protocol/core/Request;

    iget-object v12, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v12}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v12

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-static {v10, v11, v12, p0, v13}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V

    goto/16 :goto_0

    .line 473
    :cond_14
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v11, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_TIMEOUT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 475
    const-string/jumbo v10, "[upload] %s %s, retry greater than 5 times, just failed"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bx$a;->a()V

    goto/16 :goto_0

    .line 479
    :cond_15
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->a:Lcom/laiwang/protocol/android/bx;

    invoke-static {v10}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    const-string/jumbo v10, "[upload] %s %s %s, just failed"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v13}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 480
    invoke-static {v10, v11}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v10, p0, Lcom/laiwang/protocol/android/bx$a;->c:Lcom/laiwang/protocol/android/bv;

    sget-object v11, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_SERVER_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {v10, v11}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 483
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bx$a;->a()V

    goto/16 :goto_0
.end method

.method public synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bx$a;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
