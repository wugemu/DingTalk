.class public final enum Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;
.super Ljava/lang/Enum;
.source "TBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/api/TBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VCLinkLiveEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalAVDataReceiveTimeout:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalCallFailed:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalCallTimeOut:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalCalled:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalCalling:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalNetworkErr:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveLocalReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveNone:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLivePlayViewCreated:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLivePlayViewStartRendering:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveRemoteAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveRemoteCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveRemoteReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

.field public static final enum VCLinkLiveStarted:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveNone"

    invoke-direct {v0, v1, v3}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveNone:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 49
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLivePlayViewCreated"

    invoke-direct {v0, v1, v4}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLivePlayViewCreated:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 54
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLivePlayViewStartRendering"

    invoke-direct {v0, v1, v5}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLivePlayViewStartRendering:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 55
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalCalled"

    invoke-direct {v0, v1, v6}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalled:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 56
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalCalling"

    invoke-direct {v0, v1, v7}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalling:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 57
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalEnd"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 58
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalCancel"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 59
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalAccept"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 60
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalReject"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 61
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveRemoteAccept"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 62
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveRemoteReject"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 63
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveRemoteEnd"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 64
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveRemoteCancel"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 65
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalCallTimeOut"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallTimeOut:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 66
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalNetworkErr"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalNetworkErr:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 67
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveStarted"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveStarted:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 68
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalCallFailed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallFailed:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 69
    new-instance v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    const-string/jumbo v1, "VCLinkLiveLocalAVDataReceiveTimeout"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalAVDataReceiveTimeout:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    .line 47
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveNone:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLivePlayViewCreated:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLivePlayViewStartRendering:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalled:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCalling:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteAccept:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteReject:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteEnd:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveRemoteCancel:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallTimeOut:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalNetworkErr:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveStarted:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalCallFailed:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->VCLinkLiveLocalAVDataReceiveTimeout:Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->$VALUES:[Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    return-object v0
.end method

.method public static values()[Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->$VALUES:[Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    invoke-virtual {v0}, [Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/living/api/TBConstants$VCLinkLiveEvent;

    return-object v0
.end method
