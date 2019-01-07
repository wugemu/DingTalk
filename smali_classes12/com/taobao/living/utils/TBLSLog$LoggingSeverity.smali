.class final enum Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;
.super Ljava/lang/Enum;
.source "TBLSLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/utils/TBLSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LoggingSeverity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

.field public static final enum LS_ERROR:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

.field public static final enum LS_INFO:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

.field public static final enum LS_NONE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

.field public static final enum LS_SENSITIVE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

.field public static final enum LS_VERBOSE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

.field public static final enum LS_WARNING:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    const-string/jumbo v1, "LS_SENSITIVE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_SENSITIVE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    .line 38
    new-instance v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    const-string/jumbo v1, "LS_VERBOSE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_VERBOSE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    .line 39
    new-instance v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    const-string/jumbo v1, "LS_INFO"

    invoke-direct {v0, v1, v5}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_INFO:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    .line 40
    new-instance v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    const-string/jumbo v1, "LS_WARNING"

    invoke-direct {v0, v1, v6}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_WARNING:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    .line 41
    new-instance v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    const-string/jumbo v1, "LS_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_ERROR:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    .line 42
    new-instance v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    const-string/jumbo v1, "LS_NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_NONE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    sget-object v1, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_SENSITIVE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_VERBOSE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_INFO:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_WARNING:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_ERROR:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->LS_NONE:Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->$VALUES:[Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    return-object v0
.end method

.method public static values()[Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->$VALUES:[Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    invoke-virtual {v0}, [Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    return-object v0
.end method
