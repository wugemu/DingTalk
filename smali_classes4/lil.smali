.class public final Llil;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:F

.field public b:I

.field public c:I

.field public d:I

.field public e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Llil;, "Llil<TT;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Llil;-><init>(IF)V

    .line 47
    return-void
.end method

.method private constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Llil;, "Llil<TT;>;"
    const/high16 v2, 0x3f400000    # 0.75f

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v2, p0, Llil;->a:F

    .line 60
    const/16 v1, 0x10

    invoke-static {v1}, Llje;->a(I)I

    move-result v0

    .line 61
    .local v0, "c":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Llil;->b:I

    .line 62
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Llil;->d:I

    .line 63
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Llil;->e:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static a(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 195
    const v1, -0x61c88647

    mul-int v0, p0, v1

    .line 196
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "pos"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    .local p0, "this":Llil;, "Llil<TT;>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    iget v3, p0, Llil;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Llil;->c:I

    .line 123
    :goto_0
    move v1, p1

    .line 124
    .local v1, "last":I
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    .line 126
    :goto_1
    aget-object v0, p2, p1

    .line 127
    .local v0, "curr":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 128
    const/4 v3, 0x0

    aput-object v3, p2, v1

    .line 129
    const/4 v3, 0x1

    return v3

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Llil;->a(I)I

    move-result v3

    and-int v2, v3, p3

    .line 133
    .local v2, "slot":I
    if-gt v1, p1, :cond_2

    if-ge v1, v2, :cond_1

    if-le v2, p1, :cond_3

    .line 139
    :cond_1
    aput-object v0, p2, v1

    goto :goto_0

    .line 133
    :cond_2
    if-lt v1, v2, :cond_3

    if-gt v2, p1, :cond_1

    .line 137
    :cond_3
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    goto :goto_1
.end method
