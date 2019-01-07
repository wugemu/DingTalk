.class public final Lenq;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "SearchAssureSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;"
    }
.end annotation


# static fields
.field private static a:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Lenq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lenq$1;

    invoke-direct {v0}, Lenq$1;-><init>()V

    sput-object v0, Lenq;->a:Lcpq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .locals 5
    .param p0, "searchId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)",
            "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;"
        }
    .end annotation

    .prologue
    .local p1, "assureModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    const/4 v2, 0x0

    .line 554
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 567
    :goto_0
    return-object v1

    .line 556
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 557
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->getEntry()Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    move-result-object v1

    .line 560
    .local v1, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    if-eqz v1, :cond_2

    .line 562
    iget-object v4, v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->searchId:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v1    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    :cond_3
    move-object v1, v2

    .line 567
    goto :goto_0
.end method

.method public static a()Lenq;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lenq;->a:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenq;

    return-object v0
.end method

.method static synthetic a(Lenq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lenq;

    .prologue
    .line 38
    invoke-virtual {p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lenq;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lenq;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lenq;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 14018
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, "profileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 505
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 506
    .local v1, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 508
    iget v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    int-to-long v4, v7

    .line 510
    .local v4, "tag":J
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lenq;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    move-result-object v0

    .line 512
    .local v0, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    if-eqz v0, :cond_0

    iget-wide v8, v0, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->tag2:J

    cmp-long v7, v8, v4

    if-eqz v7, :cond_0

    .line 513
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    .end local v0    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .end local v1    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v4    # "tag":J
    :cond_1
    return-object v3
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "grps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    new-instance v6, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v6}, Ljava/util/concurrent/ForkJoinPool;-><init>()V

    .line 457
    .local v6, "forkJoinPool":Ljava/util/concurrent/ForkJoinPool;
    new-instance v2, Lenq$4;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, p0, v0, v1}, Lenq$4;-><init>(Lenq;Ljava/util/List;Ljava/util/List;)V

    .line 465
    .local v2, "checkContactsTask":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;>;"
    new-instance v3, Lenq$5;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v3, p0, v0, v1}, Lenq$5;-><init>(Lenq;Ljava/util/List;Ljava/util/List;)V

    .line 472
    .local v3, "checkGroupsTask":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;>;"
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/util/concurrent/Callable;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/concurrent/ForkJoinPool;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 13018
    .local v7, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    invoke-static {v7}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v11

    .line 480
    :cond_1
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 481
    .local v4, "contactFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;>;"
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 484
    .local v8, "grpFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 485
    .local v9, "invalidContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 487
    .local v10, "invalidGroups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    invoke-static {v9}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 488
    invoke-interface {v11, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    :cond_2
    invoke-static {v10}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 491
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v9    # "invalidContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    .end local v10    # "invalidGroups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    :catch_0
    move-exception v5

    .line 494
    .local v5, "e":Ljava/lang/Throwable;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "forkAndJoinContactAndGrp error: "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "tb_search_assure"

    return-object v0
.end method

.method static synthetic b(Lenq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lenq;

    .prologue
    .line 38
    invoke-virtual {p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lenq;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lenq;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lenq;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15018
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "grps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v7

    invoke-virtual {v7, p1}, Liar;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 525
    .local v2, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 526
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 527
    .local v1, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 532
    invoke-static {v0, p2}, Lenq;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    move-result-object v4

    .line 535
    .local v4, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    .line 537
    .local v3, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 538
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->title()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "("

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, ")"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "finalTitle":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 540
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v5    # "finalTitle":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->title:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->title()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 544
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v4    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    :cond_2
    return-object v6
.end method

.method static synthetic c(Lenq;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lenq;

    .prologue
    .line 38
    iget-object v0, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method protected static d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel;
    .locals 13
    .param p1, "searchId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    const/4 v12, 0x0

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v12

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    const/4 v9, 0x0

    .line 286
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v1

    .line 4055
    const-class v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 5051
    const-string/jumbo v3, "tb_search_assure"

    .line 5055
    const-class v4, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 287
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "searchId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "=? AND "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "clickAtMills"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "=0 AND "

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "evictAtMills"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "!= 0"

    aput-object v7, v5, v6

    .line 288
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 286
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 294
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    new-instance v11, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    invoke-direct {v11}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;-><init>()V

    .line 296
    .local v11, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 298
    invoke-virtual {v11}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->toAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 303
    if-eqz v9, :cond_0

    .line 304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    .end local v11    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    :cond_2
    if-eqz v9, :cond_3

    .line 304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v12

    .line 308
    goto :goto_0

    .line 300
    :catch_0
    move-exception v10

    .line 301
    .local v10, "e":Ljava/lang/Throwable;
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "queryBySearchId error: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v9, :cond_3

    .line 304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 303
    .end local v10    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final a(Lcom/alibaba/android/search/assure/model/AssureModel;)V
    .locals 12
    .param p1, "assureModel"    # Lcom/alibaba/android/search/assure/model/AssureModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    :try_start_0
    iget-object v0, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v1

    .line 3055
    const-class v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 4051
    const-string/jumbo v3, "tb_search_assure"

    .line 233
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "keyword"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "= ?"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getKeyWord()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v6

    .line 235
    .local v6, "e":Ljava/lang/Throwable;
    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "remove error: "

    aput-object v1, v0, v9

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcov;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leot;",
            ">;",
            "Lcov",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    .local p1, "pushClickResults":Ljava/util/List;, "Ljava/util/List<Leot;>;"
    .local p2, "listISupplyListener":Lcov;, "Lcov<Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;>;"
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lenq$2;

    invoke-direct {v2, p0, p1, p2}, Lenq$2;-><init>(Lenq;Ljava/util/List;Lcov;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)Z
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    .local p1, "assureModels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    const/4 v7, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "insertSuccess":Z
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    :goto_0
    return v7

    .line 65
    :cond_0
    const/4 v5, 0x0

    .line 66
    .local v5, "statement":Lcom/alibaba/bee/SQLiteStatement;
    invoke-virtual {p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "dbName":Ljava/lang/String;
    const-class v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 74
    .local v2, "entryCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    :try_start_0
    iget-object v7, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 75
    iget-object v7, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    .line 2051
    const-string/jumbo v8, "tb_search_assure"

    .line 75
    invoke-static {v2, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v2, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v5

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 77
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_1

    .line 81
    invoke-static {v0}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->toDBEntry(Lcom/alibaba/android/search/assure/model/AssureModel;)Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    move-result-object v4

    .line 82
    .local v4, "searchAssureEntry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v4, v5}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 86
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 87
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 88
    const/4 v3, 0x1

    .line 89
    goto :goto_1

    .line 90
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v4    # "searchAssureEntry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    :cond_2
    iget-object v7, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v5, :cond_3

    .line 99
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 102
    :cond_3
    :try_start_1
    iget-object v7, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    move v7, v3

    .line 111
    goto :goto_0

    .line 103
    :catch_0
    move-exception v6

    .line 104
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v8, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v7, v8, :cond_4

    .line 106
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 91
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 92
    .restart local v6    # "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    const-string/jumbo v7, "data insert error: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2069
    const-string/jumbo v9, "search_func"

    invoke-static {v9, v7, v8}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v8, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v7, v8, :cond_7

    .line 95
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 99
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 102
    :cond_5
    :try_start_3
    iget-object v8, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v8, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 108
    :cond_6
    throw v7

    .line 98
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_7
    if-eqz v5, :cond_8

    .line 99
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 102
    :cond_8
    :try_start_4
    iget-object v7, p0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 103
    :catch_2
    move-exception v6

    .line 104
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v8, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v7, v8, :cond_4

    .line 106
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 103
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .line 104
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v8

    sget v9, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v8, v9, :cond_6

    .line 106
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 32
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/assure/model/AssureModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lenq;, "Lenq<TT;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    const/16 v26, 0x0

    .line 448
    :cond_0
    :goto_0
    return-object v26

    .line 363
    :cond_1
    const/16 v20, 0x0

    .line 365
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v7

    .line 6055
    const-class v8, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 7051
    const-string/jumbo v9, "tb_search_assure"

    .line 7055
    const-class v10, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 366
    invoke-static {v10}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "keyword"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "=? AND "

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "evictAtMills"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string/jumbo v13, " == 0 AND "

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "clickAtMills"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string/jumbo v13, " != 0"

    aput-object v13, v11, v12

    .line 367
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 365
    invoke-virtual/range {v6 .. v14}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 371
    if-eqz v20, :cond_11

    .line 8018
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 9018
    .local v26, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v24, "invalids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 377
    new-instance v22, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;-><init>()V

    .line 378
    .local v22, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 380
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->toAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v25

    .line 382
    .local v25, "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v25, :cond_3

    .line 383
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 440
    .end local v22    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .end local v24    # "invalids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    .end local v25    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v26    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :catch_0
    move-exception v21

    .line 441
    .local v21, "e":Ljava/lang/Throwable;
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "query error: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v21 .. v21}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    if-eqz v20, :cond_2

    .line 444
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 448
    .end local v21    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 385
    .restart local v22    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .restart local v24    # "invalids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    .restart local v25    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    .restart local v26    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :cond_3
    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 443
    .end local v22    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    .end local v24    # "invalids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    .end local v25    # "model":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v26    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :catchall_0
    move-exception v6

    if-eqz v20, :cond_4

    .line 444
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6

    .line 10018
    .restart local v24    # "invalids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    .restart local v26    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    :cond_5
    :try_start_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 11018
    .local v19, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 11571
    .local v23, "grps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    invoke-static/range {v26 .. v26}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 11575
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 11577
    invoke-virtual {v6}, Lcom/alibaba/android/search/assure/model/AssureModel;->isGroup()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 11578
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 11579
    :cond_7
    invoke-virtual {v6}, Lcom/alibaba/android/search/assure/model/AssureModel;->isContact()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 11580
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 396
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v31

    .line 398
    .local v31, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 399
    .local v15, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v15, :cond_9

    .line 401
    invoke-virtual {v15}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v30

    .line 12109
    .local v30, "uidStr":Ljava/lang/String;
    const-wide/16 v8, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v28

    .line 403
    .local v28, "uid":J
    const-wide/16 v8, 0x0

    cmp-long v7, v28, v8

    if-lez v7, :cond_9

    .line 404
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 408
    .end local v15    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v28    # "uid":J
    .end local v30    # "uidStr":Ljava/lang/String;
    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v18

    .line 410
    .local v18, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 411
    .restart local v15    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v15, :cond_b

    .line 413
    invoke-virtual {v15}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v16

    .line 415
    .local v16, "cid":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 416
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 420
    .end local v15    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    .end local v16    # "cid":Ljava/lang/String;
    :cond_c
    invoke-static/range {v31 .. v31}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v27

    .line 421
    .local v27, "uidEmpty":Z
    invoke-static/range {v18 .. v18}, Lcpd;->a(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v17

    .line 423
    .local v17, "cidEmpty":Z
    if-eqz v27, :cond_d

    if-eqz v17, :cond_d

    .line 443
    if-eqz v20, :cond_0

    .line 444
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 425
    :cond_d
    if-eqz v27, :cond_f

    .line 426
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lenq;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    :goto_6
    invoke-static/range {v24 .. v24}, Lcpd;->a(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-nez v6, :cond_e

    .line 12263
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lenq;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lenq;->k()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lenq$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v8, v0, v1}, Lenq$3;-><init>(Lenq;Ljava/util/List;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 443
    :cond_e
    :goto_7
    if-eqz v20, :cond_0

    .line 444
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 427
    :cond_f
    if-eqz v17, :cond_10

    .line 428
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lenq;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 430
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lenq;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 12273
    :catch_1
    move-exception v6

    .line 12274
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "remove error: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 443
    .end local v17    # "cidEmpty":Z
    .end local v18    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    .end local v23    # "grps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    .end local v24    # "invalids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    .end local v26    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/assure/model/AssureModel;>;"
    .end local v27    # "uidEmpty":Z
    .end local v31    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_11
    if-eqz v20, :cond_2

    .line 444
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method
