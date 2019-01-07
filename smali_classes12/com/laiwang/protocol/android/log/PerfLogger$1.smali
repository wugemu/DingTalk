.class final Lcom/laiwang/protocol/android/log/PerfLogger$1;
.super Ljava/lang/Object;
.source "PerfLogger.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/log/PerfLogger;->logFlowControl([Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 540
    iput-object p1, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    iget v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->a:I

    iget-object v1, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    iget-object v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->b:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 550
    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/laiwang/protocol/android/log/PerfLogger$1;->a:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final remove()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method
