.class public final enum Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArtcChannelProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

.field public static final enum ARTC_CHANNEL_PROFILE_BROADCAST:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

.field public static final enum ARTC_CHANNEL_PROFILE_COMMUNICATION:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

.field public static final enum ARTC_CHANNEL_PROFILE_CONFERENCE:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    const-string/jumbo v1, "ARTC_CHANNEL_PROFILE_BROADCAST"

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_BROADCAST:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 12
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    const-string/jumbo v1, "ARTC_CHANNEL_PROFILE_COMMUNICATION"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_COMMUNICATION:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 13
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    const-string/jumbo v1, "ARTC_CHANNEL_PROFILE_CONFERENCE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_CONFERENCE:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_BROADCAST:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_COMMUNICATION:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_CONFERENCE:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    return-object v0
.end method
