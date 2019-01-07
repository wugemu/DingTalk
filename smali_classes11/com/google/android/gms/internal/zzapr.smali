.class public final Lcom/google/android/gms/internal/zzapr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final bjz:Lcom/google/android/gms/internal/zzaps;


# instance fields
.field private bjA:Z

.field private bjB:[I

.field private bjC:[Lcom/google/android/gms/internal/zzaps;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaps;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaps;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapr;->bjz:Lcom/google/android/gms/internal/zzaps;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapr;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzapr;->bjA:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapr;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaps;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iput v2, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private idealIntArraySize(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapr;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private zza([I[II)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private zza([Lcom/google/android/gms/internal/zzaps;[Lcom/google/android/gms/internal/zzaps;I)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaps;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private zzagh(I)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aget v3, v3, v0

    if-ge v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v0, v2, -0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public final aC()Lcom/google/android/gms/internal/zzapr;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapr;->size()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzapr;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v4, v3, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaps;

    aput-object v0, v4, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput v2, v3, Lcom/google/android/gms/internal/zzapr;->mSize:I

    return-object v3
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapr;->aC()Lcom/google/android/gms/internal/zzapr;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzapr;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapr;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapr;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzapr;->zza([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget v4, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/zzapr;->zza([Lcom/google/android/gms/internal/zzaps;[Lcom/google/android/gms/internal/zzaps;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaps;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapr;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    return v0
.end method

.method final zza(ILcom/google/android/gms/internal/zzaps;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapr;->zzagh(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzapr;->bjz:Lcom/google/android/gms/internal/zzaps;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzapr;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/zzaps;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    goto :goto_0
.end method

.method final zzagf(I)Lcom/google/android/gms/internal/zzaps;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapr;->zzagh(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/zzapr;->bjz:Lcom/google/android/gms/internal/zzaps;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method final zzagg(I)Lcom/google/android/gms/internal/zzaps;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v0, p1

    return-object v0
.end method
