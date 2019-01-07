.class public final enum Lcom/alibaba/analytics/core/model/UTMCLogFields;
.super Ljava/lang/Enum;
.source "UTMCLogFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/analytics/core/model/UTMCLogFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/analytics/core/model/UTMCLogFields;

.field public static final enum AGGREGATION_LOG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

.field public static final enum ALIYUN_PLATFORM_FLAG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

.field public static final enum DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;

    const-string/jumbo v1, "DEVICE_ID"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/analytics/core/model/UTMCLogFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    .line 9
    new-instance v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;

    const-string/jumbo v1, "AGGREGATION_LOG"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/analytics/core/model/UTMCLogFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;->AGGREGATION_LOG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    .line 10
    new-instance v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;

    const-string/jumbo v1, "ALIYUN_PLATFORM_FLAG"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/analytics/core/model/UTMCLogFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;->ALIYUN_PLATFORM_FLAG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/analytics/core/model/UTMCLogFields;

    sget-object v1, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/analytics/core/model/UTMCLogFields;->AGGREGATION_LOG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/analytics/core/model/UTMCLogFields;->ALIYUN_PLATFORM_FLAG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;->$VALUES:[Lcom/alibaba/analytics/core/model/UTMCLogFields;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/analytics/core/model/UTMCLogFields;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/analytics/core/model/UTMCLogFields;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;->$VALUES:[Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual {v0}, [Lcom/alibaba/analytics/core/model/UTMCLogFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/analytics/core/model/UTMCLogFields;

    return-object v0
.end method
