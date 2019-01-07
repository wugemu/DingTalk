.class public final Lidy;
.super Ljava/lang/Object;
.source "Base62.java"


# static fields
.field private static final a:I

.field private static final b:[C

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/16 v1, 0x3e

    sput v1, Lidy;->a:I

    .line 6
    const-string/jumbo v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lidy;->b:[C

    .line 8
    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lidy;->c:[I

    .line 11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-ge v0, v1, :cond_0

    .line 12
    sget-object v1, Lidy;->c:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v1, Lidy;->a:I

    if-ge v0, v1, :cond_1

    .line 16
    sget-object v1, Lidy;->c:[I

    sget-object v2, Lidy;->b:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 32
    cmp-long v1, p0, v4

    if-gez v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Number(Base62) must be positive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    cmp-long v1, p0, v4

    if-nez v1, :cond_1

    .line 36
    const-string/jumbo v1, "0"

    .line 42
    :goto_0
    return-object v1

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    cmp-long v1, p0, v4

    if-eqz v1, :cond_2

    .line 39
    sget-object v1, Lidy;->b:[C

    sget v2, Lidy;->a:I

    int-to-long v2, v2

    rem-long v2, p0, v2

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    sget v1, Lidy;->a:I

    int-to-long v2, v1

    div-long/2addr p0, v2

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
