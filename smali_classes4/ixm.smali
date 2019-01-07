.class public final Lixm;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final a:Lixm;

.field public static final b:Lixm;

.field public static final c:Lixm;

.field public static final d:Lixm;

.field public static final e:Lixm;

.field public static final f:Lixm;

.field public static final g:Lixm;

.field public static final h:Lixm;


# instance fields
.field i:[I

.field private j:[I

.field private k:Lixn;

.field private l:Lixn;

.field private final m:I

.field private final n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 36
    new-instance v0, Lixm;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lixm;-><init>(II)V

    sput-object v0, Lixm;->a:Lixm;

    .line 45
    new-instance v0, Lixm;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lixm;-><init>(II)V

    sput-object v0, Lixm;->b:Lixm;

    .line 50
    new-instance v0, Lixm;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lixm;-><init>(II)V

    sput-object v0, Lixm;->c:Lixm;

    .line 55
    new-instance v0, Lixm;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lixm;-><init>(II)V

    sput-object v0, Lixm;->d:Lixm;

    .line 60
    new-instance v0, Lixm;

    const/16 v1, 0x11d

    invoke-direct {v0, v1, v3}, Lixm;-><init>(II)V

    sput-object v0, Lixm;->e:Lixm;

    .line 69
    new-instance v0, Lixm;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v3}, Lixm;-><init>(II)V

    .line 71
    sput-object v0, Lixm;->f:Lixm;

    sput-object v0, Lixm;->g:Lixm;

    .line 72
    sget-object v0, Lixm;->c:Lixm;

    sput-object v0, Lixm;->h:Lixm;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "primitive"    # I
    .param p2, "size"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lixm;->o:Z

    .line 93
    iput p1, p0, Lixm;->n:I

    .line 94
    iput p2, p0, Lixm;->m:I

    .line 96
    if-gtz p2, :cond_0

    .line 97
    invoke-direct {p0}, Lixm;->c()V

    .line 99
    :cond_0
    return-void
.end method

.method static b(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 164
    xor-int v0, p0, p1

    return v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    iget v2, p0, Lixm;->m:I

    new-array v2, v2, [I

    iput-object v2, p0, Lixm;->j:[I

    .line 103
    iget v2, p0, Lixm;->m:I

    new-array v2, v2, [I

    iput-object v2, p0, Lixm;->i:[I

    .line 104
    const/4 v1, 0x1

    .line 105
    .local v1, "x":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lixm;->m:I

    if-ge v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Lixm;->j:[I

    aput v1, v2, v0

    .line 107
    shl-int/lit8 v1, v1, 0x1

    .line 108
    iget v2, p0, Lixm;->m:I

    if-lt v1, v2, :cond_0

    .line 109
    iget v2, p0, Lixm;->n:I

    xor-int/2addr v1, v2

    .line 110
    iget v2, p0, Lixm;->m:I

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lixm;->m:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 114
    iget-object v2, p0, Lixm;->i:[I

    iget-object v3, p0, Lixm;->j:[I

    aget v3, v3, v0

    aput v0, v2, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_2
    new-instance v2, Lixn;

    new-array v3, v4, [I

    aput v5, v3, v5

    invoke-direct {v2, p0, v3}, Lixn;-><init>(Lixm;[I)V

    iput-object v2, p0, Lixm;->k:Lixn;

    .line 118
    new-instance v2, Lixn;

    new-array v3, v4, [I

    aput v4, v3, v5

    invoke-direct {v2, p0, v3}, Lixn;-><init>(Lixm;[I)V

    iput-object v2, p0, Lixm;->l:Lixn;

    .line 119
    iput-boolean v4, p0, Lixm;->o:Z

    .line 120
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lixm;->a()V

    .line 173
    iget-object v0, p0, Lixm;->j:[I

    aget v0, v0, p1

    return v0
.end method

.method final a(II)Lixn;
    .locals 2
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    invoke-virtual {p0}, Lixm;->a()V

    .line 146
    if-gez p1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 149
    :cond_0
    if-nez p2, :cond_1

    .line 150
    iget-object v1, p0, Lixm;->k:Lixn;

    .line 154
    :goto_0
    return-object v1

    .line 152
    :cond_1
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 153
    .local v0, "coefficients":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 154
    new-instance v1, Lixn;

    invoke-direct {v1, p0, v0}, Lixn;-><init>(Lixm;[I)V

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lixm;->o:Z

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lixm;->c()V

    .line 126
    :cond_0
    return-void
.end method

.method final b(I)I
    .locals 3
    .param p1, "a"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 192
    invoke-virtual {p0}, Lixm;->a()V

    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lixm;->j:[I

    iget v1, p0, Lixm;->m:I

    iget-object v2, p0, Lixm;->i:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method final b()Lixn;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lixm;->a()V

    .line 131
    iget-object v0, p0, Lixm;->k:Lixn;

    return-object v0
.end method

.method final c(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 204
    invoke-virtual {p0}, Lixm;->a()V

    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lixm;->j:[I

    iget-object v1, p0, Lixm;->i:[I

    aget v1, v1, p1

    iget-object v2, p0, Lixm;->i:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lixm;->m:I

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0
.end method
