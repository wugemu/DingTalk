.class final Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeAndTimeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:J

.field volatile c:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field e:I

.field volatile f:Z

.field g:Ljava/lang/Throwable;


# direct methods
.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 3130
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1024
    iget-wide v8, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->b:J

    sub-long v4, v6, v8

    .line 1026
    .local v4, "now":J
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1027
    .local v1, "h0":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    move-object v0, v1

    .line 1030
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v2, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v2, :cond_0

    .line 1031
    iget-wide v6, v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_0

    .line 1034
    move-object v0, v2

    goto :goto_0

    .line 1037
    :cond_0
    if-eq v1, v0, :cond_1

    .line 1038
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1040
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1019
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-direct {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->b()V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->f:Z

    .line 1021
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 2130
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 981
    .local v4, "now":J
    new-instance v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-direct {v2, p1, v4, v5}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 982
    .local v2, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->d:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-virtual {v6, v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->set(Ljava/lang/Object;)V

    .line 983
    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->d:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 985
    iget-wide v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->b:J

    sub-long/2addr v4, v6

    .line 987
    iget v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->e:I

    .line 988
    .local v3, "s":I
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 989
    .local v1, "h0":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    move-object v0, v1

    .line 991
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iget v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->a:I

    if-ne v3, v6, :cond_0

    .line 992
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 997
    .restart local v0    # "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .restart local v2    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v2, :cond_1

    .line 998
    iget-wide v6, v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_1

    .line 1001
    move-object v0, v2

    .line 1002
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 994
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    iput v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->e:I

    .line 1006
    if-eq v0, v1, :cond_2

    .line 1007
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1009
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1012
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-direct {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->b()V

    .line 1013
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->g:Ljava/lang/Throwable;

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->f:Z

    .line 1015
    return-void
.end method

.method public final a(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1061
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Llgy;

    .line 1063
    .local v2, "a":Llgy;, "Llgy<-TT;>;"
    const/4 v8, 0x1

    .line 1067
    .local v8, "missed":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 1068
    .local v12, "r":J
    const-wide/16 v4, 0x0

    .line 1071
    .local v4, "e":J
    move-object/from16 v0, p1

    iget-object v10, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v10, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1072
    .local v10, "node":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-nez v10, :cond_2

    .line 4130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 4043
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->b:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    .line 4044
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->c:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 4046
    .end local v10    # "node":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_1
    invoke-virtual {v10}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    if-eqz v11, :cond_2

    .line 4047
    iget-wide v0, v11, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v14

    if-gtz v16, :cond_2

    move-object v10, v11

    .line 4050
    goto :goto_1

    .line 1076
    .restart local v10    # "node":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_2
    :goto_2
    cmp-long v11, v4, v12

    if-eqz v11, :cond_7

    .line 1077
    invoke-virtual {v2}, Llgy;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1078
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_0

    .line 1082
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->f:Z

    .line 1083
    .local v3, "d":Z
    invoke-virtual {v10}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1084
    .local v9, "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-nez v9, :cond_4

    const/4 v6, 0x1

    .line 1086
    .local v6, "empty":Z
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    .line 1087
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1088
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->g:Ljava/lang/Throwable;

    .line 1089
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_5

    .line 1090
    invoke-virtual {v2, v7}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1084
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 1092
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto :goto_0

    .line 1097
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-nez v6, :cond_7

    .line 1101
    iget-object v11, v9, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-virtual {v2, v11}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 1103
    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    .line 1104
    move-object v10, v9

    .line 1105
    goto :goto_2

    .line 1107
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v9    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_7
    cmp-long v11, v4, v12

    if-nez v11, :cond_b

    .line 1108
    invoke-virtual {v2}, Llgy;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1109
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1113
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->f:Z

    .line 1114
    .restart local v3    # "d":Z
    invoke-virtual {v10}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_9

    const/4 v6, 0x1

    .line 1116
    .restart local v6    # "empty":Z
    :goto_4
    if-eqz v3, :cond_b

    if-eqz v6, :cond_b

    .line 1117
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1118
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->g:Ljava/lang/Throwable;

    .line 1119
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_a

    .line 1120
    invoke-virtual {v2, v7}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1114
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 1122
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto/16 :goto_0

    .line 1128
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_b
    const-wide/16 v14, 0x0

    cmp-long v11, v4, v14

    if-eqz v11, :cond_c

    .line 1129
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    .line 1130
    move-object/from16 v0, p1

    iget-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v4, v5}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1134
    :cond_c
    move-object/from16 v0, p1

    iput-object v10, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1136
    neg-int v11, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v8

    .line 1137
    if-nez v8, :cond_1

    goto/16 :goto_0
.end method
