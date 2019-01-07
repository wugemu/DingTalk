.class public final enum Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;
.super Ljava/lang/Enum;
.source "TBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/api/TBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TBLiveStreamNetworkStauts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

.field public static final enum TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

.field public static final enum TBLiveStreamNetworkNormal:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

.field public static final enum TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    const-string/jumbo v1, "TBLiveStreamNetworkWorse"

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .line 43
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    const-string/jumbo v1, "TBLiveStreamNetworkNormal"

    invoke-direct {v0, v1, v3}, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkNormal:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .line 44
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    const-string/jumbo v1, "TBLiveStreamNetworkExcellent"

    invoke-direct {v0, v1, v4}, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkNormal:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->$VALUES:[Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    return-object v0
.end method

.method public static values()[Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->$VALUES:[Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-virtual {v0}, [Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    return-object v0
.end method
