.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlivcVideoConfVideoStreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

.field public static final enum AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

.field public static final enum AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

.field public static final enum AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

.field public static final enum AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    const-string/jumbo v1, "AlivcVideoConfVideoStreamTypeLarge"

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 242
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    const-string/jumbo v1, "AlivcVideoConfVideoStreamTypeSmall"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 244
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    const-string/jumbo v1, "AlivcVideoConfVideoStreamTypeScreenShare"

    invoke-direct {v0, v1, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 246
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    const-string/jumbo v1, "AlivcVideoConfVideoStreamTypeAudioOnly"

    invoke-direct {v0, v1, v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 238
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

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
    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 238
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    return-object v0
.end method
