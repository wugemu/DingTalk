.class final enum Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;
.super Ljava/lang/Enum;
.source "ArtcLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/utils/ArtcLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LoggingSeverity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_DEBUG:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_DEFAULT:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_ERROR:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_INFO:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_LOG_FATAL:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_NONE:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_UNKNOWN:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_VERBOSE:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

.field public static final enum LS_WARNING:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_UNKNOWN:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 47
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_DEFAULT:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 48
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_VERBOSE"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_VERBOSE:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 49
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_DEBUG:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 50
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_INFO"

    invoke-direct {v0, v1, v7}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_INFO:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 51
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_WARNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_WARNING:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 52
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_ERROR:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 53
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_LOG_FATAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_LOG_FATAL:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 54
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    const-string/jumbo v1, "LS_NONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_NONE:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_UNKNOWN:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_DEFAULT:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_VERBOSE:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_DEBUG:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_INFO:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_WARNING:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_ERROR:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_LOG_FATAL:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_NONE:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->$VALUES:[Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->$VALUES:[Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    invoke-virtual {v0}, [Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    return-object v0
.end method
