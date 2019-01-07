.class public final enum Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;
.super Ljava/lang/Enum;
.source "SearchEngineStatisticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

.field public static final enum End:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

.field public static final enum Start:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    const-string/jumbo v1, "Start"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->Start:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    .line 104
    new-instance v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    const-string/jumbo v1, "End"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->End:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    sget-object v1, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->Start:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->End:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->$VALUES:[Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->$VALUES:[Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    invoke-virtual {v0}, [Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    return-object v0
.end method
