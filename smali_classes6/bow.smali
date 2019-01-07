.class public final Lbow;
.super Ljava/lang/Object;
.source "DefaultSQLPoolParams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 36
    .local v0, "defaultBuckets":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 37
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lcom/alibaba/doraemon/image/memory/PoolParams;

    const/16 v3, 0x400

    const/high16 v4, 0x200000

    invoke-direct {v2, v3, v4, v0}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v2
.end method
