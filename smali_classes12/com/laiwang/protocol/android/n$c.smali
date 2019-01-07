.class Lcom/laiwang/protocol/android/n$c;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/n;

.field private b:Lcom/laiwang/protocol/core/Request;

.field private c:Z

.field private d:I


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;)V
    .locals 6
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/n;
    .param p2, "request"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    const/4 v5, 0x0

    const-wide/16 v2, 0x4e20

    .line 482
    iput-object p1, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeout-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Request;->getTimeout()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move-wide v0, v2

    :goto_0
    invoke-direct {p0, v4, v0, v1}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 480
    iput-boolean v5, p0, Lcom/laiwang/protocol/android/n$c;->c:Z

    .line 481
    iput v5, p0, Lcom/laiwang/protocol/android/n$c;->d:I

    .line 484
    iput-object p2, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    .line 485
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Request;->getTimeout()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/n$c;->c:Z

    .line 488
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/attribute/Attributes;->TIMEOUT_TASK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p2, v0}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 489
    return-void

    .line 483
    :cond_1
    invoke-virtual {p2}, Lcom/laiwang/protocol/core/Request;->getTimeout()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 493
    iget-boolean v3, p0, Lcom/laiwang/protocol/android/n$c;->c:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/laiwang/protocol/android/n$c;->d:I

    if-gtz v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v3, v3, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/core/Request;

    .line 496
    .local v2, "re":Lcom/laiwang/protocol/core/Request;
    if-nez v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string/jumbo v3, "[lwp] req %s timeout %d"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request;->getTimeout()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v4, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;)V

    .line 502
    iget v3, p0, Lcom/laiwang/protocol/android/n$c;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/laiwang/protocol/android/n$c;->d:I

    .line 503
    const-wide/16 v4, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Request;->getTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x4e20

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/laiwang/protocol/android/n$c;->setDelay(J)V

    .line 504
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v3, v3, Lcom/laiwang/protocol/android/n;->d:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v3, p0}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0

    .line 506
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "re":Lcom/laiwang/protocol/core/Request;
    :cond_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v1

    .line 507
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v3, v3, Lcom/laiwang/protocol/android/n;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/core/Request;

    .line 508
    .restart local v2    # "re":Lcom/laiwang/protocol/core/Request;
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v3, v3, Lcom/laiwang/protocol/android/n;->i:Ljava/util/List;

    iget-object v4, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    if-eqz v2, :cond_0

    .line 513
    const-string/jumbo v3, "[lwp] req %s timeout %d"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request;->getTimeout()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v3, v3, Lcom/laiwang/protocol/android/n;->a:Lcom/laiwang/protocol/android/bf;

    iget-object v4, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/android/bf;->b(Lcom/laiwang/protocol/android/bd;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 515
    const-string/jumbo v3, "[Request] not send and timeout %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    :cond_3
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->TIMEOUT_TASK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 518
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->SEND_BY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k;

    .line 519
    .local v0, "connection":Lcom/laiwang/protocol/android/k;
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v4, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-virtual {v3, v4, v0, v5}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/core/Constants$Status;)V

    .line 520
    iget-object v3, p0, Lcom/laiwang/protocol/android/n$c;->a:Lcom/laiwang/protocol/android/n;

    iget-object v4, p0, Lcom/laiwang/protocol/android/n$c;->b:Lcom/laiwang/protocol/core/Request;

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;)V

    goto/16 :goto_0
.end method
