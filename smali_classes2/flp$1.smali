.class public final Lflp$1;
.super Ljava/lang/Object;
.source "BatchProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lflp$b;

.field final synthetic d:Lflp$a;

.field final synthetic e:Lflp;


# direct methods
.method public constructor <init>(Lflp;Ljava/util/List;ILflp$b;Lflp$a;)V
    .locals 0
    .param p1, "this$0"    # Lflp;

    .prologue
    .line 129
    .local p0, "this":Lflp$1;, "Lflp$1;"
    iput-object p1, p0, Lflp$1;->e:Lflp;

    iput-object p2, p0, Lflp$1;->a:Ljava/util/List;

    iput p3, p0, Lflp$1;->b:I

    iput-object p4, p0, Lflp$1;->c:Lflp$b;

    iput-object p5, p0, Lflp$1;->d:Lflp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 133
    .local p0, "this":Lflp$1;, "Lflp$1;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 135
    .local v12, "startTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lflp$1;->b:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lflp$1;->b:I

    move/from16 v16, v0

    div-int v14, v15, v16

    .line 136
    .local v14, "thread":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->e:Lflp;

    new-instance v16, Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static/range {v15 .. v16}, Lflp;->a(Lflp;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 138
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_1

    .line 139
    move v10, v8

    .line 140
    .local v10, "start":I
    move-object/from16 v0, p0

    iget v15, v0, Lflp$1;->b:I

    add-int v5, v8, v15

    .line 141
    .local v5, "end":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-le v5, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->a:Ljava/util/List;

    invoke-interface {v15, v10, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 144
    .local v11, "subLongs":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->c:Lflp$b;

    invoke-interface {v15, v11}, Lflp$b;->a(Ljava/util/List;)V

    .line 138
    move-object/from16 v0, p0

    iget v15, v0, Lflp$1;->b:I

    add-int/2addr v8, v15

    goto :goto_0

    .line 148
    .end local v5    # "end":I
    .end local v10    # "start":I
    .end local v11    # "subLongs":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->e:Lflp;

    invoke-static {v15}, Lflp;->a(Lflp;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v15

    const-wide/32 v16, 0xea60

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 155
    .local v6, "endTime":J
    sub-long v16, v6, v12

    const-wide/16 v18, 0x3e8

    div-long v2, v16, v18

    .line 156
    .local v2, "costs":J
    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "[BatchProcessor]parallelProcess competed: "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lflp$1;->a:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, " | costs time: "

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "s"

    aput-object v17, v15, v16

    invoke-static {v15}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "msg":Ljava/lang/String;
    invoke-static {}, Lflp;->a()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v9, v0}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lflp$1;->e:Lflp;

    invoke-static {v15}, Lflp;->b(Lflp;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    .line 160
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v15

    new-instance v16, Lflp$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lflp$1$1;-><init>(Lflp$1;)V

    invoke-virtual/range {v15 .. v16}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 176
    :goto_2
    return-void

    .line 149
    .end local v2    # "costs":J
    .end local v6    # "endTime":J
    .end local v9    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 150
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "[BatchProcessor]parallelProcess:  latch InterruptedException | "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .restart local v9    # "msg":Ljava/lang/String;
    invoke-static {}, Lflp;->a()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v9, v0}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 169
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "costs":J
    .restart local v6    # "endTime":J
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v15

    new-instance v16, Lflp$1$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lflp$1$2;-><init>(Lflp$1;)V

    invoke-virtual/range {v15 .. v16}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
