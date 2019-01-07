.class final Lhy;
.super Lhw;
.source "Base64.java"


# static fields
.field static final synthetic j:Z

.field private static final k:[B

.field private static final l:[B


# instance fields
.field final c:[B

.field d:I

.field e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field final i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 542
    const-class v0, Lhv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lhy;->j:Z

    .line 554
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lhy;->k:[B

    .line 565
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lhy;->l:[B

    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 554
    .line 565
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    invoke-direct {p0}, Lhw;-><init>()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lhy;->a:[B

    .line 584
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lhy;->f:Z

    .line 585
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lhy;->g:Z

    .line 586
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lhy;->h:Z

    .line 587
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lhy;->k:[B

    :goto_3
    iput-object v0, p0, Lhy;->i:[B

    .line 589
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lhy;->c:[B

    .line 590
    iput v2, p0, Lhy;->d:I

    .line 592
    iget-boolean v0, p0, Lhy;->g:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lhy;->e:I

    .line 593
    return-void

    :cond_0
    move v0, v2

    .line 584
    goto :goto_0

    :cond_1
    move v0, v2

    .line 585
    goto :goto_1

    :cond_2
    move v1, v2

    .line 586
    goto :goto_2

    .line 587
    :cond_3
    sget-object v0, Lhy;->l:[B

    goto :goto_3

    .line 592
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method
