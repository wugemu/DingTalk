.class public Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;
.super Ljava/lang/Object;
.source "DoraemonUT.java"


# static fields
.field private static final BT:Ljava/lang/String; = "Button"

.field public static final DD_PACKAGE:Ljava/lang/String; = "com.alibaba.android.rimet"

.field private static final DEBUG_STATISTICS_2_LOG_KEY:Ljava/lang/String; = "DDStatistics"

.field private static MOTU_FG_INTERVAL:I = 0x0

.field private static final PRE:Ljava/lang/String; = "_pre"

.field private static final SPM:Ljava/lang/String; = "spm"

.field private static final SPM_CNT:Ljava/lang/String; = "spm-cnt"

.field private static final SPM_PRE:Ljava/lang/String; = "spm-pre"

.field private static final SPM_URL:Ljava/lang/String; = "spm-url"

.field private static final TAG:Ljava/lang/String; = "DoraemonUT"

.field private static final UT_MAP:Ljava/lang/String; = "ut-map"

.field private static final VERSION_CODE:Ljava/lang/String; = "1.0"

.field private static mCachedClickedSpm:Ljava/lang/String;

.field private static mSpmCnt:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentUserId:Ljava/lang/String;

.field private static sDebugStatistics2Log:Z

.field public static sHasUTPkg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 44
    sput-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    .line 52
    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    .line 54
    const/16 v3, 0x258

    sput v3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->MOTU_FG_INTERVAL:I

    .line 58
    sput-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    .line 76
    :try_start_0
    const-string/jumbo v3, "com.ut.mini.UTAnalytics"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 77
    .local v2, "utClass":Ljava/lang/Class;
    const-string/jumbo v3, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, "mtClass":Ljava/lang/Class;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 80
    const/4 v3, 0x1

    sput-boolean v3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v1    # "mtClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    .line 628
    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mSpmCnt:Ljava/lang/String;

    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 84
    sput-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-boolean v6, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v6, :cond_1

    .line 146
    const-string/jumbo v6, "com.alibaba.android.rimet"

    sget-object v7, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "please add UT module !"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DoraemonUT"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_1
    const-string/jumbo v6, "DoraemonUT"

    const-string/jumbo v7, "please add UT module"

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    if-ne v6, v7, :cond_4

    sget-boolean v6, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    if-eqz v6, :cond_4

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    if-eqz p2, :cond_3

    .line 160
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 164
    const-string/jumbo v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v6, "DDStatistics"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    const-string/jumbo p0, "UnKnown"

    .line 180
    :goto_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 181
    .local v0, "ctrNameBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 183
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v3, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    if-eqz p2, :cond_5

    .line 185
    invoke-virtual {v3, p2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 188
    :cond_5
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v6

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "ctrNameBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 177
    .local v4, "pageNameBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v6, "Page_"

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string/jumbo v5, "spm"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    :cond_0
    const/4 v5, 0x0

    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    .line 99
    :goto_0
    sget-boolean v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v5, :cond_3

    .line 100
    const-string/jumbo v5, "com.alibaba.android.rimet"

    sget-object v6, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "please add UT module !"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_1
    const-string/jumbo v5, "spm"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_2
    const-string/jumbo v5, "DoraemonUT"

    const-string/jumbo v6, "please add UT module"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    return-void

    .line 108
    :cond_3
    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    if-ne v5, v6, :cond_6

    sget-boolean v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    if-eqz v5, :cond_6

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    if-eqz p1, :cond_5

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 116
    const-string/jumbo v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 122
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v5, "DDStatistics"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 127
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "-"

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 128
    new-instance v2, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 130
    invoke-virtual {v2, p1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 133
    :cond_7
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 134
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    :catch_0
    move-exception v4

    .line 139
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "DoraemonUT"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static ctrlClickedWithBtn(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string/jumbo v5, "spm"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 663
    :cond_0
    const/4 v5, 0x0

    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    .line 668
    :goto_0
    sget-boolean v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v5, :cond_3

    .line 669
    const-string/jumbo v5, "com.alibaba.android.rimet"

    sget-object v6, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 670
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "please add UT module !"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 665
    :cond_1
    const-string/jumbo v5, "spm"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    goto :goto_0

    .line 673
    :cond_2
    const-string/jumbo v5, "DoraemonUT"

    const-string/jumbo v6, "please add UT module"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_1
    return-void

    .line 677
    :cond_3
    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    if-ne v5, v6, :cond_6

    sget-boolean v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    if-eqz v5, :cond_6

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    if-eqz p1, :cond_5

    .line 681
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 682
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 685
    const-string/jumbo v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 691
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v5, "DDStatistics"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 696
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v5, "Button"

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 697
    new-instance v2, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    .local v2, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 699
    invoke-virtual {v2, p1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 702
    :cond_7
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 703
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    :catch_0
    move-exception v4

    .line 708
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "DoraemonUT"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v1, :cond_0

    .line 562
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->warnNoUTModule()V

    .line 565
    :cond_0
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v0, p1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "builder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 567
    invoke-virtual {v0, p0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 569
    :cond_1
    if-eqz p2, :cond_2

    .line 570
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 573
    :cond_2
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 574
    return-void
.end method

.method public static enterPage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "pageObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 302
    return-void
.end method

.method public static enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "pageObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v2, :cond_2

    .line 324
    const-string/jumbo v2, "com.alibaba.android.rimet"

    sget-object v3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "please add UT module !"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_0
    const-string/jumbo v2, "DoraemonUT"

    const-string/jumbo v3, "please add UT module"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ut/mini/UTTracker;->pageAppearDonotSkip(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 336
    if-nez p2, :cond_3

    .line 337
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 339
    .restart local p2    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v2, "userId"

    sget-object v3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 343
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 344
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "Page_"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 345
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_5
    if-eqz p2, :cond_6

    .line 349
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    .line 352
    :cond_6
    const/4 v1, 0x0

    .line 354
    .local v1, "spmCnt":Ljava/lang/String;
    if-eqz p2, :cond_7

    const-string/jumbo v2, "spm-cnt"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 355
    const-string/jumbo v2, "spm-cnt"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "spmCnt":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 358
    .restart local v1    # "spmCnt":Ljava/lang/String;
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 359
    invoke-static {p0, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->updatePageSpmCnt(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p0, "page"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "arg1"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "arg2"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v1, :cond_0

    .line 741
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->warnNoUTModule()V

    .line 744
    :cond_0
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-boolean v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    if-eqz v1, :cond_3

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "arg1="

    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "arg2="

    .line 748
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "arg3="

    .line 749
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 750
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_2

    .line 751
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 752
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 755
    const-string/jumbo v1, "\t"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const-string/jumbo v1, "-"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 761
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "DDStatistics"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v2, 0x899

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 765
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 766
    return-void
.end method

.method public static getCachedClickedSpm()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 718
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    .line 719
    .local v0, "tmp":Ljava/lang/String;
    sput-object v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    .line 720
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mSpmCnt:Ljava/lang/String;

    .line 722
    sput-object v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mSpmCnt:Ljava/lang/String;

    .line 724
    :cond_0
    return-object v0
.end method

.method public static getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method private static getUtMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 423
    if-nez p0, :cond_0

    move-object v2, v3

    .line 444
    .end local p0    # "object":Ljava/lang/Object;
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 426
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .line 427
    .restart local v0    # "bundle":Landroid/os/Bundle;
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 428
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 429
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 433
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v2, "ut-map"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 434
    const-string/jumbo v2, "ut-map"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 436
    :try_start_0
    const-string/jumbo v2, "ut-map"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 441
    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 444
    goto :goto_0
.end method

.method private static getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "1.0.0"

    goto :goto_0
.end method

.method public static initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "usernick"    # Ljava/lang/String;
    .param p1, "ttid"    # Ljava/lang/String;
    .param p2, "runningMode"    # I
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appSecret"    # Ljava/lang/String;
    .param p5, "needWatch"    # Z

    .prologue
    .line 450
    :try_start_0
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne p2, v1, :cond_1

    .line 451
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->enableLog(Z)V

    .line 455
    :goto_0
    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setSampling(I)V

    .line 456
    sget v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->MOTU_FG_INTERVAL:I

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setStatisticsInterval(I)V

    .line 458
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, p2, :cond_0

    .line 459
    invoke-static {p2, p0, p3, p1, p5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->initMotuCrashReporter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 462
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1, p0, p0}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_1
    return-void

    .line 453
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->enableLog(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static initMotuCrashReporter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "runningMode"    # I
    .param p1, "usernick"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "needWatch"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 586
    new-instance v7, Lcom/alibaba/motu/crashreporter/ReporterConfigure;

    invoke-direct {v7}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;-><init>()V

    .line 587
    .local v7, "reporterConfigure":Lcom/alibaba/motu/crashreporter/ReporterConfigure;
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, p0, :cond_1

    move v0, v9

    :goto_0
    invoke-virtual {v7, v0}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableDebug(Z)V

    .line 588
    invoke-virtual {v7, v9}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableDumpSysLog(Z)V

    .line 589
    invoke-virtual {v7, v9}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableDumpRadioLog(Z)V

    .line 590
    invoke-virtual {v7, v9}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableDumpEventsLog(Z)V

    .line 591
    invoke-virtual {v7, v9}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableCatchANRException(Z)V

    .line 592
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne v0, p0, :cond_2

    move v0, v9

    :goto_1
    invoke-virtual {v7, v0}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableANRMainThreadOnly(Z)V

    .line 593
    invoke-virtual {v7, v9}, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->setEnableDumpAllThread(Z)V

    .line 594
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 595
    .local v8, "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v8, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@android"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 596
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->getVersionName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p2

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/motu/crashreporter/ReporterConfigure;)Z

    .line 597
    invoke-static {}, Lcom/alibaba/motu/watch/MotuWatch;->getInstance()Lcom/alibaba/motu/watch/MotuWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/motu/watch/MotuWatch;->getWatchConfig()Lcom/alibaba/motu/watch/WatchConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    if-eqz p4, :cond_3

    .line 599
    invoke-static {}, Lcom/alibaba/motu/watch/MotuWatch;->getInstance()Lcom/alibaba/motu/watch/MotuWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/motu/watch/MotuWatch;->getWatchConfig()Lcom/alibaba/motu/watch/WatchConfig;

    move-result-object v0

    iput-boolean v10, v0, Lcom/alibaba/motu/watch/WatchConfig;->closeMainLooperMonitor:Z

    .line 606
    :cond_0
    :goto_2
    return-void

    .end local v8    # "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    move v0, v10

    .line 587
    goto :goto_0

    :cond_2
    move v0, v10

    .line 592
    goto :goto_1

    .line 601
    .restart local v8    # "appIdStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne v0, p0, :cond_0

    .line 602
    invoke-static {}, Lcom/alibaba/motu/watch/MotuWatch;->getInstance()Lcom/alibaba/motu/watch/MotuWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/motu/watch/MotuWatch;->getWatchConfig()Lcom/alibaba/motu/watch/WatchConfig;

    move-result-object v0

    iput-boolean v9, v0, Lcom/alibaba/motu/watch/WatchConfig;->closeMainLooperMonitor:Z

    goto :goto_2
.end method

.method public static initUT(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "ttid"    # Ljava/lang/String;
    .param p2, "runningMode"    # I
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appSecret"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xb

    .line 469
    sget-boolean v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v1, :cond_0

    .line 470
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->warnNoUTModule()V

    .line 474
    :cond_0
    :try_start_0
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 475
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 478
    :cond_1
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT$1;

    invoke-direct {v2, p1, p3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V

    .line 519
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->turnOffAutoPageTrack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 524
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_3

    .line 525
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 526
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 525
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 548
    :cond_2
    :goto_0
    return-void

    .line 530
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_4

    .line 531
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 532
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 531
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0

    .line 538
    :cond_4
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 539
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 538
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 524
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_5

    .line 525
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 526
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 525
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0

    .line 530
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_6

    .line 531
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 532
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 531
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/16 :goto_0

    .line 538
    :cond_6
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 539
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 538
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/16 :goto_0

    .line 523
    .end local v0    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 524
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_8

    .line 525
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 526
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 527
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 529
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 525
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 538
    :cond_7
    :goto_1
    throw v1

    .line 530
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_9

    .line 531
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 532
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 533
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 536
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 531
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    .line 538
    :cond_9
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 539
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 541
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 544
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 538
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1
.end method

.method public static isDebugStatistics2Log()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    return v0
.end method

.method public static itemClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v4, :cond_1

    .line 239
    const-string/jumbo v4, "com.alibaba.android.rimet"

    sget-object v5, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "please add UT module !"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DoraemonUT"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 243
    :cond_0
    :try_start_1
    const-string/jumbo v4, "DoraemonUT"

    const-string/jumbo v5, "please add UT module"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_1
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-ne v4, v5, :cond_4

    sget-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    if-eqz v4, :cond_4

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    if-eqz p2, :cond_3

    .line 253
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 257
    const-string/jumbo v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v4, "DDStatistics"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v2, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-direct {v2, p0, p1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v2, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    if-eqz p2, :cond_5

    .line 268
    invoke-virtual {v2, p2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 271
    :cond_5
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static itemClicked(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v4, :cond_0

    .line 201
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->warnNoUTModule()V

    .line 204
    :cond_0
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-ne v4, v5, :cond_3

    sget-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    if-eqz v4, :cond_3

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    if-eqz p1, :cond_2

    .line 208
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 212
    const-string/jumbo v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DoraemonUT"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 218
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "DDStatistics"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v2, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-direct {v2, p0}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    if-eqz p1, :cond_4

    .line 223
    invoke-virtual {v2, p1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 226
    :cond_4
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static leavePage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "pageObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 369
    return-void
.end method

.method public static leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "pageObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    sput-object v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mSpmCnt:Ljava/lang/String;

    .line 377
    sget-boolean v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v2, :cond_1

    .line 378
    const-string/jumbo v2, "com.alibaba.android.rimet"

    sget-object v3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "please add UT module !"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_0
    const-string/jumbo v2, "DoraemonUT"

    const-string/jumbo v3, "please add UT module"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return-void

    .line 388
    :cond_1
    sget-object v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    if-nez p2, :cond_2

    .line 390
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 392
    .restart local p2    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v2, "userId"

    sget-object v3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 396
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 397
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "Page_"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 399
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_4
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->getUtMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 403
    .local v1, "utMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 404
    invoke-static {v1}, Lcom/alibaba/doraemon/impl/statistics/ut/UserTrackUtils;->convertToUrlEncodedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 405
    const-string/jumbo v2, "_pre"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v2, "spm-url"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v2, "spm-pre"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 411
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    .line 414
    :cond_6
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loginFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v1, :cond_0

    .line 578
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->warnNoUTModule()V

    .line 581
    :cond_0
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v2, 0x303

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 582
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 583
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sput-object p0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public static setCurrentUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 282
    sput-object p0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setUserNick(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static setDebugStatistics2Log(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 293
    sput-boolean p0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sDebugStatistics2Log:Z

    .line 294
    return-void
.end method

.method public static trackPageEnter(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "pageObj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 305
    if-eqz p2, :cond_0

    .line 306
    const-string/jumbo v2, "ut-map"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ut-map"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 308
    :try_start_0
    const-string/jumbo v2, "ut-map"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 309
    .local v1, "utMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string/jumbo v2, "_pre"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    const-string/jumbo v2, "isbk"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v1    # "utMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/statistics/ut/UserTrackUtils;->convertToUrlEncodedMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DoraemonUT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, "ut-map"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method public static updatePageSpmCnt(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "pageObject"    # Ljava/lang/Object;
    .param p1, "spmCnt"    # Ljava/lang/String;

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->updatePageSpmCnt(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 632
    return-void
.end method

.method public static updatePageSpmCnt(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "pageObject"    # Ljava/lang/Object;
    .param p1, "spmCnt"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p2, "argMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 641
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 643
    :cond_1
    const-string/jumbo v1, "spm-cnt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v1, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sput-object p1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mSpmCnt:Ljava/lang/String;

    .line 646
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static updateUserAccount(Ljava/lang/String;)V
    .locals 1
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 551
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_0

    .line 552
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->warnNoUTModule()V

    .line 555
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_1
    return-void
.end method

.method public static uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ctrlName"    # Ljava/lang/String;
    .param p3, "spm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 650
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 651
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 653
    .restart local p2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    const-string/jumbo v0, "spm"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_1
    const-string/jumbo v0, "log_ding_version"

    const-string/jumbo v1, "1.0"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sput-object p3, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->mCachedClickedSpm:Ljava/lang/String;

    .line 658
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/statistics/ut/UserTrackUtils;->convertToUrlEncodedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->ctrlClickedWithBtn(Ljava/lang/String;Ljava/util/Map;)V

    .line 659
    return-void
.end method

.method private static warnNoUTModule()V
    .locals 2

    .prologue
    .line 617
    const-string/jumbo v0, "com.alibaba.android.rimet"

    sget-object v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 620
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    const-string/jumbo v0, "DoraemonUT"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method
