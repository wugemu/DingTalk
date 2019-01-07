.class public Lcom/alibaba/doraemon/image/memory/DefaultSharedByteArrayParams;
.super Ljava/lang/Object;
.source "DefaultSharedByteArrayParams.java"


# static fields
.field private static final DEFAULT_MAX_BYTE_ARRAY_SIZE:I = 0x400000

.field private static final DEFAULT_MIN_BYTE_ARRAY_SIZE:I = 0x80000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static get()Lcom/alibaba/doraemon/image/memory/PoolParams;
    .locals 6

    .prologue
    const/high16 v1, 0x400000

    .line 28
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PoolParams;

    const/4 v3, 0x0

    const/high16 v4, 0x80000

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/image/memory/PoolParams;-><init>(IILandroid/util/SparseIntArray;II)V

    return-object v0
.end method
