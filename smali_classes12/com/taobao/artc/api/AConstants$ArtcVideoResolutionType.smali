.class public final enum Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArtcVideoResolutionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

.field public static final enum ARTC_VIDEO_RESOLUTION_180P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

.field public static final enum ARTC_VIDEO_RESOLUTION_270P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

.field public static final enum ARTC_VIDEO_RESOLUTION_288P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

.field public static final enum ARTC_VIDEO_RESOLUTION_360P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

.field public static final enum ARTC_VIDEO_RESOLUTION_368P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

.field public static final enum ARTC_VIDEO_RESOLUTION_720P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    const-string/jumbo v1, "ARTC_VIDEO_RESOLUTION_180P"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_180P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    .line 35
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    const-string/jumbo v1, "ARTC_VIDEO_RESOLUTION_270P"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_270P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    .line 36
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    const-string/jumbo v1, "ARTC_VIDEO_RESOLUTION_288P"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_288P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    .line 37
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    const-string/jumbo v1, "ARTC_VIDEO_RESOLUTION_360P"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_360P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    .line 38
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    const-string/jumbo v1, "ARTC_VIDEO_RESOLUTION_368P"

    invoke-direct {v0, v1, v7}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_368P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    .line 39
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    const-string/jumbo v1, "ARTC_VIDEO_RESOLUTION_720P"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_720P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_180P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_270P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_288P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_360P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_368P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_720P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    return-object v0
.end method
