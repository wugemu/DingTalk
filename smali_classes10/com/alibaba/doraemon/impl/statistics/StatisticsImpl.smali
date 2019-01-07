.class public Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;
.super Ljava/lang/Object;
.source "StatisticsImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/statistics/Statistics;


# static fields
.field public static final CASE_TYPE_ACTIVITY:I = 0x1

.field public static final CASE_TYPE_CUSTOM:I = 0x3

.field public static final CASE_TYPE_FRAGMENT:I = 0x2

.field private static final CUSTOM_STATISTIC_LOGIN_FAIL:I = 0x102fd

.field private static final EVENT_MAX_SIZE:I = 0x14

.field private static final KEY_SEPARATOR:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "StatisticsImpl"

.field private static final WARN_EVENT_ID:I = 0x10302


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDurationEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/statistics/StatisticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUnifyStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    .line 1053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mUnifyStatisticsMap:Ljava/util/Map;

    .line 63
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->setContext(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static enableStat(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1040
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 1050
    :goto_0
    return v0

    .line 1043
    :cond_0
    sget-boolean v1, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v1, :cond_2

    .line 1044
    const-string/jumbo v1, "com.alibaba.android.rimet"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_1
    const-string/jumbo v1, "StatisticsImpl"

    const-string/jumbo v2, "please add UT module"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1050
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private newUnifyStatisticsInstance(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1094
    packed-switch p1, :pswitch_data_0

    .line 1105
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 1109
    .local v0, "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    :goto_0
    return-object v0

    .line 1096
    .end local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    :pswitch_0
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 1097
    .restart local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    goto :goto_0

    .line 1099
    .end local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    :pswitch_1
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/FileUploadUnifyStatisticsImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUploadUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 1100
    .restart local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    goto :goto_0

    .line 1102
    .end local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    :pswitch_2
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/FileDownloadUnifyStatisticsImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FileDownloadUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 1103
    .restart local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 793
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 802
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 803
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p4, "value"    # D

    .prologue
    .line 770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 779
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 780
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    goto :goto_0
.end method

.method public commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p4, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 705
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 714
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 715
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0
.end method

.method public commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 454
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 455
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "value"    # D

    .prologue
    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 477
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 478
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public commitFaultEvent(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 816
    return-void
.end method

.method public commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 524
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 525
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 571
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 572
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 500
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 501
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_3
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 547
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 548
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public commitStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 728
    .local p3, "dimensionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "measureValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v4, v5, :cond_0

    .line 737
    sget-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v4, :cond_3

    .line 738
    const-string/jumbo v4, "com.alibaba.android.rimet"

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 739
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "please add UT module !"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_2
    const-string/jumbo v4, "StatisticsImpl"

    const-string/jumbo v5, "please add UT module"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_3
    const/4 v0, 0x0

    .line 747
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 748
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 750
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 751
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_1

    .line 755
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v3, 0x0

    .line 756
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 757
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 759
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 760
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v4, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_2

    .line 764
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_5
    invoke-static {p1, p2, v0, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public ctrlClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "ctrName"    # Ljava/lang/String;

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 899
    return-void
.end method

.method public ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "ctrName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 915
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 917
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UT ctrlClicked ctrName is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 923
    :cond_1
    return-void
.end method

.method public ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "ctrName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 903
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 905
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UT ctrlClicked ctrName is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 911
    :cond_1
    return-void
.end method

.method public customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
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
    .line 944
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 945
    return-void
.end method

.method public customEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
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
    .line 939
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 940
    return-void
.end method

.method public endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 431
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 432
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endOffLineDurationStatistics(Ljava/lang/String;)V
    .locals 7
    .param p1, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    .line 137
    .local v2, "mode":I
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v2, v3, :cond_0

    .line 138
    :cond_2
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v4

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 140
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->endEvent()V

    .line 143
    iget-boolean v3, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v3, :cond_4

    .line 144
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/StatisticsListener;

    .line 146
    .local v1, "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/StatisticsListener;->onDurationEvent(Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;)V

    goto :goto_1

    .line 148
    .end local v1    # "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 154
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 148
    .restart local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public endOffLineDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    .line 240
    .local v3, "mode":I
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v4, :cond_2

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v3, v4, :cond_0

    .line 241
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v5

    .line 244
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 245
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_4

    .line 246
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->endEvent()V

    .line 248
    iget-boolean v4, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    if-eqz v4, :cond_4

    iget v4, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v4, :cond_4

    .line 249
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/StatisticsListener;

    .line 251
    .local v2, "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/statistics/StatisticsListener;->onDurationEvent(Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;)V

    goto :goto_1

    .line 253
    .end local v2    # "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 259
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 253
    .restart local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    :cond_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "subMonitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    .line 187
    .local v2, "mode":I
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v2, v3, :cond_0

    .line 188
    :cond_2
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v4

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 190
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->endSubEvent(Ljava/lang/String;)V

    .line 193
    iget-boolean v3, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v3, :cond_4

    .line 195
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/StatisticsListener;

    .line 197
    .local v1, "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/StatisticsListener;->onDurationEvent(Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;)V

    goto :goto_1

    .line 199
    .end local v1    # "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 205
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 199
    .restart local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    :cond_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "subMonitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    .line 292
    .local v3, "mode":I
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v4, :cond_2

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v3, v4, :cond_0

    .line 293
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v5

    .line 295
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 296
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_4

    .line 297
    invoke-virtual {v0, p3}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->endSubEvent(Ljava/lang/String;)V

    .line 299
    iget-boolean v4, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    if-eqz v4, :cond_4

    iget v4, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v4, :cond_4

    .line 301
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/StatisticsListener;

    .line 303
    .local v2, "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/statistics/StatisticsListener;->onDurationEvent(Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;)V

    goto :goto_1

    .line 305
    .end local v2    # "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 311
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 305
    .restart local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :cond_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    :cond_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public endOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "monitorPoints"    # [Ljava/lang/String;
    .param p2, "subMonitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    .line 344
    .local v2, "mode":I
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v4, :cond_2

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v2, v4, :cond_0

    .line 345
    :cond_2
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v5

    .line 346
    :try_start_0
    array-length v6, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v3, p1, v4

    .line 347
    .local v3, "point":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 348
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_4

    .line 349
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->endSubEvent(Ljava/lang/String;)V

    .line 351
    iget-boolean v7, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v7, :cond_4

    .line 352
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/StatisticsListener;

    .line 354
    .local v1, "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/StatisticsListener;->onDurationEvent(Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;)V

    goto :goto_2

    .line 356
    .end local v1    # "listener":Lcom/alibaba/doraemon/statistics/StatisticsListener;
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 363
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    .end local v3    # "point":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 356
    .restart local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    .restart local v3    # "point":Ljava/lang/String;
    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    :try_start_4
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 346
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    .end local v3    # "point":Ljava/lang/String;
    :cond_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public enterPage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "pageObj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 821
    return-void
.end method

.method public enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "pageObj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
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
    .line 883
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 884
    return-void
.end method

.method public exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "page"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "arg2"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "arg3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1081
    .local p5, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1083
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UT exposureManual page is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1089
    :cond_1
    return-void
.end method

.method public exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "page"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg1"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1072
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1073
    return-void
.end method

.method public getAtomStatistics()Lcom/alibaba/doraemon/statistics/Statistics$AtomStatistics;
    .locals 1

    .prologue
    .line 969
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;-><init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;)V

    return-object v0
.end method

.method public getDebugStatistics2Log()Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->isDebugStatistics2Log()Z

    move-result v0

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    .locals 3
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mUnifyStatisticsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    .line 1059
    .local v0, "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    if-nez v0, :cond_0

    .line 1060
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->newUnifyStatisticsInstance(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mUnifyStatisticsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1058
    .end local v0    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "usernick"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "usernick"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;
    .param p6, "needWatch"    # Z

    .prologue
    .line 79
    invoke-static/range {p1 .. p6}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public initTBS(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->initUT(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public itemClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "ctrName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 927
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 929
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UT itemClicked ctrName is null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 935
    :cond_1
    return-void
.end method

.method public leavePage(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "pageObj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 889
    return-void
.end method

.method public leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "pageObj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
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
    .line 893
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 894
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p4, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 636
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p4, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p5, "isCommitDetail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 640
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_2

    .line 641
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    .line 658
    invoke-static {p1, p2, p4, p3, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 612
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_2

    .line 613
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 621
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    .line 630
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    goto :goto_0
.end method

.method public registerMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    sget-boolean v2, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v2, :cond_2

    .line 585
    const-string/jumbo v2, "com.alibaba.android.rimet"

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "please add UT module !"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_0
    const-string/jumbo v2, "StatisticsImpl"

    const-string/jumbo v3, "please add UT module"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_1

    .line 603
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 604
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, p3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 607
    invoke-static {p1, p2, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    goto :goto_0
.end method

.method public registerStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    .local p3, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "measures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v4, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v4, :cond_2

    .line 664
    const-string/jumbo v4, "com.alibaba.android.rimet"

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "please add UT module !"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 668
    :cond_0
    const-string/jumbo v4, "StatisticsImpl"

    const-string/jumbo v5, "please add UT module"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    :goto_0
    return-void

    .line 672
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 677
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v4, v5, :cond_1

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 683
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 684
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    .local v0, "dim":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_1

    .line 690
    .end local v0    # "dim":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 691
    .local v3, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 692
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 693
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 695
    .local v2, "measure":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 699
    .end local v2    # "measure":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    goto :goto_0
.end method

.method public registerStatisticsListener(Lcom/alibaba/doraemon/statistics/StatisticsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/statistics/StatisticsListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOffLineDurationStatistics(Ljava/lang/String;)V
    .locals 2
    .param p1, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportOffLineDurationStatistics(Ljava/lang/String;J)V
    .locals 4
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    .line 386
    .local v0, "mode":I
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v2, :cond_2

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v2, :cond_0

    .line 387
    :cond_2
    new-instance v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    invoke-direct {v1, p1}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "statEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    iput-wide p2, v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mValue:J

    .line 389
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->printLog()V

    goto :goto_0
.end method

.method public setDebugStatistics2Log(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 98
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->setDebugStatistics2Log(Z)V

    .line 99
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->setCurrentUserId(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 407
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 408
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startOffLineDurationStatistics(Ljava/lang/String;)V
    .locals 6
    .param p1, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    .line 115
    .local v0, "mode":I
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v3, :cond_2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v3, :cond_0

    .line 116
    :cond_2
    new-instance v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    invoke-direct {v1, p1}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "statEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v4

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_3

    .line 121
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "tmpEvent":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v2    # "tmpEvent":Ljava/lang/String;
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public startOffLineDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    .line 218
    .local v1, "mode":I
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v4, :cond_2

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v1, v4, :cond_0

    .line 219
    :cond_2
    new-instance v2, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    invoke-direct {v2, p1, p2}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v2, "statEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v5

    .line 222
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x14

    if-le v4, v6, :cond_3

    .line 225
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mEventsList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    .local v3, "tmpEvent":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v3    # "tmpEvent":Ljava/lang/String;
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "subMonitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    .line 168
    .local v1, "mode":I
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v2, :cond_2

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v1, v2, :cond_0

    .line 169
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 171
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->startSubEvent(Ljava/lang/String;)V

    .line 174
    :cond_3
    monitor-exit v3

    goto :goto_0

    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "subMonitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    .line 272
    .local v2, "mode":I
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v2, v3, :cond_0

    .line 273
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v4

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 276
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0, p3}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->startSubEvent(Ljava/lang/String;)V

    .line 279
    :cond_3
    monitor-exit v4

    goto :goto_0

    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public startOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "monitorPoints"    # [Ljava/lang/String;
    .param p2, "subMonitorPoint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    .line 323
    .local v1, "mode":I
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v3, :cond_2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v1, v3, :cond_0

    .line 324
    :cond_2
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    monitor-enter v4

    .line 325
    :try_start_0
    array-length v5, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 326
    .local v2, "point":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mDurationEvents:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;

    .line 327
    .local v0, "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0, p2}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->startSubEvent(Ljava/lang/String;)V

    .line 325
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "event":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
    .end local v2    # "point":Ljava/lang/String;
    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public uninitTBS()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public unregisterStatisticsListener(Lcom/alibaba/doraemon/statistics/StatisticsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/statistics/StatisticsListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1035
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->updateUserAccount(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public userLoginFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 959
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->userLoginFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 960
    return-void
.end method

.method public userLoginFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 964
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p4}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->loginFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 965
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 954
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->updateUserAccount(Ljava/lang/String;)V

    .line 955
    return-void
.end method
