.class final Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;
.super Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAgeInMillis:J

.field final scheduler:Llgv;


# direct methods
.method public constructor <init>(IJLlgv;)V
    .locals 0
    .param p1, "limit"    # I
    .param p2, "maxAgeInMillis"    # J
    .param p4, "scheduler"    # Llgv;

    .prologue
    .line 1231
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;-><init>()V

    .line 1232
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Llgv;

    .line 1233
    iput p1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 1234
    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    .line 1235
    return-void
.end method


# virtual methods
.method final enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1239
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Llku;

    .line 2130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1239
    invoke-direct {v0, v2, v3, p1}, Llku;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method final getInitialHead()Lrx/internal/operators/OperatorReplay$Node;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 3130
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1249
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1250
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1252
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1253
    .local v0, "next":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 1254
    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1255
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1256
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1259
    check-cast v1, Llku;

    .line 4037
    .end local v1    # "o":Ljava/lang/Object;
    iget-wide v6, v1, Llku;->a:J

    .line 1259
    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 1260
    move-object v2, v0

    .line 1261
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1265
    .restart local v0    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1267
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method final leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1244
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    check-cast p1, Llku;

    .line 3046
    .end local p1    # "value":Ljava/lang/Object;
    iget-object v0, p1, Llku;->b:Ljava/lang/Object;

    .line 1244
    return-object v0
.end method

.method final truncate()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 4130
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1272
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1274
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1275
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1277
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1279
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_1

    .line 1280
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v7, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v6, v7, :cond_0

    .line 1281
    add-int/lit8 v0, v0, 0x1

    .line 1282
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1283
    move-object v2, v1

    .line 1284
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1286
    :cond_0
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Llku;

    .line 5037
    .local v3, "v":Llku;, "Llku<*>;"
    iget-wide v6, v3, Llku;->a:J

    .line 1287
    cmp-long v6, v6, v4

    if-gtz v6, :cond_1

    .line 1288
    add-int/lit8 v0, v0, 0x1

    .line 1289
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1290
    move-object v2, v1

    .line 1291
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1295
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1300
    .end local v3    # "v":Llku;, "Llku<*>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 1301
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1303
    :cond_2
    return-void
.end method

.method final truncateFinal()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 5130
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1306
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1308
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1309
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1311
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1313
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_0

    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 1314
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Llku;

    .line 6037
    .local v3, "v":Llku;, "Llku<*>;"
    iget-wide v6, v3, Llku;->a:J

    .line 1315
    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 1316
    add-int/lit8 v0, v0, 0x1

    .line 1317
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1318
    move-object v2, v1

    .line 1319
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1323
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_0

    .line 1327
    .end local v3    # "v":Llku;, "Llku<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 1328
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1330
    :cond_1
    return-void
.end method
