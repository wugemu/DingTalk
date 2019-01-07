.class public final Lcom/google/android/gms/internal/zzapy;
.super Ljava/lang/Object;


# static fields
.field public static final bjH:[I

.field public static final bjI:[J

.field public static final bjJ:[F

.field public static final bjK:[D

.field public static final bjL:[Z

.field public static final bjM:[Ljava/lang/String;

.field public static final bjN:[[B

.field public static final bjO:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjH:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjI:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjJ:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjK:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjL:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjM:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjN:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzapy;->bjO:[B

    return-void
.end method

.method static zzagi(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzagj(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static zzaj(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzapn;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapn;->zzafp(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzapn;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapn;->zzafp(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzapn;->zzafp(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzapn;->zzaft(I)V

    return v0
.end method
