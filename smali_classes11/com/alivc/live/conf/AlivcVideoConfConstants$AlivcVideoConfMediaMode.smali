.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlivcVideoConfMediaMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

.field public static final enum AlivcVideoConfMediaModeAll:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

.field public static final enum AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

.field public static final enum AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    const-string/jumbo v1, "AlivcVideoConfMediaModeAll"

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAll:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    .line 110
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    const-string/jumbo v1, "AlivcVideoConfMediaModeVideo"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    .line 115
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    const-string/jumbo v1, "AlivcVideoConfMediaModeAudio"

    invoke-direct {v0, v1, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAll:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeVideo:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->AlivcVideoConfMediaModeAudio:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    return-object v0
.end method
