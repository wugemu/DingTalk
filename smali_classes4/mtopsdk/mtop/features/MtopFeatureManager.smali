.class public final Lmtopsdk/mtop/features/MtopFeatureManager;
.super Ljava/lang/Object;
.source "MtopFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopFeatureManager"

.field private static mtopFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager;->mtopFeatureMap:Ljava/util/Map;

    .line 17
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v0, v1}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V

    .line 18
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v0, v1}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V

    .line 19
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v0, v1}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V

    .line 20
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v0, v1}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getMtopFeatureValue(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;)J
    .locals 6
    .param p0, "featureEnum"    # Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const-wide/16 v0, 0x0

    .line 86
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->getFeature()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v1, v2

    shl-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getMtopTotalFeatures()J
    .locals 8

    .prologue
    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .local v4, "totalFeature":J
    sget-object v3, Lmtopsdk/mtop/features/MtopFeatureManager;->mtopFeatureMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const-wide/16 v4, 0x0

    .line 58
    :cond_0
    :goto_0
    return-wide v4

    .line 49
    :cond_1
    :try_start_0
    sget-object v3, Lmtopsdk/mtop/features/MtopFeatureManager;->mtopFeatureMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v3}, Lmtopsdk/mtop/features/MtopFeatureManager;->getMtopFeatureValue(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    or-long/2addr v4, v6

    goto :goto_1

    .line 54
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Ljava/lang/Boolean;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.MtopFeatureManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[getMtopTotalFeatures] get mtop total features error.---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V
    .locals 3
    .param p0, "feature"    # Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .param p1, "openFlag"    # Z

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 69
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager;->mtopFeatureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "mtopsdk.MtopFeatureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setMtopFeatureFlag] set feature="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , openFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method
