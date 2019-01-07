.class public final enum Lcom/taobao/living/api/TBConstants$TBLiveStreamState;
.super Ljava/lang/Enum;
.source "TBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/api/TBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TBLiveStreamState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/living/api/TBConstants$TBLiveStreamState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateConnected:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateConnectionRetry:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateEnded:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateError:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateNone:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStatePreviewStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

.field public static final enum TBLiveStreamStateStarting:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateNone"

    invoke-direct {v0, v1, v3}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateNone:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 32
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStatePreviewStarted"

    invoke-direct {v0, v1, v4}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStatePreviewStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 33
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateStarting"

    invoke-direct {v0, v1, v5}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarting:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 34
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateStarted"

    invoke-direct {v0, v1, v6}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 35
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateEnded"

    invoke-direct {v0, v1, v7}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateEnded:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 36
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateError:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 37
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateConnected"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnected:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 38
    new-instance v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    const-string/jumbo v1, "TBLiveStreamStateConnectionRetry"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnectionRetry:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateNone:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStatePreviewStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarting:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateStarted:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateEnded:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateError:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnected:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->TBLiveStreamStateConnectionRetry:Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->$VALUES:[Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/living/api/TBConstants$TBLiveStreamState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    return-object v0
.end method

.method public static values()[Lcom/taobao/living/api/TBConstants$TBLiveStreamState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->$VALUES:[Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-virtual {v0}, [Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    return-object v0
.end method
