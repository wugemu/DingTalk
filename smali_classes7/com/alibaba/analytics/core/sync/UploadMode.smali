.class public final enum Lcom/alibaba/analytics/core/sync/UploadMode;
.super Ljava/lang/Enum;
.source "UploadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/analytics/core/sync/UploadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/analytics/core/sync/UploadMode;

.field public static final enum BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

.field public static final enum DEVELOPMENT:Lcom/alibaba/analytics/core/sync/UploadMode;

.field public static final enum INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

.field public static final enum LAUNCH:Lcom/alibaba/analytics/core/sync/UploadMode;

.field public static final enum REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    const-string/jumbo v1, "REALTIME"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/analytics/core/sync/UploadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 5
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    const-string/jumbo v1, "BATCH"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/analytics/core/sync/UploadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 6
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    const-string/jumbo v1, "LAUNCH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/analytics/core/sync/UploadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->LAUNCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 7
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    const-string/jumbo v1, "INTERVAL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/analytics/core/sync/UploadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 8
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    const-string/jumbo v1, "DEVELOPMENT"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/analytics/core/sync/UploadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->DEVELOPMENT:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/analytics/core/sync/UploadMode;

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->LAUNCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->DEVELOPMENT:Lcom/alibaba/analytics/core/sync/UploadMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->$VALUES:[Lcom/alibaba/analytics/core/sync/UploadMode;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->$VALUES:[Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v0}, [Lcom/alibaba/analytics/core/sync/UploadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object v0
.end method
