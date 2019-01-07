.class public final enum Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArtcErrorEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_AVAILABLE_VIDEO_CODEC:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_CAMERA_SWITCH:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_CAMERA_UNAVAILABLE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_INIT_MEDIA_RESOURCE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_LCAK_PERMISSION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_OPEN_CAMERA:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_CONNECTION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_CREATEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_CREATINGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_ICE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_JOINEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_JOININGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_LEAVEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_LEAVINGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_RECVSDPCANDIDATE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

.field public static final enum ARTC_EVENT_SIGNALING_SENDSDPCANDIDATE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_CONNECTION"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_CONNECTION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 69
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_CREATINGCHANNEL"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_CREATINGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 70
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_CREATEDCHANNEL"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_CREATEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 71
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_JOININGCHANNEL"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_JOININGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 72
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_JOINEDCHANNEL"

    invoke-direct {v0, v1, v7}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_JOINEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 73
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_SENDSDPCANDIDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_SENDSDPCANDIDATE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 74
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_RECVSDPCANDIDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_RECVSDPCANDIDATE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 75
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_ICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_ICE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 76
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_LEAVINGCHANNEL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_LEAVINGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 77
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_SIGNALING_LEAVEDCHANNEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_LEAVEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 78
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_LCAK_PERMISSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_LCAK_PERMISSION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 79
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_OPEN_CAMERA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_OPEN_CAMERA:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 80
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_INIT_MEDIA_RESOURCE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_INIT_MEDIA_RESOURCE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 81
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_AVAILABLE_VIDEO_CODEC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_AVAILABLE_VIDEO_CODEC:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 82
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_CAMERA_SWITCH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_SWITCH:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 83
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    const-string/jumbo v1, "ARTC_EVENT_CAMERA_UNAVAILABLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_UNAVAILABLE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_CONNECTION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_CREATINGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_CREATEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_JOININGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_JOINEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_SENDSDPCANDIDATE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_RECVSDPCANDIDATE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_ICE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_LEAVINGCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_SIGNALING_LEAVEDCHANNEL:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_LCAK_PERMISSION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_OPEN_CAMERA:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_INIT_MEDIA_RESOURCE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_AVAILABLE_VIDEO_CODEC:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_SWITCH:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_CAMERA_UNAVAILABLE:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    return-object v0
.end method
