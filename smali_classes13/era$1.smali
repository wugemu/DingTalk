.class final Lera$1;
.super Ljava/lang/Object;
.source "ExternalContactSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lera;


# direct methods
.method constructor <init>(Lera;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lera;

    .prologue
    .line 98
    iput-object p1, p0, Lera$1;->b:Lera;

    iput-object p2, p0, Lera$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x50

    const/4 v2, 0x0

    .line 98
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1103
    iget-object v0, p0, Lera$1;->b:Lera;

    iget-object v3, v0, Lera;->c:Leoe;

    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-nez v0, :cond_4

    :cond_0
    move v1, v2

    .line 1104
    :goto_0
    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x1

    .line 1103
    invoke-static {v3, v4, v1, v0, v5}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1106
    iget-object v0, p0, Lera$1;->b:Lera;

    iget-object v0, v0, Lera;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lera$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lera$1;->b:Lera;

    iget-object v1, v1, Lera;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->hasMore:Z

    if-nez v0, :cond_6

    .line 1116
    :cond_1
    iget-object v0, p0, Lera$1;->b:Lera;

    const/4 v1, 0x0

    iput v1, v0, Lera;->g:I

    .line 1117
    iget-object v0, p0, Lera$1;->b:Lera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lera;->f:Z

    .line 1122
    :goto_2
    iget-object v0, p0, Lera$1;->b:Lera;

    invoke-virtual {v0, p1}, Lera;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    iget-object v0, p0, Lera$1;->b:Lera;

    iput-boolean v2, v0, Lera;->j:Z

    .line 1127
    iget-object v0, p0, Lera$1;->b:Lera;

    iget-boolean v0, v0, Lera;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lera$1;->b:Lera;

    iget v0, v0, Lera;->h:I

    if-le v0, v6, :cond_8

    .line 1128
    :cond_2
    iget-object v0, p0, Lera$1;->b:Lera;

    iput v2, v0, Lera;->h:I

    .line 1129
    iget-object v0, p0, Lera$1;->b:Lera;

    invoke-virtual {v0}, Lera;->o()V

    .line 1133
    :cond_3
    :goto_3
    return-void

    .line 1103
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 1104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->logMap:Ljava/lang/String;

    goto :goto_1

    .line 1119
    :cond_6
    :try_start_1
    iget-object v0, p0, Lera$1;->b:Lera;

    iget v1, v0, Lera;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Lera;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    :try_start_2
    const-string/jumbo v1, "multiSearchExternalContacts"

    invoke-static {v1, v0}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1126
    iget-object v0, p0, Lera$1;->b:Lera;

    iput-boolean v2, v0, Lera;->j:Z

    .line 1127
    iget-object v0, p0, Lera$1;->b:Lera;

    iget-boolean v0, v0, Lera;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lera$1;->b:Lera;

    iget v0, v0, Lera;->h:I

    if-le v0, v6, :cond_9

    .line 1128
    :cond_7
    iget-object v0, p0, Lera$1;->b:Lera;

    iput v2, v0, Lera;->h:I

    .line 1129
    iget-object v0, p0, Lera$1;->b:Lera;

    invoke-virtual {v0}, Lera;->o()V

    goto :goto_3

    .line 1131
    :cond_8
    iget-object v0, p0, Lera$1;->b:Lera;

    invoke-virtual {v0}, Lera;->a()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lera$1;->b:Lera;

    invoke-virtual {v0}, Lera;->a()V

    goto :goto_3

    .line 1126
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lera$1;->b:Lera;

    iput-boolean v2, v1, Lera;->j:Z

    .line 1127
    iget-object v1, p0, Lera$1;->b:Lera;

    iget-boolean v1, v1, Lera;->f:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lera$1;->b:Lera;

    iget v1, v1, Lera;->h:I

    if-le v1, v6, :cond_b

    .line 1128
    :cond_a
    iget-object v1, p0, Lera$1;->b:Lera;

    iput v2, v1, Lera;->h:I

    .line 1129
    iget-object v1, p0, Lera$1;->b:Lera;

    invoke-virtual {v1}, Lera;->o()V

    .line 1131
    :goto_4
    throw v0

    :cond_b
    iget-object v1, p0, Lera$1;->b:Lera;

    invoke-virtual {v1}, Lera;->a()V

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchMultiExternalContacts: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 149
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v2, 0x34bd

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 151
    iget-object v1, p0, Lera$1;->b:Lera;

    iget-object v1, v1, Lera;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lera$1;->b:Lera;

    invoke-virtual {v1}, Lera;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 139
    return-void
.end method
