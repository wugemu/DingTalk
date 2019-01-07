.class Lcom/alibaba/doraemon/image/memory/BasePool$Counter;
.super Ljava/lang/Object;
.source "BasePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/image/memory/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Counter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.facebook.imagepipeline.common.BasePool.Counter"


# instance fields
.field mCount:I

.field mNumBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrement(I)V
    .locals 5
    .param p1, "numBytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 765
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    if-lez v0, :cond_0

    .line 766
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 767
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 774
    :goto_0
    return-void

    .line 769
    :cond_0
    const-string/jumbo v0, "com.facebook.imagepipeline.common.BasePool.Counter"

    const-string/jumbo v1, "Unexpected decrement of %d. Current numBytes = %d, count = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 770
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 771
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 772
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 769
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public increment(I)V
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 756
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 757
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 758
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 780
    iput v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mCount:I

    .line 781
    iput v0, p0, Lcom/alibaba/doraemon/image/memory/BasePool$Counter;->mNumBytes:I

    .line 782
    return-void
.end method
