.class public final Lnf;
.super Ljava/lang/Object;
.source "ANTLRHashString.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[C

.field public c:I

.field private d:Lantlr/CharScanner;


# direct methods
.method public constructor <init>(Lantlr/CharScanner;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnf;->d:Lantlr/CharScanner;

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lantlr/CharScanner;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lnf;->d:Lantlr/CharScanner;

    .line 1104
    iput-object p1, p0, Lnf;->a:Ljava/lang/String;

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lnf;->b:[C

    .line 36
    return-void
.end method

.method private final a(I)C
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnf;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnf;->b:[C

    aget-char v0, v0, p1

    goto :goto_0
.end method

.method private final a()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnf;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 44
    instance-of v0, p1, Lnf;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 73
    :goto_0
    return v0

    .line 49
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lnf;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lnf;->d:Lantlr/CharScanner;

    invoke-direct {v0, p1, v2}, Lnf;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    move-object p1, v0

    .line 55
    :goto_1
    invoke-direct {p0}, Lnf;->a()I

    move-result v2

    .line 56
    invoke-direct {p1}, Lnf;->a()I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lnf;

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lnf;->d:Lantlr/CharScanner;

    invoke-virtual {v0}, Lantlr/CharScanner;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 60
    :goto_2
    if-ge v0, v2, :cond_6

    .line 61
    invoke-direct {p0, v0}, Lnf;->a(I)C

    move-result v3

    invoke-direct {p1, v0}, Lnf;->a(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    move v0, v1

    .line 62
    goto :goto_0

    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 67
    :goto_3
    if-ge v0, v2, :cond_6

    .line 68
    invoke-direct {p0, v0}, Lnf;->a(I)C

    move-result v3

    invoke-static {v3}, Lantlr/CharScanner;->b(C)C

    move-result v3

    invoke-direct {p1, v0}, Lnf;->a(I)C

    move-result v4

    invoke-static {v4}, Lantlr/CharScanner;->b(C)C

    move-result v4

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 69
    goto :goto_0

    .line 67
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 73
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 77
    .line 78
    invoke-direct {p0}, Lnf;->a()I

    move-result v3

    .line 80
    iget-object v1, p0, Lnf;->d:Lantlr/CharScanner;

    invoke-virtual {v1}, Lantlr/CharScanner;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 81
    :goto_0
    if-ge v1, v3, :cond_1

    .line 82
    mul-int/lit16 v0, v0, 0x97

    invoke-direct {p0, v1}, Lnf;->a(I)C

    move-result v2

    add-int/2addr v2, v0

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 86
    :goto_1
    if-ge v1, v3, :cond_1

    .line 87
    mul-int/lit16 v0, v0, 0x97

    invoke-direct {p0, v1}, Lnf;->a(I)C

    move-result v2

    invoke-static {v2}, Lantlr/CharScanner;->b(C)C

    move-result v2

    add-int/2addr v2, v0

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 90
    :cond_1
    return v0
.end method
