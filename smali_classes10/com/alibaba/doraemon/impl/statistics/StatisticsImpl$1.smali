.class Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;
.super Ljava/lang/Object;
.source "StatisticsImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/statistics/Statistics$AtomStatistics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->getAtomStatistics()Lcom/alibaba/doraemon/statistics/Statistics$AtomStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

.field transaction:Lcom/alibaba/mtl/appmonitor/Transaction;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 999
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 1008
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 1009
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->access$000(Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->transaction:Lcom/alibaba/mtl/appmonitor/Transaction;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->transaction:Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-virtual {v0, p3}, Lcom/alibaba/mtl/appmonitor/Transaction;->end(Ljava/lang/String;)V

    goto :goto_0
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
    .line 974
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 983
    sget-boolean v0, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->sHasUTPkg:Z

    if-nez v0, :cond_3

    .line 984
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->this$0:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->access$000(Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 985
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please add UT module !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_2
    const-string/jumbo v0, "StatisticsImpl"

    const-string/jumbo v1, "please add UT module"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 992
    :cond_3
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->transaction:Lcom/alibaba/mtl/appmonitor/Transaction;

    .line 994
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl$1;->transaction:Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-virtual {v0, p3}, Lcom/alibaba/mtl/appmonitor/Transaction;->begin(Ljava/lang/String;)V

    goto :goto_0
.end method
