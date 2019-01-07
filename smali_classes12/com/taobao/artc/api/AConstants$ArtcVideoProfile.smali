.class public final enum Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArtcVideoProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_180P_10FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_240P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_270P_12FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_288P_25FPS_deprecated:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_360P2_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_360P_15FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_360P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_368P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_368P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum ARTC_VIDEO_PROFILE_720P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

.field public static final enum RTC_VIDEO_PROFILE_288P_20FPS_deprecated:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "RTC_VIDEO_PROFILE_288P_20FPS_deprecated"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->RTC_VIDEO_PROFILE_288P_20FPS_deprecated:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 19
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_288P_25FPS_deprecated"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_288P_25FPS_deprecated:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 20
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_180P_10FPS"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_180P_10FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 21
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_240P_20FPS"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_240P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 22
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_270P_12FPS"

    invoke-direct {v0, v1, v7}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_270P_12FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 23
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_360P_15FPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_15FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 24
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_360P_20FPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 25
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_360P2_20FPS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P2_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 26
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_360P_25FPS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 27
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_368P_20FPS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_368P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 28
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_368P_25FPS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_368P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 29
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_720P_20FPS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 30
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    const-string/jumbo v1, "ARTC_VIDEO_PROFILE_720P_25FPS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 16
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->RTC_VIDEO_PROFILE_288P_20FPS_deprecated:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_288P_25FPS_deprecated:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_180P_10FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_240P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_270P_12FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_15FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P2_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_368P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_368P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    return-object v0
.end method
