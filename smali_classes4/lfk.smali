.class public final Llfk;
.super Llga;
.source "nsEUCKRVerifier.java"


# static fields
.field static a:[I

.field static b:[I

.field static c:I

.field static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x22222222

    const v3, 0x11111111

    .line 44
    invoke-direct {p0}, Llga;-><init>()V

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 48
    sput-object v0, Llfk;->a:[I

    aput v3, v0, v5

    .line 49
    sget-object v0, Llfk;->a:[I

    const v1, 0x111111

    aput v1, v0, v6

    .line 50
    sget-object v0, Llfk;->a:[I

    aput v3, v0, v7

    .line 51
    sget-object v0, Llfk;->a:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    .line 52
    sget-object v0, Llfk;->a:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 53
    sget-object v0, Llfk;->a:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 54
    sget-object v0, Llfk;->a:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 55
    sget-object v0, Llfk;->a:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 56
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 57
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 58
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 59
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 60
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 61
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 62
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 63
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 64
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x10

    aput v5, v0, v1

    .line 65
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x11

    aput v5, v0, v1

    .line 66
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x12

    aput v5, v0, v1

    .line 67
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x13

    aput v5, v0, v1

    .line 68
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x14

    const v2, 0x22222220

    aput v2, v0, v1

    .line 69
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x15

    const v2, 0x33322222

    aput v2, v0, v1

    .line 70
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    .line 71
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    .line 72
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x18

    aput v4, v0, v1

    .line 73
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x19

    const v2, 0x22222232

    aput v2, v0, v1

    .line 74
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    .line 75
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x1b

    aput v4, v0, v1

    .line 76
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x1c

    aput v4, v0, v1

    .line 77
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x1d

    aput v4, v0, v1

    .line 78
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x1e

    aput v4, v0, v1

    .line 79
    sget-object v0, Llfk;->a:[I

    const/16 v1, 0x1f

    const v2, 0x2222222

    aput v2, v0, v1

    .line 83
    new-array v0, v7, [I

    .line 85
    sput-object v0, Llfk;->b:[I

    const v1, 0x11111301

    aput v1, v0, v5

    .line 86
    sget-object v0, Llfk;->b:[I

    const v1, 0x112222

    aput v1, v0, v6

    .line 90
    const-string/jumbo v0, "EUC-KR"

    sput-object v0, Llfk;->d:Ljava/lang/String;

    .line 91
    const/4 v0, 0x4

    sput v0, Llfk;->c:I

    .line 93
    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Llfk;->a:[I

    return-object v0
.end method

.method public final b()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Llfk;->b:[I

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 41
    sget v0, Llfk;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Llfk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method
