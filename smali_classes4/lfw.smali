.class public final Llfw;
.super Llga;
.source "nsSJISVerifier.java"


# static fields
.field static a:[I

.field static b:[I

.field static c:I

.field static d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x33333333

    const v4, 0x11111111

    const v3, 0x22222222

    .line 44
    invoke-direct {p0}, Llga;-><init>()V

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 48
    sput-object v0, Llfw;->a:[I

    const v1, 0x11111110

    aput v1, v0, v6

    .line 49
    sget-object v0, Llfw;->a:[I

    const v1, 0x111111

    aput v1, v0, v7

    .line 50
    sget-object v0, Llfw;->a:[I

    const/4 v1, 0x2

    aput v4, v0, v1

    .line 51
    sget-object v0, Llfw;->a:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    .line 52
    sget-object v0, Llfw;->a:[I

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 53
    sget-object v0, Llfw;->a:[I

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 54
    sget-object v0, Llfw;->a:[I

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 55
    sget-object v0, Llfw;->a:[I

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 56
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 57
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 58
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 59
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 60
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 61
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 62
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 63
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0xf

    const v2, 0x12222222

    aput v2, v0, v1

    .line 64
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x10

    aput v5, v0, v1

    .line 65
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x11

    aput v5, v0, v1

    .line 66
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x12

    aput v5, v0, v1

    .line 67
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x13

    aput v5, v0, v1

    .line 68
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x14

    const v2, 0x22222224

    aput v2, v0, v1

    .line 69
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    .line 70
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    .line 71
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    .line 72
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 73
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    .line 74
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    .line 75
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x1b

    aput v3, v0, v1

    .line 76
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x1c

    aput v5, v0, v1

    .line 77
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x1d

    const v2, 0x44455333    # 789.3f

    aput v2, v0, v1

    .line 78
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x1e

    const v2, 0x44444444

    aput v2, v0, v1

    .line 79
    sget-object v0, Llfw;->a:[I

    const/16 v1, 0x1f

    const v2, 0x44444

    aput v2, v0, v1

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 85
    sput-object v0, Llfw;->b:[I

    const v1, 0x11113001

    aput v1, v0, v6

    .line 86
    sget-object v0, Llfw;->b:[I

    const v1, 0x22221111

    aput v1, v0, v7

    .line 87
    sget-object v0, Llfw;->b:[I

    const/4 v1, 0x2

    const/16 v2, 0x1122

    aput v2, v0, v1

    .line 91
    const-string/jumbo v0, "Shift_JIS"

    sput-object v0, Llfw;->d:Ljava/lang/String;

    .line 92
    const/4 v0, 0x6

    sput v0, Llfw;->c:I

    .line 94
    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Llfw;->a:[I

    return-object v0
.end method

.method public final b()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Llfw;->b:[I

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 41
    sget v0, Llfw;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Llfw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
