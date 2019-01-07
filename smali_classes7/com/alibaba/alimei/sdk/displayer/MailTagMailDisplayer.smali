.class public Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "MailTagMailDisplayer.java"


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
.field public static DEFAULT_TAG_MAIL_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MailTagMailDisplayer"


# instance fields
.field private hasMoreTagHistoryMails:Z

.field private isFirstLoadMoreMails:Z

.field private mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

.field protected final mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

.field private mHasLoadFinishedFirst:Z

.field private mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

.field mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

.field private mMailIdMap:Ljava/util/HashMap;
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

.field private mShowDivider:Z

.field protected mTagMailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x14

    sput v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->DEFAULT_TAG_MAIL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 4
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 40
    iput-boolean v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->hasMoreTagHistoryMails:Z

    .line 41
    iput-boolean v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->isFirstLoadMoreMails:Z

    .line 45
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mHasLoadFinishedFirst:Z

    .line 662
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    .line 674
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$3;-><init>(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    .line 53
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mComparator:Ljava/util/Comparator;

    .line 55
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 56
    .local v0, "sdkConfig":Lafy;
    if-eqz v0, :cond_0

    .line 57
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mShowDivider:Z

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Ljava/lang/String;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->handleLoadHistoryStatus(Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->isFirstLoadMoreMails:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->handleMailGroup(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 12
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 263
    monitor-enter p0

    const/4 v3, 0x0

    .line 265
    .local v3, "result":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->isUnreadTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    const-string/jumbo v8, "unread"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 267
    .local v2, "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v2, :cond_0

    .line 268
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 269
    .restart local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    const-string/jumbo v8, "unread"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 275
    .local v1, "mailId":Ljava/lang/Long;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v3, 0x1

    .line 280
    .end local v1    # "mailId":Ljava/lang/Long;
    .end local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 281
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 282
    .local v6, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 283
    .local v5, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 284
    .restart local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v2, :cond_2

    .line 285
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 286
    .restart local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    or-int/2addr v3, v7

    .line 289
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "MailTagMailDisplayer"

    invoke-static {v7, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move v4, v3

    .line 300
    .end local v3    # "result":Z
    .local v4, "result":Z
    :goto_3
    monitor-exit p0

    return v4

    .line 288
    .end local v4    # "result":Z
    .restart local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v3    # "result":Z
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 291
    .end local v2    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 292
    .restart local v1    # "mailId":Ljava/lang/Long;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "mailId":Ljava/lang/Long;
    .end local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move v4, v3

    .line 294
    .end local v3    # "result":Z
    .restart local v4    # "result":Z
    goto :goto_3

    .line 297
    .end local v4    # "result":Z
    .restart local v3    # "result":Z
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string/jumbo v7, "MailTagMailDisplayer"

    invoke-static {v7, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 263
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized changeMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 14
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 367
    monitor-enter p0

    const/4 v4, 0x0

    .line 369
    .local v4, "result":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 370
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 371
    .local v3, "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v3, :cond_3

    .line 372
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 373
    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 374
    .local v6, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 375
    .local v5, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 376
    .local v2, "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_0

    .line 377
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_1
    or-int/2addr v4, v7

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_1

    .line 382
    .end local v2    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    const-string/jumbo v10, "unread"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 383
    .restart local v2    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_3

    .line 384
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_2
    or-int/2addr v4, v7

    .line 388
    .end local v2    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 390
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 391
    .restart local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 392
    .restart local v5    # "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 393
    .local v1, "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v1, :cond_6

    .line 394
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_4
    or-int/2addr v4, v7

    .line 395
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 367
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v3    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0    # "mailId":Ljava/lang/Long;
    .restart local v2    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v3    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    move v7, v9

    .line 384
    goto :goto_2

    .end local v2    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move v7, v9

    .line 394
    goto :goto_4

    .line 397
    :cond_6
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 398
    .restart local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const/4 v4, 0x1

    .line 402
    goto :goto_3

    .line 403
    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "tag":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v6    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->isUnreadTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 407
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    const-string/jumbo v10, "unread"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 408
    .restart local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v1, :cond_b

    .line 409
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    :goto_5
    or-int/2addr v4, v8

    .line 410
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :goto_6
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_9
    monitor-exit p0

    return v4

    .restart local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_a
    move v8, v9

    .line 409
    goto :goto_5

    .line 412
    :cond_b
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 413
    .restart local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    const-string/jumbo v8, "unread"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    const/4 v4, 0x1

    goto :goto_6
.end method

.method private declared-synchronized deleteMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 12
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 339
    monitor-enter p0

    const/4 v2, 0x0

    .line 340
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 342
    .local v4, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 343
    .local v3, "tag":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 344
    .local v1, "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    or-int/2addr v2, v5

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    .line 350
    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 351
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mMailIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    const-string/jumbo v8, "unread"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 354
    .restart local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v1, :cond_3

    .line 355
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_4

    :goto_2
    or-int/2addr v2, v6

    .line 358
    :cond_3
    monitor-exit p0

    return v2

    :cond_4
    move v6, v7

    .line 355
    goto :goto_2

    .line 339
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private handleLoadHistoryStatus(Ljava/lang/String;JZ)V
    .locals 6
    .param p1, "beeboxTag"    # Ljava/lang/String;
    .param p2, "historyEndTime"    # J
    .param p4, "hasMoreMail"    # Z

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafv;->i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v0

    .line 747
    .local v0, "tagApi":Lcom/alibaba/alimei/sdk/api/TagApi;
    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/TagApi;->updateHistoryStatus(Ljava/lang/String;JZLxv;)V

    .line 748
    return-void
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

    .line 427
    monitor-enter p0

    const/4 v1, 0x0

    .line 429
    .local v1, "result":Z
    if-eqz p3, :cond_2

    .line 430
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

    .line 432
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->deleteMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 433
    :goto_1
    goto :goto_0

    :cond_1
    move v1, v2

    .line 432
    goto :goto_1

    .line 437
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    if-eqz p1, :cond_5

    .line 438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 440
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    .line 441
    :goto_3
    goto :goto_2

    :cond_4
    move v1, v2

    .line 440
    goto :goto_3

    .line 445
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    if-eqz p2, :cond_8

    .line 446
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 448
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->changeMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    move v1, v3

    .line 449
    :goto_5
    goto :goto_4

    :cond_7
    move v1, v2

    .line 448
    goto :goto_5

    .line 451
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    if-eqz v1, :cond_9

    .line 452
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->fillTagMails()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_9
    monitor-exit p0

    return v1

    .line 427
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private isUnreadTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 3
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 326
    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 330
    :cond_1
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 331
    .local v0, "folderType":I
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isJunkFolder(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private obtainOldestSerId()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 135
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v6, :cond_1

    .line 136
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "obtainOldestSerId fail for current tag is null"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-object v5

    .line 140
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 141
    .local v1, "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    :cond_2
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "obtainOldestSerId fail for tag mail map is null or empty"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_3
    const-wide v2, 0x7fffffffffffffffL

    .line 147
    .local v2, "minTimeStamp":J
    const/4 v5, 0x0

    .line 148
    .local v5, "oldestSerId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 149
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 151
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v6, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 152
    iget-wide v2, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 153
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public changeReadStatus(ZLxv;)V
    .locals 4
    .param p1, "readStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 115
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const-string/jumbo v1, "MailTagMailDisplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "changeReadStatus fail for accountName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p2, :cond_0

    .line 118
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 124
    .local v0, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatusByTag(Ljava/lang/String;ZLxv;)V

    goto :goto_0

    .line 127
    :cond_2
    const-string/jumbo v1, "MailTagMailDisplayer"

    const-string/jumbo v2, "changeReadStatus fail for mailApi is null"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected executeLoad()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->notifyLoadStarted()V

    .line 659
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V

    .line 660
    return-void
.end method

.method protected declared-synchronized fillTagMails()V
    .locals 22

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 459
    .local v9, "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 460
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_2
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v11, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 467
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v16

    .line 2189
    move-object/from16 v0, v16

    iget v10, v0, Lafy;->o:I

    .line 468
    .local v10, "mailShownType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isUnreadTag()Z

    move-result v16

    if-nez v16, :cond_4

    if-nez v10, :cond_4

    .line 469
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v5, "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 471
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 472
    .local v12, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v12, :cond_3

    .line 475
    invoke-static {v12}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "conversationId":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 480
    .local v3, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v3, :cond_3

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasTag(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 485
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 458
    .end local v3    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v4    # "conversationId":Ljava/lang/String;
    .end local v5    # "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v9    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v10    # "mailShownType":I
    .end local v11    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v12    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 490
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v9    # "mailMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v10    # "mailShownType":I
    .restart local v11    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 491
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 492
    .restart local v12    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v12, :cond_4

    .line 495
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    .end local v12    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    sget-object v16, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mShowDivider:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 503
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 504
    .local v15, "targetMailsSize":I
    if-lez v15, :cond_1

    .line 505
    const/4 v14, 0x0

    .line 507
    .local v14, "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 508
    .restart local v12    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Laiq;->a(J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 509
    .local v6, "dayTime":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 512
    .local v2, "addDivider":Z
    if-nez v14, :cond_a

    .line 513
    const/4 v2, 0x1

    .line 521
    :cond_7
    :goto_4
    iget-boolean v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 524
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 528
    :cond_8
    if-eqz v2, :cond_9

    .line 529
    iget-wide v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v18, v0

    iget-wide v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v7

    .line 531
    .local v7, "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v7    # "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    move-object v14, v12

    .line 535
    goto :goto_3

    .line 515
    :cond_a
    iget-wide v0, v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Laiq;->a(J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 516
    .local v13, "pdayTime":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-eqz v17, :cond_7

    .line 517
    const/4 v2, 0x1

    goto :goto_4

    .line 538
    .end local v2    # "addDivider":Z
    .end local v6    # "dayTime":Ljava/lang/Long;
    .end local v12    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v13    # "pdayTime":Ljava/lang/Long;
    .end local v14    # "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v15    # "targetMailsSize":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 619
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v6, :cond_1

    .line 620
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 648
    :cond_0
    :goto_0
    return-object v4

    .line 622
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v0, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 623
    .local v0, "curTag":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 624
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v3, :cond_2

    .line 625
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 627
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 630
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 631
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 632
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    .line 635
    iget-boolean v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-eqz v6, :cond_3

    .line 636
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 639
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v5

    .line 640
    .local v5, "tr":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 641
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "getAttachmentList error"

    invoke-static {v6, v7, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    .end local v5    # "tr":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 645
    sget-object v6, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getConversationMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 582
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v6, :cond_1

    .line 583
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    :cond_0
    :goto_0
    return-object v4

    .line 585
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v0, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 586
    .local v0, "curTag":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 587
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v3, :cond_2

    .line 588
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 590
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 593
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 594
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 595
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    .line 598
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 599
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 602
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v5

    .line 603
    .local v5, "tr":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 604
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "getTagList error"

    invoke-static {v6, v7, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    .end local v5    # "tr":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 608
    sget-object v6, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getUnreadList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 547
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v6, :cond_1

    .line 548
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    :cond_0
    :goto_0
    return-object v4

    .line 550
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v0, v6, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 551
    .local v0, "curTag":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mTagMailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 552
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v3, :cond_2

    .line 553
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 555
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 558
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 559
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 560
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    iget-boolean v6, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v6, :cond_3

    .line 563
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 565
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v5

    .line 566
    .local v5, "tr":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 567
    const-string/jumbo v6, "MailTagMailDisplayer"

    const-string/jumbo v7, "getUnreadList error"

    invoke-static {v6, v7, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v5    # "tr":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 571
    sget-object v6, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public hasMoreHistoryMail()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->hasMoreTagHistoryMails:Z

    goto :goto_0
.end method

.method public declared-synchronized load()V
    .locals 1

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->executeLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const-wide/16 v12, 0x3e8

    .line 165
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v1, :cond_0

    .line 166
    const-string/jumbo v1, "MailTagMailDisplayer"

    const-string/jumbo v2, "loadMoreHistoryMail fail for currentTag is null"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 170
    :cond_0
    const-wide/16 v4, -0x1

    .line 171
    .local v4, "endTime":J
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 172
    .local v10, "size":I
    if-lez v10, :cond_1

    .line 173
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 174
    .local v8, "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v8, :cond_1

    .line 175
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isUnreadTag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v7

    .line 177
    .local v7, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v7, :cond_1

    .line 178
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-virtual {v7, v1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->getConversationItems(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    .line 179
    .local v9, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-wide v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    sub-long v4, v2, v12

    .line 194
    .end local v7    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v8    # "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v9    # "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    :goto_1
    new-instance v6, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;Lxv;)V

    .line 237
    .local v6, "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 238
    .local v0, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v0, :cond_3

    .line 239
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailByTagFromServer(Ljava/lang/String;JJLxv;)V

    goto :goto_0

    .line 185
    .end local v0    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    .end local v6    # "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    .restart local v8    # "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    iget-wide v2, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    sub-long v4, v2, v12

    goto :goto_1

    .line 241
    .end local v8    # "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v0    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    .restart local v6    # "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    :cond_3
    const-string/jumbo v1, "MailTagMailDisplayer"

    const-string/jumbo v2, "loadMoreHistoryMail fail for mailApi is null"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 733
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 734
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseCallback(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V

    .line 735
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseLoader()V

    .line 736
    return-void
.end method

.method public onShownTypeChanged()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->fillTagMails()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MailTagMailDisplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " onShownTypeChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshMail()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    const-string/jumbo v0, "MailTagMailDisplayer"

    const-string/jumbo v1, "refresh mail start"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v0, :cond_0

    .line 83
    const-string/jumbo v0, "MailTagMailDisplayer"

    const-string/jumbo v1, "refresh mail fail for current tag is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 86
    :cond_0
    const-wide/16 v2, -0x1

    .line 88
    .local v2, "startTime":J
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 89
    .local v8, "size":I
    if-lez v8, :cond_2

    .line 90
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 91
    .local v6, "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v6, :cond_1

    iget-boolean v0, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x2

    if-lt v8, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mListDatas:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 96
    .restart local v6    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    if-eqz v6, :cond_2

    .line 97
    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 101
    .end local v6    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string/jumbo v0, "MailTagMailDisplayer"

    const-string/jumbo v1, "refresh mail fail for accountName is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v7

    .line 107
    .local v7, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v7, :cond_4

    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncMailByTagFromServer(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 110
    :cond_4
    const-string/jumbo v0, "MailTagMailDisplayer"

    const-string/jumbo v1, "refresh mail fail for mailApi is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchToTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 4
    .param p1, "tagModel"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string/jumbo v0, "MailTagMailDisplayer"

    const-string/jumbo v1, "switchToTag fail for tagModel is null"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->refreshMail()V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->notifyLoadSuccess()V

    goto :goto_0

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->mCurrentTag:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->executeLoad()V

    goto :goto_0
.end method
