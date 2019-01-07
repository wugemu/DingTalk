.class public final enum Lali/mmpc/avengine/video/cpuchip/CpuChipType;
.super Ljava/lang/Enum;
.source "CpuChipType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/avengine/video/cpuchip/CpuChipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum allwinner_a20:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum allwinner_a31:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum allwinner_a31s:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum amlogic_m6:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum amlogic_m8:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum hisi3798c:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum mediatek6592:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum mediatek8127:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum mediatek8135:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum mediatek8685a:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum mstar_napoli:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum nvidia_K1:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum realtek1195:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum realtek298x:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum rockchip_rk3188:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum rockchip_rk3288:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum samsung_exynos4412:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum samsung_exynos5:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

.field public static final enum unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;


# instance fields
.field private alias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "allwinner_a20"

    const-string/jumbo v2, "softwinner_a20"

    invoke-direct {v0, v1, v4, v2}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->allwinner_a20:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "allwinner_a31"

    const-string/jumbo v2, "QuadCore-A31Series"

    invoke-direct {v0, v1, v5, v2}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->allwinner_a31:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 9
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "allwinner_a31s"

    const-string/jumbo v2, "softwinners_a31s"

    invoke-direct {v0, v1, v6, v2}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->allwinner_a31s:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 10
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "amlogic_m6"

    const-string/jumbo v2, "meson6"

    invoke-direct {v0, v1, v7, v2}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->amlogic_m6:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "amlogic_m8"

    const-string/jumbo v2, "amlogic_m8"

    invoke-direct {v0, v1, v8, v2}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->amlogic_m8:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 11
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "samsung_exynos4412"

    const/4 v2, 0x5

    const-string/jumbo v3, "exynos4412"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->samsung_exynos4412:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 12
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "samsung_exynos5"

    const/4 v2, 0x6

    const-string/jumbo v3, "exynos5"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->samsung_exynos5:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 17
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "mstar_napoli"

    const/4 v2, 0x7

    const-string/jumbo v3, "napoli"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mstar_napoli:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 20
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "rockchip_rk3188"

    const/16 v2, 0x8

    const-string/jumbo v3, "rk3188"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->rockchip_rk3188:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "rockchip_rk3288"

    const/16 v2, 0x9

    const-string/jumbo v3, "rk3288"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->rockchip_rk3288:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 21
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "hisi3798c"

    const/16 v2, 0xa

    const-string/jumbo v3, "Hi3798CV100"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->hisi3798c:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 24
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "realtek1195"

    const/16 v2, 0xb

    const-string/jumbo v3, "phoenix"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->realtek1195:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 27
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "realtek298x"

    const/16 v2, 0xc

    const-string/jumbo v3, "rtd298x"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->realtek298x:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "mediatek8127"

    const/16 v2, 0xd

    const-string/jumbo v3, "sac85_bx_ali_kk"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek8127:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 30
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "mediatek8135"

    const/16 v2, 0xe

    const-string/jumbo v3, "mt8135_tablet_htt_v1"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek8135:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 31
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "mediatek6592"

    const/16 v2, 0xf

    const-string/jumbo v3, "U65GT"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek6592:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 34
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "mediatek8685a"

    const/16 v2, 0x10

    const-string/jumbo v3, "mtk_8685a_chip"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek8685a:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "nvidia_K1"

    const/16 v2, 0x11

    const-string/jumbo v3, "nvidia_tegra_k1"

    invoke-direct {v0, v1, v2, v3}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->nvidia_K1:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 35
    new-instance v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v1, "unknown"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 3
    const/16 v0, 0x13

    new-array v0, v0, [Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->allwinner_a20:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v1, v0, v4

    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->allwinner_a31:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v1, v0, v5

    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->allwinner_a31s:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v1, v0, v6

    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->amlogic_m6:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v1, v0, v7

    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->amlogic_m8:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->samsung_exynos4412:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->samsung_exynos5:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mstar_napoli:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->rockchip_rk3188:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->rockchip_rk3288:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->hisi3798c:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->realtek1195:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->realtek298x:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek8127:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek8135:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek6592:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->mediatek8685a:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->nvidia_K1:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    aput-object v2, v0, v1

    sput-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->$VALUES:[Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static from(Ljava/lang/String;)Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v2, "unknown"

    iput-object v2, v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 64
    sget-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 72
    :goto_0
    return-object v0

    .line 67
    :cond_0
    :try_start_0
    invoke-static {p0}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->valueOf(Ljava/lang/String;)Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    move-result-object v0

    .line 68
    .local v0, "type":Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    iput-object p0, v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v0    # "type":Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    :catch_0
    move-exception v1

    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    iput-object p0, v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 72
    sget-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    goto :goto_0
.end method

.method public static fromAlias(Ljava/lang/String;)Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p0, :cond_1

    .line 49
    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v2, "unknown"

    iput-object v2, v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 50
    sget-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-static {}, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->values()[Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 54
    .local v0, "type":Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    iget-object v4, v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "type":Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    :cond_2
    sget-object v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    const-string/jumbo v2, "unknown"

    iput-object v2, v1, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->alias:Ljava/lang/String;

    .line 58
    sget-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->unknown:Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    return-object v0
.end method

.method public static values()[Lali/mmpc/avengine/video/cpuchip/CpuChipType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lali/mmpc/avengine/video/cpuchip/CpuChipType;->$VALUES:[Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    invoke-virtual {v0}, [Lali/mmpc/avengine/video/cpuchip/CpuChipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/avengine/video/cpuchip/CpuChipType;

    return-object v0
.end method
