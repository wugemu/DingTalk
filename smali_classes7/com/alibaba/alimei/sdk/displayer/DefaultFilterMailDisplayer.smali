.class public Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "DefaultFilterMailDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/sdk/displayer/Displayer",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILTER_ATTACHMENT:Ljava/lang/String; = "filter_attachment"

.field public static final FILTER_UNREAD:Ljava/lang/String; = "filter_unread"


# instance fields
.field private mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private final mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

.field private mEnvReady:Z

.field private final mFilter:Ljava/lang/String;

.field private final mFilterMailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

.field private mUnreadHoldFilterMailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private mWithRelationConversations:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/lang/String;)V
    .locals 2
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mEnvReady:Z

    .line 252
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .line 33
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilter:Ljava/lang/String;

    .line 34
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mEnvReady:Z

    .line 37
    :cond_0
    const-string/jumbo v0, "filter_unread"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mUnreadHoldFilterMailsMap:Ljava/util/HashMap;

    .line 40
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    .line 42
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mWithRelationConversations:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->fillFilterMails()V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->handleMailGroup(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    monitor-enter p0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 81
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 83
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 84
    .local v1, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->containsFilter(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 77
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized changeMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 128
    .local v1, "mailId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilter:Ljava/lang/String;

    const-string/jumbo v4, "filter_unread"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mUnreadHoldFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->containsFilter(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    .line 133
    .local v0, "hasFilter":Z
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 134
    .local v2, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v0, :cond_1

    .line 135
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_0
    monitor-exit p0

    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    .end local v0    # "hasFilter":Z
    .end local v1    # "mailId":Ljava/lang/Long;
    .end local v2    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private containsFilter(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 8
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 107
    :cond_1
    :goto_0
    return v1

    .line 97
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilter:Ljava/lang/String;

    const-string/jumbo v4, "filter_unread"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 99
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mUnreadHoldFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    iget-boolean v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 107
    .end local v0    # "mailId":Ljava/lang/Long;
    :cond_3
    iget-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    goto :goto_0
.end method

.method private declared-synchronized deleteMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilter:Ljava/lang/String;

    const-string/jumbo v3, "filter_unread"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mUnreadHoldFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v1, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized fillFilterMails()V
    .locals 18

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v10

    .line 177
    .local v10, "tagMailSize":I
    if-nez v10, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v6, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 185
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 186
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 187
    .local v7, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v6    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v7    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v10    # "tagMailSize":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 189
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v6    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v10    # "tagMailSize":I
    :cond_2
    :try_start_2
    sget-object v12, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v6, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 192
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 193
    .local v11, "targetMailsSize":I
    if-lez v11, :cond_0

    .line 194
    const/4 v9, 0x0

    .line 196
    .local v9, "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 197
    .restart local v7    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v14, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v14, v15}, Laiq;->a(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 198
    .local v3, "dayTime":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 201
    .local v2, "addDivider":Z
    if-nez v9, :cond_6

    .line 202
    const/4 v2, 0x1

    .line 210
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->containsFilter(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 214
    if-eqz v2, :cond_5

    .line 215
    iget-wide v14, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v0, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v4

    .line 217
    .local v4, "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v4    # "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-object v9, v7

    .line 221
    goto :goto_1

    .line 204
    :cond_6
    iget-wide v14, v9, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v14, v15}, Laiq;->a(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 205
    .local v8, "pdayTime":Ljava/lang/Long;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_4

    .line 206
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private declared-synchronized handleMailGroup(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    monitor-enter p0

    const/4 v1, 0x0

    .line 146
    .local v1, "result":Z
    if-eqz p3, :cond_2

    .line 147
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 149
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->deleteMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 150
    :goto_1
    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1

    .line 154
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    if-eqz p1, :cond_5

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 157
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    .line 158
    :goto_3
    goto :goto_2

    :cond_4
    move v1, v2

    .line 157
    goto :goto_3

    .line 162
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    if-eqz p2, :cond_8

    .line 163
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 165
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->changeMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    move v1, v3

    .line 166
    :goto_5
    goto :goto_4

    :cond_7
    move v1, v2

    .line 165
    goto :goto_5

    .line 168
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    if-eqz v1, :cond_9

    .line 169
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->fillFilterMails()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_9
    monitor-exit p0

    return v1

    .line 144
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected executeLoad()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 245
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilter:Ljava/lang/String;

    const-string/jumbo v1, "filter_unread"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mUnreadHoldFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->notifyLoadStarted()V

    .line 249
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V

    .line 250
    return-void
.end method

.method public getUnreadCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 314
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "count":I
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mFilterMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 317
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 319
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v3, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v3, :cond_0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "count":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public hasMoreHistoryMail()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized load()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mEnvReady:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->executeLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->notifyLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    return-void
.end method

.method protected onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultFilterMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseCallback(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V

    .line 310
    return-void
.end method

.method public refreshMail()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
