.class final Lrx/internal/operators/OperatorReplay$b;
.super Llgy;
.source "OperatorReplay.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final c:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final d:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field final a:Lrx/internal/operators/OperatorReplay$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field volatile e:Z

.field final f:Llil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llil",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field g:[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field i:J

.field final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field k:Z

.field l:Z

.field m:J

.field n:J

.field volatile o:Llgu;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$b;->c:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 324
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$b;->d:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorReplay$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    .local p1, "buffer":Lrx/internal/operators/OperatorReplay$a;, "Lrx/internal/operators/OperatorReplay$a<TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 362
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    .line 363
    new-instance v0, Llil;

    invoke-direct {v0}, Llil;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 364
    sget-object v0, Lrx/internal/operators/OperatorReplay$b;->c:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->g:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 365
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 368
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorReplay$b;->a(J)V

    .line 369
    return-void
.end method

.method private a(JJ)V
    .locals 11
    .param p1, "maxTotalRequests"    # J
    .param p3, "previousTotalRequests"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    const-wide/16 v8, 0x0

    .line 582
    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$b;->n:J

    .line 583
    .local v6, "ur":J
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$b;->o:Llgu;

    .line 585
    .local v2, "p":Llgu;
    sub-long v0, p1, p3

    .line 586
    .local v0, "diff":J
    cmp-long v3, v0, v8

    if-eqz v3, :cond_4

    .line 587
    iput-wide p1, p0, Lrx/internal/operators/OperatorReplay$b;->m:J

    .line 588
    if-eqz v2, :cond_2

    .line 589
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 590
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$b;->n:J

    .line 591
    add-long v8, v6, v0

    invoke-interface {v2, v8, v9}, Llgu;->request(J)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-interface {v2, v0, v1}, Llgu;->request(J)V

    goto :goto_0

    .line 597
    :cond_2
    add-long v4, v6, v0

    .line 598
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    .line 599
    const-wide v4, 0x7fffffffffffffffL

    .line 601
    :cond_3
    iput-wide v4, p0, Lrx/internal/operators/OperatorReplay$b;->n:J

    goto :goto_0

    .line 605
    .end local v4    # "u":J
    :cond_4
    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 606
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$b;->n:J

    .line 608
    invoke-interface {v2, v6, v7}, Llgu;->request(J)V

    goto :goto_0
.end method

.method private c()[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 571
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    monitor-enter v4

    .line 572
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 1208
    iget-object v0, v3, Llil;->e:[Ljava/lang/Object;

    .line 573
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 575
    .local v1, "n":I
    new-array v2, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 576
    .local v2, "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    monitor-exit v4

    return-object v2

    .line 578
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "n":I
    .end local v2    # "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private d()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    const/4 v5, 0x0

    .line 617
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$b;->g:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 618
    .local v3, "pc":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$b;->i:J

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$b;->h:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 619
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    monitor-enter v6

    .line 620
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$b;->g:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 623
    iget-object v7, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 2208
    iget-object v0, v7, Llil;->e:[Ljava/lang/Object;

    .line 624
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    .line 625
    .local v2, "n":I
    array-length v7, v3

    if-eq v7, v2, :cond_0

    .line 626
    new-array v3, v2, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 627
    iput-object v3, p0, Lrx/internal/operators/OperatorReplay$b;->g:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 629
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$b;->h:J

    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$b;->i:J

    .line 631
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "n":I
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    .line 634
    .local v1, "b":Lrx/internal/operators/OperatorReplay$a;, "Lrx/internal/operators/OperatorReplay$a<TT;>;"
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v4, v3, v5

    .line 635
    .local v4, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v4, :cond_2

    .line 636
    invoke-interface {v1, v4}, Lrx/internal/operators/OperatorReplay$a;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 634
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "b":Lrx/internal/operators/OperatorReplay$a;, "Lrx/internal/operators/OperatorReplay$a<TT;>;"
    .end local v4    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 639
    .restart local v1    # "b":Lrx/internal/operators/OperatorReplay$a;, "Lrx/internal/operators/OperatorReplay$a<TT;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Llgu;)V
    .locals 3
    .param p1, "p"    # Llgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 439
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->o:Llgu;

    .line 440
    .local v0, "p0":Llgu;
    if-eqz v0, :cond_0

    .line 441
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$b;->o:Llgu;

    .line 444
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$b;->b(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 445
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$b;->d()V

    .line 446
    return-void
.end method

.method final a(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v0, 0x0

    .line 402
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$b;->e:Z

    if-eqz v1, :cond_0

    .line 413
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    monitor-enter v4

    .line 406
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$b;->e:Z

    if-eqz v1, :cond_1

    .line 407
    monitor-exit v4

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 410
    :cond_1
    :try_start_1
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 1067
    iget-object v1, v5, Llil;->e:[Ljava/lang/Object;

    .line 1068
    iget v2, v5, Llil;->b:I

    .line 1070
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Llil;->a(I)I

    move-result v0

    and-int/2addr v0, v2

    .line 1071
    aget-object v3, v1, v0

    .line 1072
    if-eqz v3, :cond_4

    .line 1073
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 411
    :cond_2
    :goto_1
    iget-wide v0, p0, Lrx/internal/operators/OperatorReplay$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorReplay$b;->h:J

    .line 412
    monitor-exit v4

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 1077
    :cond_3
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    .line 1078
    aget-object v3, v1, v0

    .line 1079
    if-eqz v3, :cond_4

    .line 1082
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1087
    :cond_4
    aput-object p1, v1, v0

    .line 1088
    iget v0, v5, Llil;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Llil;->c:I

    iget v1, v5, Llil;->d:I

    if-lt v0, v1, :cond_2

    .line 1167
    iget-object v6, v5, Llil;->e:[Ljava/lang/Object;

    .line 1168
    array-length v2, v6

    .line 1169
    shl-int/lit8 v7, v2, 0x1

    .line 1170
    add-int/lit8 v8, v7, -0x1

    .line 1172
    new-array v0, v7, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1175
    iget v1, v5, Llil;->c:I

    move v10, v1

    move v1, v2

    move v2, v10

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_7

    .line 1176
    :goto_3
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v6, v2

    if-eqz v1, :cond_8

    .line 1177
    aget-object v1, v6, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Llil;->a(I)I

    move-result v1

    and-int/2addr v1, v8

    .line 1178
    aget-object v9, v0, v1

    if-eqz v9, :cond_6

    .line 1180
    :cond_5
    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v8

    .line 1181
    aget-object v9, v0, v1

    if-nez v9, :cond_5

    .line 1186
    :cond_6
    aget-object v9, v6, v2

    aput-object v9, v0, v1

    move v1, v2

    move v2, v3

    .line 1187
    goto :goto_2

    .line 1189
    :cond_7
    iput v8, v5, Llil;->b:I

    .line 1190
    int-to-float v1, v7

    iget v2, v5, Llil;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v5, Llil;->d:I

    .line 1191
    iput-object v0, v5, Llil;->e:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method final b()V
    .locals 1

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$b$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$b$1;-><init>(Lrx/internal/operators/OperatorReplay$b;)V

    invoke-static {v0}, Llkz;->a(Llhf;)Llgz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$b;->a(Llgz;)V

    .line 391
    return-void
.end method

.method final b(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v9, 0x0

    .line 489
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$b;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    monitor-enter p0

    .line 493
    :try_start_0
    iget-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->k:Z

    if-eqz v8, :cond_4

    .line 494
    if-eqz p1, :cond_3

    .line 495
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$b;->p:Ljava/util/List;

    .line 496
    .local v4, "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    if-nez v4, :cond_2

    .line 497
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .restart local v4    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    iput-object v4, p0, Lrx/internal/operators/OperatorReplay$b;->p:Ljava/util/List;

    .line 500
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v4    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->l:Z

    .line 505
    monitor-exit p0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 502
    :cond_3
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->q:Z

    goto :goto_1

    .line 507
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->k:Z

    .line 508
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$b;->m:J

    .line 513
    .local v6, "ri":J
    if-eqz p1, :cond_6

    .line 514
    iget-object v8, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 526
    .local v2, "maxTotalRequested":J
    :cond_5
    invoke-direct {p0, v2, v3, v6, v7}, Lrx/internal/operators/OperatorReplay$b;->a(JJ)V

    .line 530
    :goto_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$b;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 536
    monitor-enter p0

    .line 537
    :try_start_2
    iget-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->l:Z

    if-nez v8, :cond_8

    .line 538
    const/4 v8, 0x0

    iput-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->k:Z

    .line 539
    monitor-exit p0

    goto :goto_0

    .line 546
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 516
    .end local v2    # "maxTotalRequested":J
    :cond_6
    move-wide v2, v6

    .line 518
    .restart local v2    # "maxTotalRequested":J
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$b;->c()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 519
    .local v0, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    array-length v10, v0

    move v8, v9

    :goto_3
    if-ge v8, v10, :cond_5

    aget-object v5, v0, v8

    .line 520
    .local v5, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v5, :cond_7

    .line 521
    iget-object v11, v5, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 519
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 541
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v5    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_8
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->l:Z

    .line 542
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$b;->p:Ljava/util/List;

    .line 543
    .restart local v4    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    const/4 v8, 0x0

    iput-object v8, p0, Lrx/internal/operators/OperatorReplay$b;->p:Ljava/util/List;

    .line 544
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$b;->q:Z

    .line 545
    .local v1, "all":Z
    const/4 v8, 0x0

    iput-boolean v8, p0, Lrx/internal/operators/OperatorReplay$b;->q:Z

    .line 546
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 548
    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$b;->m:J

    .line 549
    move-wide v2, v6

    .line 551
    if-eqz v4, :cond_9

    .line 552
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 553
    .restart local v5    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v10, v5, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 554
    goto :goto_4

    .line 557
    .end local v5    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_9
    if-eqz v1, :cond_b

    .line 558
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$b;->c()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 559
    .restart local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    array-length v10, v0

    move v8, v9

    :goto_5
    if-ge v8, v10, :cond_b

    aget-object v5, v0, v8

    .line 560
    .restart local v5    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v5, :cond_a

    .line 561
    iget-object v11, v5, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 559
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 566
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v5    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_b
    invoke-direct {p0, v2, v3, v6, v7}, Lrx/internal/operators/OperatorReplay$b;->a(JJ)V

    goto/16 :goto_2
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 473
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$b;->b:Z

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$b;->b:Z

    .line 476
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    invoke-interface {v0}, Lrx/internal/operators/OperatorReplay$a;->complete()V

    .line 477
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$b;->unsubscribe()V

    .line 482
    :cond_0
    return-void

    .line 479
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$b;->unsubscribe()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 459
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$b;->b:Z

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$b;->b:Z

    .line 462
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$a;->error(Ljava/lang/Throwable;)V

    .line 463
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$b;->unsubscribe()V

    .line 468
    :cond_0
    return-void

    .line 465
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$b;->unsubscribe()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$b;->b:Z

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$a;->next(Ljava/lang/Object;)V

    .line 452
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$b;->d()V

    .line 454
    :cond_0
    return-void
.end method
