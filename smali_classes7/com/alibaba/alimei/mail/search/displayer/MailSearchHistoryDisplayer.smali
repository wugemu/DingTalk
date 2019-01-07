.class public Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "MailSearchHistoryDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/sdk/displayer/Displayer",
        "<",
        "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MailSearchHistoryDisplayer"


# instance fields
.field private mHistoryArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHistoryArrayMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHistoryContentObser:Lxm;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    .line 40
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->addHistoryList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->notifyLoadSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->handleDataChangedGroup(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;)V

    return-void
.end method

.method private declared-synchronized addHistoryList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    .local p1, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 102
    .local v3, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    if-eqz v3, :cond_2

    .line 106
    iget v4, v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    .line 107
    .local v4, "type":I
    iget-object v1, v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    .line 108
    .local v1, "historyKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 109
    .local v2, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iget-object v6, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfk;

    .line 110
    .local v0, "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-nez v2, :cond_3

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v2    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iget-object v6, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    new-instance v0, Lfk;

    .end local v0    # "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    invoke-direct {v0}, Lfk;-><init>()V

    .line 115
    .restart local v0    # "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iget-object v6, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    :cond_3
    invoke-virtual {v0, v1}, Lfk;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v0, v1, v3}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    .end local v1    # "historyKey":Ljava/lang/String;
    .end local v2    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    .end local v3    # "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .end local v4    # "type":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized changeHistoryList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    .local p1, "changeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 132
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 133
    .local v3, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    if-eqz v3, :cond_2

    .line 137
    iget v5, v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    .line 138
    .local v5, "type":I
    iget-object v1, v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    .line 140
    .local v1, "historyKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfk;

    .line 141
    .local v0, "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 146
    .local v4, "oldHistoryModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 147
    .local v2, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-eqz v2, :cond_3

    .line 148
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    :cond_3
    invoke-virtual {v0, v1, v3}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    .end local v1    # "historyKey":Ljava/lang/String;
    .end local v2    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    .end local v3    # "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .end local v4    # "oldHistoryModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .end local v5    # "type":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized deleteHistoryList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    .local p1, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 163
    .local v3, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    if-eqz v3, :cond_2

    .line 167
    iget v5, v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    .line 168
    .local v5, "type":I
    iget-object v1, v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    .line 169
    .local v1, "historyKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfk;

    .line 170
    .local v0, "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0, v1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 175
    .local v4, "oldHistoryModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 176
    .local v2, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-eqz v2, :cond_2

    .line 177
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0    # "arrayMap":Lfk;, "Lfk<Ljava/lang/String;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    .end local v1    # "historyKey":Ljava/lang/String;
    .end local v2    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    .end local v3    # "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .end local v4    # "oldHistoryModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .end local v5    # "type":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized handleDataChangedGroup(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;)V
    .locals 1
    .param p1, "groupModel"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    .prologue
    .line 83
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->getDeletedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->deleteHistoryList(Ljava/util/List;)V

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->getChangedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->changeHistoryList(Ljava/util/List;)V

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->getAddedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->addHistoryList(Ljava/util/List;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->notifyDataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected executeLoad()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->initHistoryObserver()V

    .line 48
    iget-object v2, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v1

    .line 49
    .local v1, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;-><init>(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)V

    .line 65
    .local v0, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;>;"
    invoke-interface {v1, v0}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->queryAllSearchHistory(Lxv;)V

    .line 69
    .end local v0    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;>;"
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v2, "MailSearchHistoryDisplayer"

    const-string/jumbo v3, "queryAllSearchHistory fail for searchApi is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllDatas()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v3, "resultModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    .line 207
    .local v0, "historyArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;>;"
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 209
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 210
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 211
    .local v1, "historyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "historyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    :cond_1
    sget-object v5, Laeo;->a:Laeo;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-object v3
.end method

.method public getTypeDatas(I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v2, "resultModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    .line 227
    .local v0, "historyArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;>;"
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 229
    .local v1, "historyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    sget-object v3, Laeo;->a:Laeo;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 235
    .end local v1    # "historyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    :cond_0
    return-object v2
.end method

.method protected initHistoryObserver()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;-><init>(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    .line 199
    const-class v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    invoke-static {v0, v1}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    if-eqz v0, :cond_0

    .line 74
    const-class v0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    invoke-static {v0, v1}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryContentObser:Lxm;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->mHistoryArrayMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 80
    return-void
.end method
