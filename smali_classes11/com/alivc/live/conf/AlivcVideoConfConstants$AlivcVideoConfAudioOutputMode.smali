.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlivcVideoConfAudioOutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

.field public static final enum AlivcVideoConfAudioOutputModeReceiver:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

.field public static final enum AlivcVideoConfAudioOutputModeSpeaker:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    const-string/jumbo v1, "AlivcVideoConfAudioOutputModeReceiver"

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeReceiver:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .line 73
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    const-string/jumbo v1, "AlivcVideoConfAudioOutputModeSpeaker"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeSpeaker:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeReceiver:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeSpeaker:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    return-object v0
.end method
