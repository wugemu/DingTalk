.class public final enum Lali/mmpc/pwp/LogCallback$LogLevel;
.super Ljava/lang/Enum;
.source "LogCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/LogCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/pwp/LogCallback$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/pwp/LogCallback$LogLevel;

.field public static final enum LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

.field public static final enum LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

.field public static final enum LOG_LEVEL_INFO:Lali/mmpc/pwp/LogCallback$LogLevel;

.field public static final enum LOG_LEVEL_WARNING:Lali/mmpc/pwp/LogCallback$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v1, "LOG_LEVEL_DEBUG"

    invoke-direct {v0, v1, v2}, Lali/mmpc/pwp/LogCallback$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    .line 9
    new-instance v0, Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v1, "LOG_LEVEL_INFO"

    invoke-direct {v0, v1, v3}, Lali/mmpc/pwp/LogCallback$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_INFO:Lali/mmpc/pwp/LogCallback$LogLevel;

    .line 10
    new-instance v0, Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v1, "LOG_LEVEL_WARNING"

    invoke-direct {v0, v1, v4}, Lali/mmpc/pwp/LogCallback$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_WARNING:Lali/mmpc/pwp/LogCallback$LogLevel;

    .line 11
    new-instance v0, Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v1, "LOG_LEVEL_ERROR"

    invoke-direct {v0, v1, v5}, Lali/mmpc/pwp/LogCallback$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lali/mmpc/pwp/LogCallback$LogLevel;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_INFO:Lali/mmpc/pwp/LogCallback$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_WARNING:Lali/mmpc/pwp/LogCallback$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->$VALUES:[Lali/mmpc/pwp/LogCallback$LogLevel;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/pwp/LogCallback$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lali/mmpc/pwp/LogCallback$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/pwp/LogCallback$LogLevel;

    return-object v0
.end method

.method public static values()[Lali/mmpc/pwp/LogCallback$LogLevel;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->$VALUES:[Lali/mmpc/pwp/LogCallback$LogLevel;

    invoke-virtual {v0}, [Lali/mmpc/pwp/LogCallback$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/pwp/LogCallback$LogLevel;

    return-object v0
.end method
