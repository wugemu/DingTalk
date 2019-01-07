.class public abstract Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
.source "AbsDefaultMailDisplayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsDefaultMailDisplayer"


# instance fields
.field protected mCommonMail:Z

.field private mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private final mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

.field private mHasExecuteRefreshedFirst:Z

.field private mHasLoadFinishedFirst:Z

.field private mHasMoreMail:Z

.field private mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

.field private mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

.field private mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private mShowDivider:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 4
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 47
    iput-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 48
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasLoadFinishedFirst:Z

    .line 49
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasExecuteRefreshedFirst:Z

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasMoreMail:Z

    .line 440
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$3;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    .line 468
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$4;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 58
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .line 60
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 61
    .local v0, "sdkConfig":Lafy;
    if-eqz v0, :cond_0

    .line 62
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mShowDivider:Z

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasMoreMail:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasMoreMail:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->fillFolderMails()V

    return-void
.end method

.method static synthetic access$402(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasLoadFinishedFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasExecuteRefreshedFirst:Z

    return v0
.end method

.method private fillFolderMails()V
    .locals 26

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 351
    .local v6, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v6, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v21, v0

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderOldestItem(J)J

    move-result-wide v16

    .line 357
    .local v16, "oldestItemTime":J
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 358
    .local v11, "lid":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 359
    .local v12, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v21

    if-nez v21, :cond_3

    .line 360
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v11    # "lid":Ljava/lang/Long;
    .end local v12    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v16    # "oldestItemTime":J
    :catch_0
    move-exception v20

    .line 436
    .local v20, "tr":Ljava/lang/Throwable;
    const-string/jumbo v21, "AbsDefaultMailDisplayer"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v20    # "tr":Ljava/lang/Throwable;
    .restart local v11    # "lid":Ljava/lang/Long;
    .restart local v12    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v16    # "oldestItemTime":J
    :cond_3
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v13, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailDisplayerRuler:Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;

    move-object/from16 v21, v0

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;->isSessionable(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v9

    .line 367
    .local v9, "isSessionable":Z
    if-eqz v9, :cond_5

    .line 368
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v5, "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 370
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 371
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 372
    .local v14, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v14, :cond_4

    .line 375
    invoke-static {v14}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "conversationId":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 380
    .local v3, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v3, :cond_4

    .line 381
    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v22, v0

    cmp-long v21, v22, v16

    if-ltz v21, :cond_4

    .line 383
    iget-object v0, v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    .end local v3    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v4    # "conversationId":Ljava/lang/String;
    .end local v5    # "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v14    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 390
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 391
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 392
    .restart local v14    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v14, :cond_6

    .line 395
    iget-wide v0, v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v22, v0

    cmp-long v21, v22, v16

    if-ltz v21, :cond_6

    .line 396
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 401
    .end local v14    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_7
    sget-object v21, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    move-object/from16 v0, v21

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mShowDivider:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 404
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_0

    .line 405
    const/16 v18, 0x0

    .line 406
    .local v18, "pos":I
    const/16 v19, 0x0

    .line 408
    .local v19, "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 409
    .restart local v14    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v0, v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Laiq;->a(J)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 411
    .local v7, "dayTime":Ljava/lang/Long;
    if-nez v18, :cond_9

    .line 412
    const/4 v2, 0x1

    .line 421
    .local v2, "addDivider":Z
    :goto_4
    add-int/lit8 v18, v18, 0x1

    .line 423
    if-eqz v2, :cond_8

    .line 424
    iget-wide v0, v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v22, v0

    iget-wide v0, v14, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v8

    .line 426
    .local v8, "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v8    # "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    move-object/from16 v19, v14

    .line 430
    goto :goto_3

    .line 414
    .end local v2    # "addDivider":Z
    :cond_9
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Laiq;->a(J)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 415
    .local v15, "pdayTime":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_a

    .line 416
    const/4 v2, 0x1

    .restart local v2    # "addDivider":Z
    goto :goto_4

    .line 418
    .end local v2    # "addDivider":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "addDivider":Z
    goto :goto_4

    .line 433
    .end local v2    # "addDivider":Z
    .end local v7    # "dayTime":Ljava/lang/Long;
    .end local v14    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v15    # "pdayTime":Ljava/lang/Long;
    .end local v18    # "pos":I
    .end local v19    # "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getOldestSerId()[Ljava/lang/String;
    .locals 18

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 210
    .local v2, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v14

    if-nez v14, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v14, "AbsDefaultMailDisplayer"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "getOldestSerId fail, for currentFolder: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v14, 0x0

    .line 246
    :goto_0
    return-object v14

    .line 216
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-wide v10, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 217
    .local v10, "sentMailboxId":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v7, v14, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 218
    .local v7, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 219
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 220
    .local v4, "currentMinTime":J
    const-wide v12, 0x7fffffffffffffffL

    .line 221
    .local v12, "sentMinTime":J
    const/4 v3, 0x0

    .line 223
    .local v3, "currentServerId":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 224
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 225
    .local v8, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_4

    .line 226
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v14, v4, v14

    if-lez v14, :cond_2

    .line 227
    iget-object v3, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 228
    iget-wide v4, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    goto :goto_2

    .line 216
    .end local v3    # "currentServerId":Ljava/lang/String;
    .end local v4    # "currentMinTime":J
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v7    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v8    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v10    # "sentMailboxId":J
    .end local v12    # "sentMinTime":J
    :cond_3
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 230
    .restart local v3    # "currentServerId":Ljava/lang/String;
    .restart local v4    # "currentMinTime":J
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v7    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v8    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v10    # "sentMailboxId":J
    .restart local v12    # "sentMinTime":J
    :cond_4
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_2

    .line 231
    iget-wide v14, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v14, v12, v14

    if-lez v14, :cond_2

    .line 232
    iget-object v14, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 233
    iget-wide v12, v8, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    goto :goto_2

    .line 237
    .end local v8    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->isSessionableLoadHistory(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 238
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v3    # "currentServerId":Ljava/lang/String;
    .end local v4    # "currentMinTime":J
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v7    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v10    # "sentMailboxId":J
    .end local v12    # "sentMinTime":J
    :catch_0
    move-exception v9

    .line 243
    .local v9, "tr":Ljava/lang/Throwable;
    const-string/jumbo v14, "getOldestServerId exception"

    invoke-static {v14, v9}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v14, 0x0

    goto :goto_0

    .line 240
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "currentServerId":Ljava/lang/String;
    .restart local v4    # "currentMinTime":J
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v7    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v10    # "sentMailboxId":J
    .restart local v12    # "sentMinTime":J
    :cond_6
    const/4 v14, 0x1

    :try_start_1
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private isSessionableLoadHistory(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z
    .locals 2
    .param p1, "currentFolder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;->isSessionable(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private obtainOldestSerId()Ljava/lang/String;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 316
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 317
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_1

    .line 318
    const-string/jumbo v9, "AbsDefaultMailDisplayer"

    const-string/jumbo v10, "obtainOldestSerId fail, for currentFolder is null"

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 340
    :cond_0
    :goto_0
    return-object v1

    .line 322
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v5, v9, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 323
    .local v5, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 324
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 325
    .local v2, "currentMinTime":J
    const/4 v1, 0x0

    .line 326
    .local v1, "currentServerId":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 327
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 328
    .local v6, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 329
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v9, v2, v10

    if-lez v9, :cond_2

    .line 330
    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 331
    iget-object v1, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 336
    .end local v1    # "currentServerId":Ljava/lang/String;
    .end local v2    # "currentMinTime":J
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v6    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v7

    .line 337
    .local v7, "tr":Ljava/lang/Throwable;
    const-string/jumbo v9, "obtainOldestSerId exception"

    invoke-static {v9, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    .line 340
    goto :goto_0
.end method


# virtual methods
.method public changeAllReadStatus(ZLxv;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 258
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->obtainOldestSerId()Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "oldestSerId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    const-string/jumbo v3, "changeAllReadStatus obtain oldestSerId fail for it is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 263
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_2

    .line 264
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    const-string/jumbo v3, "changeAllReadStatus fail, for currentFolder is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz p2, :cond_1

    .line 266
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    if-eqz v2, :cond_3

    .line 272
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "changeAllReadStatus fail, for accountName is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-eqz p2, :cond_1

    .line 279
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 285
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_5

    .line 286
    new-instance v6, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;

    invoke-direct {v6, p0, p2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Lxv;)V

    .line 302
    .local v6, "changeReadListener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    move v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V

    goto :goto_0

    .line 304
    .end local v6    # "changeReadListener":Lxv;, "Lxv<Lxv$a;>;"
    :cond_5
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    const-string/jumbo v3, "changeAllReadStatus fail, for mailApi is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz p2, :cond_1

    .line 306
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected executeLoad()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->notifyLoadStarted()V

    .line 346
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V

    .line 347
    return-void
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 10
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 586
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 588
    .local v0, "folderId":J
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v7, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 589
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 591
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 592
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 593
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v5, :cond_0

    .line 597
    iget-boolean v7, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-eqz v7, :cond_0

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v7, v8, v0

    if-nez v7, :cond_0

    .line 598
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v6

    .line 602
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 603
    const-string/jumbo v7, "AbsDefaultMailDisplayer"

    const-string/jumbo v8, "getAttachmentList error"

    invoke-static {v7, v8, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 607
    sget-object v7, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 609
    :cond_2
    return-object v4
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
    .line 545
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFolder()Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method public abstract getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
.end method

.method public getTagList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "targetTag"    # Ljava/lang/String;
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

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 615
    const/4 v4, 0x0

    .line 654
    :cond_0
    :goto_0
    return-object v4

    .line 618
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 621
    .local v0, "folderId":J
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v9, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 622
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 624
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 625
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 626
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v5, :cond_2

    .line 630
    iget-wide v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v9, v10, v0

    if-nez v9, :cond_2

    .line 634
    iget-object v7, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 635
    .local v7, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 639
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 640
    .local v6, "tag":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 641
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 645
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 646
    .local v8, "tr":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 647
    const-string/jumbo v9, "AbsDefaultMailDisplayer"

    const-string/jumbo v10, "getTagList error"

    invoke-static {v9, v10, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    .end local v8    # "tr":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 651
    sget-object v9, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getUnreadCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 551
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 553
    .local v0, "lid":Ljava/lang/Long;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getLocalFolderUnreadCount(Ljava/lang/Long;)I

    move-result v1

    .line 556
    .end local v0    # "lid":Ljava/lang/Long;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnreadList()Ljava/util/List;
    .locals 10
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 561
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 562
    .local v0, "folderId":J
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v7, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 563
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 566
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 567
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 568
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v7, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v7, :cond_0

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v7, v8, v0

    if-nez v7, :cond_0

    .line 569
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v6

    .line 573
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 574
    const-string/jumbo v7, "AbsDefaultMailDisplayer"

    const-string/jumbo v8, "getUnreadList error"

    invoke-static {v7, v8, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 578
    sget-object v7, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 581
    :cond_2
    return-object v4
.end method

.method public hasMoreHistoryMail()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 513
    .local v3, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 514
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 517
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 520
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCommonMail:Z

    if-eqz v4, :cond_2

    .line 521
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 524
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasMoreMail:Z

    goto :goto_0

    .line 527
    :cond_2
    iget-object v4, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 528
    .local v2, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v2, :cond_0

    .line 529
    iget-object v4, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    iget v5, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-interface {v4, v6, v7, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->hasMoreHistoryMails(JI)Z

    move-result v1

    .line 530
    .local v1, "hasMore":Z
    goto :goto_0
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 152
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    :cond_0
    const-string/jumbo v4, "AbsDefaultMailDisplayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "current folder can not load more, currentFolder: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_1

    .line 155
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v4

    invoke-interface {p1, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Lxv;)V

    .line 178
    .local v1, "loadHistoryListener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 179
    .local v2, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->getOldestSerId()[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "oldestSerIds":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->isSessionableLoadHistory(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    if-eqz v2, :cond_1

    .line 190
    new-array v4, v5, [J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    aput-wide v6, v4, v8

    new-array v5, v5, [I

    iget v6, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    aput v6, v5, v8

    invoke-interface {v2, v4, v5, v3, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMultipleHistoryMails([J[I[Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 195
    :cond_3
    if-eqz v2, :cond_4

    .line 196
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    new-array v4, v5, [J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    aput-wide v6, v4, v8

    new-array v5, v5, [I

    iget v6, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    aput v6, v5, v8

    invoke-interface {v2, v4, v5, v3, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMultipleHistoryMails([J[I[Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 203
    :cond_4
    const-string/jumbo v4, "AbsDefaultMailDisplayer"

    const-string/jumbo v5, "load more failed for mailApi is null"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 538
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseCallback(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V

    .line 539
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseLoader()V

    .line 540
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 541
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 542
    return-void
.end method

.method public refreshMail()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    const-string/jumbo v3, "refreshMail start"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 119
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    :cond_0
    const-string/jumbo v3, "AbsDefaultMailDisplayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshMail cancel, folder "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_1
    return-void

    .line 120
    :cond_1
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    const-string/jumbo v3, "refreshMail cancel, account is null"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 133
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 134
    new-array v2, v8, [J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    aput-wide v4, v2, v6

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-wide v4, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    aput-wide v4, v2, v7

    new-array v3, v8, [I

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    aput v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mSentMailbox:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget v4, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    aput v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncNewMails([J[I)V

    goto :goto_1

    .line 136
    :cond_5
    if-eqz v1, :cond_6

    .line 137
    new-array v2, v7, [J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    aput-wide v4, v2, v6

    new-array v3, v7, [I

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    aput v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncNewMails([J[I)V

    goto :goto_1

    .line 140
    :cond_6
    const-string/jumbo v2, "AbsDefaultMailDisplayer"

    const-string/jumbo v3, "refreshMail cancel, mailApi is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 6
    .param p1, "absModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const-string/jumbo v1, "AbsDefaultMailDisplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchToFolder fail, for folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 83
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->refreshMail()V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->notifyLoadSuccess()V

    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo v1, "AbsDefaultMailDisplayer"

    const-string/jumbo v2, "switchToFolder start"

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->refreshMail()V

    .line 94
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 96
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasLoadFinishedFirst:Z

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->refreshMail()V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->mHasExecuteRefreshedFirst:Z

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->executeLoad()V

    goto :goto_0
.end method
