.class final Lfjp$1;
.super Ljava/lang/Object;
.source "LocalContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjp;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lfjp;


# direct methods
.method constructor <init>(Lfjp;Lcom/alibaba/doraemon/performance/DDStringBuilder;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfjp;

    .prologue
    .line 105
    iput-object p1, p0, Lfjp$1;->c:Lfjp;

    iput-object p2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    iput-object p3, p0, Lfjp$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 109
    :try_start_0
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 110
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "local_contact"

    const-string/jumbo v4, "query_friend"

    invoke-interface {v1, v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v4

    invoke-virtual {v4}, Lfmz;->b()Lfmr;

    move-result-object v4

    invoke-interface {v4}, Lfmr;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lfjp;->a(Lfjp;Ljava/util/List;)Ljava/util/List;

    .line 114
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ",t1:"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 115
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 116
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;J)Ljava/util/List;

    .line 118
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v4

    invoke-virtual {v4}, Lfmz;->b()Lfmr;

    move-result-object v4

    invoke-interface {v4}, Lfmr;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lfjp;->a(Lfjp;Ljava/util/List;)Ljava/util/List;

    .line 121
    :cond_1
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 122
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->b(Lfjp;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 123
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {}, Lflr;->e()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v4}, Lfjp;->a(Lfjp;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 125
    :cond_2
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ",t2:"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 126
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 127
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v4, Lfjp$1$1;

    invoke-direct {v4, p0}, Lfjp$1$1;-><init>(Lfjp$1;)V

    invoke-virtual {v2, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_3
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ",db_total:"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 136
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 137
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cdata_size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v5}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 139
    :cond_4
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ",t4:"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 140
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 141
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v4, Lfjp$1$2;

    invoke-direct {v4, p0}, Lfjp$1$2;-><init>(Lfjp$1;)V

    invoke-virtual {v2, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 157
    const-string/jumbo v2, "local_contact"

    const-string/jumbo v4, "query_friend"

    invoke-interface {v1, v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "local_contact"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v2, "DD"

    const-string/jumbo v4, "local_contact"

    const-string/jumbo v5, "totalTime"

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v4, ",t5:"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 166
    iget-object v2, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 167
    const-string/jumbo v2, "user_ct"

    invoke-static {}, Lfjp;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfjp$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v6}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2, v3}, Lfjp;->a(Lfjp;Z)Z

    .line 182
    .end local v1    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lfjp$1;->b:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_5

    .line 170
    iget-object v2, p0, Lfjp$1;->b:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 172
    :cond_5
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 173
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 174
    :cond_6
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v2

    invoke-interface {v2}, Lfir;->c()V

    .line 179
    :cond_7
    :goto_1
    invoke-static {}, Lfjp;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Exception getLocalList "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2, v3}, Lfjp;->a(Lfjp;Z)Z

    goto :goto_0

    .line 176
    :cond_8
    :try_start_2
    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v2}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    invoke-interface {v4, v5, v2}, Lfir;->a(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lfjp$1;->c:Lfjp;

    invoke-static {v4, v3}, Lfjp;->a(Lfjp;Z)Z

    throw v2

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_9
    move v2, v3

    .line 176
    goto :goto_2
.end method
