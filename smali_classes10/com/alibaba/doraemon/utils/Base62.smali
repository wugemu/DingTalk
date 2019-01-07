.class public Lcom/alibaba/doraemon/utils/Base62;
.super Ljava/lang/Object;
.source "Base62.java"


# static fields
.field private static final BASE:I

.field private static final FAST_SIZE:I = 0x7a

.field private static final baseDigits:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final digitsChar:[C

.field private static final digitsIndex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/16 v1, 0x3e

    sput v1, Lcom/alibaba/doraemon/utils/Base62;->BASE:I

    .line 6
    const-string/jumbo v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/doraemon/utils/Base62;->digitsChar:[C

    .line 8
    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/doraemon/utils/Base62;->digitsIndex:[I

    .line 11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-ge v0, v1, :cond_0

    .line 12
    sget-object v1, Lcom/alibaba/doraemon/utils/Base62;->digitsIndex:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/alibaba/doraemon/utils/Base62;->BASE:I

    if-ge v0, v1, :cond_1

    .line 16
    sget-object v1, Lcom/alibaba/doraemon/utils/Base62;->digitsIndex:[I

    sget-object v2, Lcom/alibaba/doraemon/utils/Base62;->digitsChar:[C

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

.method public static decode(Ljava/lang/String;)J
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .local v4, "result":J
    const-wide/16 v2, 0x1

    .line 23
    .local v2, "multiplier":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_0

    .line 24
    invoke-static {p0, v1}, Lcom/alibaba/doraemon/utils/Base62;->getIndex(Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, "index":I
    int-to-long v6, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    .line 26
    sget v6, Lcom/alibaba/doraemon/utils/Base62;->BASE:I

    int-to-long v6, v6

    mul-long/2addr v2, v6

    .line 23
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 28
    .end local v0    # "index":I
    :cond_0
    return-wide v4
.end method

.method public static encode(J)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 32
    cmp-long v1, p0, v4

    if-gez v1, :cond_0

    .line 35
    neg-long p0, p0

    .line 38
    :cond_0
    cmp-long v1, p0, v4

    if-nez v1, :cond_1

    .line 39
    const-string/jumbo v1, "0"

    .line 45
    :goto_0
    return-object v1

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    cmp-long v1, p0, v4

    if-eqz v1, :cond_2

    .line 42
    sget-object v1, Lcom/alibaba/doraemon/utils/Base62;->digitsChar:[C

    sget v2, Lcom/alibaba/doraemon/utils/Base62;->BASE:I

    int-to-long v2, v2

    rem-long v2, p0, v2

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    sget v1, Lcom/alibaba/doraemon/utils/Base62;->BASE:I

    int-to-long v2, v1

    div-long/2addr p0, v2

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 50
    .local v0, "c":C
    const/16 v2, 0x7a

    if-le v0, v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknow character for Base62: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    sget-object v2, Lcom/alibaba/doraemon/utils/Base62;->digitsIndex:[I

    aget v1, v2, v0

    .line 55
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknow character for Base62: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_1
    return v1
.end method
