.class public final Liww;
.super Ljava/lang/Object;


# static fields
.field public static final b:Liww;


# instance fields
.field public final a:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liww;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Liww;-><init>([B)V

    sput-object v0, Liww;->b:Liww;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Liww;->c:I

    iput-object p1, p0, Liww;->a:[B

    return-void
.end method

.method public static a([B)Liww;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Liww;->a([BII)Liww;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Liww;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Liww;

    invoke-direct {v1, v0}, Liww;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Liww;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Liww;

    iget-object v2, p0, Liww;->a:[B

    array-length v3, v2

    iget-object v2, p1, Liww;->a:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Liww;->a:[B

    iget-object v5, p1, Liww;->a:[B

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    iget v0, p0, Liww;->c:I

    if-nez v0, :cond_2

    iget-object v4, p0, Liww;->a:[B

    iget-object v0, p0, Liww;->a:[B

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Liww;->c:I

    :cond_2
    return v0
.end method
