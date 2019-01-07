.class public final enum Lcom/taobao/artc/api/AConstants$ArtcLogLevel;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArtcLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$ArtcLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_DEBUG:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_DEFAULT:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_ERROR:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_FATAL:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_INFO:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_SILENT:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_UNKNOWN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_VERBOSE:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

.field public static final enum ARTC_LOG_WARN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_UNKNOWN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 168
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_DEFAULT:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 169
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_VERBOSE"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_VERBOSE:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 170
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_DEBUG:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 171
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_INFO"

    invoke-direct {v0, v1, v7}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_INFO:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 172
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_WARN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_WARN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 173
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_ERROR:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 174
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_FATAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_FATAL:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 175
    new-instance v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    const-string/jumbo v1, "ARTC_LOG_SILENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_SILENT:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    .line 166
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_UNKNOWN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_DEFAULT:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_VERBOSE:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_DEBUG:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_INFO:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_WARN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_ERROR:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_FATAL:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_SILENT:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$ArtcLogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    const-class v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$ArtcLogLevel;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->$VALUES:[Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    return-object v0
.end method
