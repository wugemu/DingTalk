.class public Lcom/taobao/weex/utils/WXDataStructureUtil;
.super Ljava/lang/Object;
.source "WXDataStructureUtil.java"


# static fields
.field private static final MAX_POWER_OF_TWO:I = 0x40000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static capacity(I)I
    .locals 2
    .param p0, "expectedSize"    # I

    .prologue
    .line 67
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 68
    const-string/jumbo v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXDataStructureUtil;->checkNonnegative(ILjava/lang/String;)I

    .line 69
    add-int/lit8 v0, p0, 0x1

    .line 77
    :goto_0
    return v0

    .line 71
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 75
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 77
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private static checkNonnegative(ILjava/lang/String;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    if-gez p0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be negative but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return p0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDataStructureUtil;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method
