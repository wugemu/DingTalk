.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlivcVideoConfLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_DEBUG:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_DUMP:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_ERROR:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_FATAL:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_INFO:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_NONE:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_VERBOSE:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

.field public static final enum AliRTCSDK_LOG_WARNING:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;


# instance fields
.field private logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_DUMP"

    invoke-direct {v0, v1, v4, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_DUMP:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 205
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_DEBUG"

    invoke-direct {v0, v1, v5, v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_DEBUG:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 207
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_VERBOSE"

    invoke-direct {v0, v1, v6, v6}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_VERBOSE:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 209
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_INFO"

    invoke-direct {v0, v1, v7, v7}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_INFO:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 211
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_WARNING"

    invoke-direct {v0, v1, v8, v8}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_WARNING:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 213
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_ERROR:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 215
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_FATAL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_FATAL:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 217
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    const-string/jumbo v1, "AliRTCSDK_LOG_NONE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_NONE:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    .line 201
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_DUMP:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_DEBUG:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_VERBOSE:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_INFO:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_WARNING:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_ERROR:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_FATAL:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->AliRTCSDK_LOG_NONE:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "logLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p3, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->logLevel:I

    .line 222
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfLogLevel;->logLevel:I

    return v0
.end method
