.class public Lcom/alibaba/doraemon/image/memory/DefaultByteArrayPoolParams;
.super Ljava/lang/Object;
.source "DefaultByteArrayPoolParams.java"


# static fields
.field private static final DEFAULT_BUCKET_SIZE:I = 0x5

.field private static final DEFAULT_IO_BUFFER_SIZE:I = 0x4000

.field private static final MAX_SIZE_HARD_CAP:I = 0x400000

.field private static final MAX_SIZE_SOFT_CAP:I = 0x200000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 43
    .local v0, "defaultBuckets":Landroid/util/SparseIntArray;
    const/16 v1, 0x400

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    const/16 v1, 0x1400

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    const/16 v1, 0x4000

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    const/high16 v1, 0x80000

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    new-instance v1, Lcom/alibaba/doraemon/image/memory/PoolParams;

    const/high16 v2, 0x200000

    const/high16 v3, 0x400000

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v1
.end method
