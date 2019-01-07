.class public final enum Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
.super Ljava/lang/Enum;
.source "UploadLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/sync/UploadLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-string/jumbo v1, "TWO_GENERATION"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-string/jumbo v1, "THRID_GENERATION"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-string/jumbo v1, "FOUR_GENERATION"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->$VALUES:[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->$VALUES:[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0}, [Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object v0
.end method
