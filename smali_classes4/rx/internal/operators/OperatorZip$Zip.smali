.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final THRESHOLD:I

.field private static final serialVersionUID:J = 0x53337eae55d8937dL


# instance fields
.field final child:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Llkx;

.field emitted:I

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile subscribers:[Ljava/lang/Object;

.field private final zipFunction:Llhm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhm",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 176
    sget v0, Llin;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Llgy;Llhm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;",
            "Llhm",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Llgy;, "Llgy<-TR;>;"
    .local p2, "zipFunction":Llhm;, "Llhm<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Llkx;

    .line 184
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Llgt;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Llhm;

    .line 186
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Llkx;

    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 187
    return-void
.end method


# virtual methods
.method public final start([Llgs;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 5
    .param p1, "os"    # [Llgs;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 192
    .local v2, "subscribers":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 193
    new-instance v1, Lrx/internal/operators/OperatorZip$Zip$a;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorZip$Zip$a;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 194
    .local v1, "io":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    aput-object v1, v2, v0

    .line 195
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Llkx;

    invoke-virtual {v3, v1}, Llkx;->a(Llgz;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "io":Lrx/internal/operators/OperatorZip$Zip$a;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.a;"
    :cond_0
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    iput-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 202
    aget-object v4, p1, v0

    aget-object v3, v2, v0

    check-cast v3, Lrx/internal/operators/OperatorZip$Zip$a;

    invoke-virtual {v4, v3}, Llgs;->a(Llgy;)Llgz;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    return-void
.end method

.method final tick()V
    .locals 18

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 216
    .local v11, "subscribers":[Ljava/lang/Object;
    if-nez v11, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->getAndIncrement()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 221
    array-length v7, v11

    .line 222
    .local v7, "length":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Llgt;

    .line 223
    .local v4, "child":Llgt;, "Llgt<-TR;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .local v10, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    :goto_1
    new-array v12, v7, [Ljava/lang/Object;

    .line 228
    .local v12, "vs":[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 229
    .local v2, "allHaveValues":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v7, :cond_5

    .line 230
    aget-object v13, v11, v6

    check-cast v13, Lrx/internal/operators/OperatorZip$Zip$a;

    iget-object v3, v13, Lrx/internal/operators/OperatorZip$Zip$a;->a:Llin;

    .line 231
    .local v3, "buffer":Llin;
    invoke-virtual {v3}, Llin;->f()Ljava/lang/Object;

    move-result-object v8

    .line 233
    .local v8, "n":Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 234
    const/4 v2, 0x0

    .line 229
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 238
    :cond_3
    invoke-static {v8}, Llin;->b(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 239
    invoke-interface {v4}, Llgt;->onCompleted()V

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Llkx;

    invoke-virtual {v13}, Llkx;->unsubscribe()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-static {v8}, Llin;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v12, v6

    goto :goto_3

    .line 249
    .end local v3    # "buffer":Llin;
    .end local v8    # "n":Ljava/lang/Object;
    :cond_5
    if-eqz v2, :cond_9

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_9

    .line 252
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Llhm;

    invoke-interface {v13}, Llhm;->a()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v13}, Llgt;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    move-object/from16 v0, p0

    iget v13, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    array-length v14, v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_7

    aget-object v9, v11, v13

    .line 262
    .local v9, "obj":Ljava/lang/Object;
    check-cast v9, Lrx/internal/operators/OperatorZip$Zip$a;

    .end local v9    # "obj":Ljava/lang/Object;
    iget-object v3, v9, Lrx/internal/operators/OperatorZip$Zip$a;->a:Llin;

    .line 263
    .restart local v3    # "buffer":Llin;
    invoke-virtual {v3}, Llin;->e()Ljava/lang/Object;

    .line 265
    invoke-virtual {v3}, Llin;->f()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Llin;->b(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 267
    invoke-interface {v4}, Llgt;->onCompleted()V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Llkx;

    invoke-virtual {v13}, Llkx;->unsubscribe()V

    goto/16 :goto_0

    .line 256
    .end local v3    # "buffer":Llin;
    :catch_0
    move-exception v5

    .line 257
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v5, v4, v12}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 261
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v3    # "buffer":Llin;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 273
    .end local v3    # "buffer":Llin;
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    sget v14, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    if-le v13, v14, :cond_2

    .line 274
    array-length v14, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v14, :cond_8

    aget-object v9, v11, v13

    .line 275
    .restart local v9    # "obj":Ljava/lang/Object;
    check-cast v9, Lrx/internal/operators/OperatorZip$Zip$a;

    .end local v9    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v15, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$a;->b(J)V

    .line 274
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 277
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_1

    .line 283
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->decrementAndGet()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_2

    goto/16 :goto_0
.end method
