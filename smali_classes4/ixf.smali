.class public final Lixf;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-array v0, v1, [I

    sput-object v0, Lixf;->a:[I

    .line 76
    new-array v0, v1, [J

    sput-object v0, Lixf;->b:[J

    .line 77
    new-array v0, v1, [F

    sput-object v0, Lixf;->c:[F

    .line 78
    new-array v0, v1, [D

    sput-object v0, Lixf;->d:[D

    .line 79
    new-array v0, v1, [Z

    sput-object v0, Lixf;->e:[Z

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lixf;->f:[Ljava/lang/String;

    .line 81
    new-array v0, v1, [[B

    sput-object v0, Lixf;->g:[[B

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lixf;->h:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static a(II)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static a(Lixa;I)Z
    .locals 1
    .param p0, "input"    # Lixa;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lixa;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 67
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static final b(Lixa;I)I
    .locals 6
    .param p0, "input"    # Lixa;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 1542
    .local v0, "arrayLength":I
    iget v2, p0, Lixa;->b:I

    iget v3, p0, Lixa;->a:I

    sub-int v1, v2, v3

    .line 115
    .local v1, "startPos":I
    invoke-virtual {p0, p1}, Lixa;->b(I)Z

    .line 116
    :goto_0
    invoke-virtual {p0}, Lixa;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lixa;->b(I)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    iget v2, p0, Lixa;->b:I

    iget v3, p0, Lixa;->a:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 1567
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is beyond current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lixa;->b:I

    iget v5, p0, Lixa;->a:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1570
    :cond_1
    if-gez v1, :cond_2

    .line 1571
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1573
    :cond_2
    iget v2, p0, Lixa;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lixa;->b:I

    .line 121
    return v0
.end method
