.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1903
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1903
    monitor-enter v6

    .line 1905
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1905
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1906
    .local v2, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1907
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1924
    .end local v2    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1910
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1910
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1913
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->a:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;Z)I

    .line 1915
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1915
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1916
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 1916
    if-eqz v5, :cond_2

    .line 1917
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 1917
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1917
    invoke-interface {v5, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filterDisplay(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1920
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1920
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j()Ljava/util/Comparator;

    move-result-object v7

    .line 1920
    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1924
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1925
    invoke-static {}, Ldjw;->a()Ldjw;

    move-result-object v6

    .line 11996
    const-class v5, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v7, Ldjw$6;

    invoke-direct {v7, v6}, Ldjw$6;-><init>(Ldjw;)V

    const/4 v6, 0x3

    invoke-interface {v5, v7, v10, v6}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 1926
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1926
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1926
    invoke-static {v6}, Ldza;->a(Ljava/util/List;)I

    move-result v6

    invoke-interface {v5, v6}, Ldyy$b;->a(I)V

    .line 1927
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1927
    invoke-interface {v5}, Ldyy$b;->H_()V

    .line 1930
    const-string/jumbo v5, "STATISTICS"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1932
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "end :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1933
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 15116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1933
    invoke-interface {v5}, Ldyy$b;->a()V

    .line 1936
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "session_load"

    aput-object v6, v5, v10

    const-string/jumbo v6, "load_session_data"

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const-string/jumbo v5, "session_load"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 1940
    const-string/jumbo v5, "DD"

    const-string/jumbo v6, "init_session_load"

    const-string/jumbo v7, "totalTime"

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string/jumbo v5, "DD"

    const-string/jumbo v6, "session_load"

    const-string/jumbo v7, "totalTime"

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->e()Ljava/lang/String;

    move-result-object v0

    .line 1944
    .local v0, "confCid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1945
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 16116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1945
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1946
    .local v1, "confConv":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_3

    .line 1947
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Lcom/alibaba/wukong/im/Conversation;)Z

    .line 1951
    .end local v1    # "confConv":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 17116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1951
    invoke-interface {v5, v9}, Ldyy$b;->b(Z)V

    .line 1952
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 18116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1952
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 19116
    iget-boolean v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1952
    if-eqz v5, :cond_4

    .line 1953
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 20116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1953
    invoke-interface {v5, v9}, Ldyy$b;->e(Z)V

    .line 1956
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 21116
    iget-boolean v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1956
    if-eqz v5, :cond_5

    .line 1957
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 22116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1957
    invoke-interface {v5}, Ldyy$b;->h()V

    .line 1959
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 23116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1959
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 24116
    iget-boolean v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1959
    invoke-interface {v5, v6}, Ldyy$b;->d(Z)V

    .line 1960
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 25847
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 25848
    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v6}, Ldyy$b;->p()Ldze;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dingtalkim/session/header/Header;->CAMPUS_HR:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v6, v7}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 25850
    :cond_6
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 25851
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v5}, Ldyy$b;->p()Ldze;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->CAMPUS_STUDENT:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v5, v6}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 1963
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 2005
    :cond_8
    :goto_2
    return-void

    .line 1922
    .end local v0    # "confCid":Ljava/lang/String;
    .end local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :catch_0
    move-exception v5

    :try_start_4
    const-string/jumbo v5, "im"

    const/4 v7, 0x0

    const-string/jumbo v8, "list sort compare fail"

    invoke-static {v5, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1967
    .restart local v0    # "confCid":Ljava/lang/String;
    .restart local v4    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_9
    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;)V

    .line 1999
    .local v3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 26116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 1999
    if-eqz v5, :cond_a

    .line 2000
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lcma;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 27116
    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 2000
    invoke-interface {v5, v3, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    check-cast v3, Lcma;

    .line 2002
    .restart local v3    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_a
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 28116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2002
    if-eqz v5, :cond_8

    .line 2003
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 29116
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 2003
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v3, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_2
.end method
