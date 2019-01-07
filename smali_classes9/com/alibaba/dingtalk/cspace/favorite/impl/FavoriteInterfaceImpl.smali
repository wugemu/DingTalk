.class public Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;
.super Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;
.source "FavoriteInterfaceImpl.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;-><init>()V

    .line 69
    const-string/jumbo v0, "FavoriteInterfaceImpl"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcky;Lcky;)Lcky;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;
    .param p1, "x1"    # Lcky;
    .param p2, "x2"    # Lcky;

    .prologue
    .line 68
    .line 25442
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 26099
    iget-object v0, p2, Lcky;->b:Ljava/lang/String;

    .line 26103
    iput-object v0, p1, Lcky;->b:Ljava/lang/String;

    .line 26115
    iget-object v0, p2, Lcky;->e:Ljava/lang/String;

    .line 26119
    iput-object v0, p1, Lcky;->e:Ljava/lang/String;

    .line 27107
    iget-object v0, p2, Lcky;->d:Ljava/lang/String;

    .line 27111
    iput-object v0, p1, Lcky;->d:Ljava/lang/String;

    .line 27123
    iget-object v0, p2, Lcky;->f:Ljava/lang/String;

    .line 27127
    iput-object v0, p1, Lcky;->f:Ljava/lang/String;

    .line 68
    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)Lcma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->b(Landroid/content/Context;)Lcma;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcma;JLjava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p2, "uid"    # J
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcky;",
            ">;J",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "listener":Lcma;, "Lcma<Lcky;>;"
    new-instance v2, Lcky;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcky;-><init>(Ljava/lang/String;)V

    .line 453
    .local v2, "srcInfo":Lcky;
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$8;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$8;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcky;Ljava/lang/String;Lcma;Landroid/content/Context;)V

    const-class v1, Lcma;

    check-cast p5, Landroid/app/Activity;

    .end local p5    # "context":Landroid/content/Context;
    invoke-interface {v7, v0, v1, p5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 486
    .local v6, "userListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 487
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;Lcma;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcky;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    .param p4, "x4"    # Lcma;

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 28108
    const-string/jumbo v0, "video"

    invoke-static {v0, v1, v1, p2}, Lgap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcky;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 28109
    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    invoke-direct {v1, p3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;-><init>(Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V

    .line 28110
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->setExtend(Ljava/lang/Object;)V

    .line 27559
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcma;Ljava/lang/String;Lcky;Landroid/content/Context;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcky;
    .param p4, "x4"    # Landroid/content/Context;

    .prologue
    .line 68
    .line 28490
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28491
    if-eqz p1, :cond_0

    .line 28492
    invoke-interface {p1, p3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 28495
    :cond_0
    if-nez p3, :cond_1

    .line 28496
    new-instance p3, Lcky;

    .end local p3    # "x3":Lcky;
    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcky;-><init>(Ljava/lang/String;)V

    .line 28499
    :cond_1
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;

    invoke-direct {v1, p0, p3, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$9;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcky;Lcma;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    check-cast p4, Landroid/app/Activity;

    .end local p4    # "x4":Landroid/content/Context;
    invoke-interface {v0, v1, v2, p4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 28524
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    .line 28525
    invoke-interface {v1, v0, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private b(Landroid/content/Context;)Lcma;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 117
    sget-object v3, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "favorite.add"

    invoke-static {v3, v4, v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz p1, :cond_1

    .line 121
    instance-of v3, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 124
    :cond_0
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 128
    :cond_1
    move-object v1, v0

    .line 129
    .local v1, "finalActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v5, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {v3, v4, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 179
    .local v2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 714
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    .line 25320
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "FavoriteProxy"

    const-string/jumbo v3, "deleteAllFavorite start"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25321
    iget-object v1, v0, Lgcu;->a:Ljava/lang/String;

    invoke-static {v1}, Lth;->b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    move-result-object v1

    new-instance v2, Lgcu$9;

    invoke-direct {v2, v0}, Lgcu$9;-><init>(Lgcu;)V

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;->deleteAllFavorite(Lxv;)V

    .line 715
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 84
    invoke-static {p1, p2}, Lgar;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 85
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 666
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 668
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 708
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Lgar;->a(Lcma;Landroid/content/Context;)V

    .line 710
    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Lgar;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;JJLcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "messageId"    # J
    .param p7, "uid"    # J
    .param p9, "videoMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .prologue
    .line 348
    new-instance v8, Lcky;

    const-string/jumbo v2, "IM"

    invoke-direct {v8, v2}, Lcky;-><init>(Ljava/lang/String;)V

    .line 349
    .local v8, "srcInfo":Lcky;
    const-wide/16 v4, 0x0

    cmp-long v2, p7, v4

    if-lez v2, :cond_0

    .line 13067
    move-wide/from16 v0, p7

    iput-wide v0, v8, Lcky;->c:J

    .line 354
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v2, p5, v4

    if-lez v2, :cond_1

    .line 355
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 14083
    iput-object v2, v8, Lcky;->h:Ljava/lang/String;

    .line 16055
    :goto_1
    iput-object p4, v8, Lcky;->a:Ljava/lang/String;

    .line 16075
    iput-wide p2, v8, Lcky;->g:J

    .line 363
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;

    move-object/from16 v0, p9

    invoke-direct {v5, p0, p1, v8, v0}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V

    const-class v6, Lcma;

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-interface {v2, v5, v6, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 17063
    .local v3, "listener":Lcma;, "Lcma<Lcky;>;"
    iget-wide v4, v8, Lcky;->c:J

    .line 18059
    iget-object v6, v8, Lcky;->a:Ljava/lang/String;

    move-object v2, p0

    move-object v7, p1

    .line 382
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcma;JLjava/lang/String;Landroid/content/Context;)V

    .line 388
    return-void

    .line 352
    .end local v3    # "listener":Lcma;, "Lcma<Lcky;>;"
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v4

    .line 14067
    iput-wide v4, v8, Lcky;->c:J

    goto :goto_0

    .line 357
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "IM"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p9

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    .line 358
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 357
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15083
    iput-object v2, v8, Lcky;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "s2"    # Ljava/lang/String;
    .param p6, "s3"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 393
    new-instance v3, Lcky;

    const-string/jumbo v0, "WEB"

    invoke-direct {v3, v0}, Lcky;-><init>(Ljava/lang/String;)V

    .line 394
    .local v3, "favoriteSrcInfo":Lcky;
    if-eqz p2, :cond_4

    .line 395
    const-string/jumbo v0, "ding_sender_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    const-string/jumbo v0, "ding_sender_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 18067
    iput-wide v0, v3, Lcky;->c:J

    .line 400
    :goto_0
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "conversation_id"

    .line 402
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20055
    iput-object v0, v3, Lcky;->a:Ljava/lang/String;

    .line 404
    :cond_0
    const-string/jumbo v0, "message_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    const-string/jumbo v0, "message_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20083
    iput-object v0, v3, Lcky;->h:Ljava/lang/String;

    .line 411
    :goto_1
    const-string/jumbo v0, "org_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    const-string/jumbo v0, "org_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 22075
    .local v10, "orgId":J
    iput-wide v10, v3, Lcky;->g:J

    .line 419
    .end local v10    # "orgId":J
    :cond_1
    :goto_2
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$7;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$7;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcma;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v8, v0, v2, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 24063
    .local v5, "listener":Lcma;, "Lcma<Lcky;>;"
    iget-wide v6, v3, Lcky;->c:J

    .line 25059
    iget-object v8, v3, Lcky;->a:Ljava/lang/String;

    move-object v4, p0

    move-object v9, p1

    .line 438
    invoke-direct/range {v4 .. v9}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcma;JLjava/lang/String;Landroid/content/Context;)V

    .line 439
    return-void

    .line 398
    .end local v5    # "listener":Lcma;, "Lcma<Lcky;>;"
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 19067
    iput-wide v0, v3, Lcky;->c:J

    goto :goto_0

    .line 407
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "WEB"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 409
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 407
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21083
    iput-object v0, v3, Lcky;->h:Ljava/lang/String;

    goto :goto_1

    .line 416
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 23067
    iput-wide v0, v3, Lcky;->c:J

    .line 417
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "WEB"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23083
    iput-object v0, v3, Lcky;->h:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p4, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2, p3}, Lgap;->a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 637
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 638
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "namecardDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p4, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2, p3}, Lgap;->a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 644
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 645
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 601
    .local p4, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_0

    const-string/jumbo v0, "DING"

    .line 25087
    iget-object v1, p2, Lcky;->m:Ljava/lang/String;

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {p2, p3}, Lgap;->a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v7

    .line 603
    .local v7, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v7, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 631
    .end local v7    # "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    :goto_0
    return-void

    .line 606
    :cond_0
    new-instance v6, Lgat;

    new-instance v0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$10;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$10;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcky;Lcma;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {v6, p1, p3, v0, v1}, Lgat;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;Z)V

    .line 630
    .local v6, "spaceInfoManager":Lgat;
    invoke-virtual {v6}, Lgat;->a()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2, p3}, Lgap;->a(Lcky;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 566
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 567
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$GeoContent;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/wukong/im/MessageContent$GeoContent;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$GeoContent;Lcma;)V

    .line 573
    invoke-static {p2, p3}, Lgap;->a(Lcky;Lcom/alibaba/wukong/im/MessageContent$GeoContent;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 574
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 575
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$VideoContent;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/wukong/im/MessageContent$VideoContent;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$VideoContent;Lcma;)V

    .line 553
    invoke-static {p2, p3}, Lgap;->a(Lcky;Lcom/alibaba/wukong/im/MessageContent$VideoContent;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 554
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 555
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Ljava/lang/String;JLjava/util/List;Lcma;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p6, "volumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2, p3, p4, p5, p6}, Lgap;->a(Lcky;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 581
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p7, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 582
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p4, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2, p3}, Lgap;->a(Lcky;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 532
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p4, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 533
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "mediaId"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "size"    # J
    .param p9, "hasOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p10, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static/range {p2 .. p9}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 546
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p10, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 547
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;
    .param p6, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p8, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static/range {p2 .. p7}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 595
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p8, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 596
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "s2"    # Ljava/lang/String;
    .param p6, "s3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p7, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2, p3, p4, p5, p6}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 588
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p7, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 589
    return-void
.end method

.method public final a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoriteSrcInfo"    # Lcky;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "s2"    # Ljava/lang/String;
    .param p6, "s3"    # Ljava/lang/String;
    .param p7, "s4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p8, "bizCallback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static/range {p2 .. p7}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 651
    .local v0, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    invoke-static {v0, p8, p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcma;Landroid/content/Context;)V

    .line 652
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 104
    if-eqz p2, :cond_4

    .line 2018
    if-eqz p2, :cond_0

    .line 2019
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    .line 2020
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v2

    .line 2021
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2022
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 2023
    if-eqz v1, :cond_0

    .line 2027
    iget v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v2

    .line 2028
    sget-object v3, Lgbq$1;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 106
    .local v0, "favorite":Lgbp;
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->b(Landroid/content/Context;)Lcma;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbp;->a(Lcma;)V

    .line 114
    .end local v0    # "favorite":Lgbp;
    :cond_1
    :goto_1
    return-void

    .line 2034
    :pswitch_1
    new-instance v0, Lgbu;

    invoke-direct {v0, p1, p2, v1}, Lgbu;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    goto :goto_0

    .line 2036
    :pswitch_2
    new-instance v0, Lgbr;

    invoke-direct {v0, p1, p2, v1}, Lgbr;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    goto :goto_0

    .line 2058
    :pswitch_3
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v2, :cond_0

    .line 2061
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    move-result-object v2

    .line 2062
    sget-object v3, Lgbq$1;->b:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 2072
    new-instance v0, Lgbo;

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v0, p1, p2, v1, v2}, Lgbo;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    goto :goto_0

    .line 2064
    :pswitch_4
    new-instance v0, Lgbs;

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v0, p1, p2, v1, v2}, Lgbs;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    goto :goto_0

    .line 2067
    :pswitch_5
    new-instance v0, Lgbt;

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v0, p1, p2, v1, v2}, Lgbt;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    goto :goto_0

    .line 2070
    :pswitch_6
    new-instance v0, Lgbw;

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v0, p1, p2, v1, v2}, Lgbw;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    goto :goto_0

    .line 2077
    :pswitch_7
    new-instance v0, Lgbv;

    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v0, p1, p2, v1, v2}, Lgbv;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    goto :goto_0

    .line 2045
    :cond_2
    if-eqz v1, :cond_0

    .line 2046
    instance-of v2, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_3

    .line 2047
    new-instance v0, Lgbx;

    invoke-direct {v0, p1, p2}, Lgbx;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0

    .line 2048
    :cond_3
    instance-of v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v1, :cond_0

    .line 2049
    new-instance v0, Lgbn;

    invoke-direct {v0, p1, p2}, Lgbn;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0

    .line 110
    :cond_4
    if-eqz p1, :cond_1

    .line 111
    sget v1, Lfzs$h;->favorite_fail:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2028
    .line 2062
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 234
    if-eqz p2, :cond_a

    .line 236
    new-instance v5, Lcky;

    const-string/jumbo v2, "PIC"

    invoke-direct {v5, v2}, Lcky;-><init>(Ljava/lang/String;)V

    .line 237
    .local v5, "srcInfo":Lcky;
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_1

    .line 238
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 3067
    iput-wide v2, v5, Lcky;->c:J

    .line 4175
    :goto_0
    if-nez p2, :cond_2

    .line 4176
    const/4 v2, 0x0

    .line 243
    :goto_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "mediaId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 245
    const-string/jumbo v2, "CSpace"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v8, "favorite pic mediaId is null, url = "

    aput-object v8, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    aput-object v8, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    aput-object v8, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    aput-object v8, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget v2, Lfzs$h;->favorite_fail:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 294
    .end local v5    # "srcInfo":Lcky;
    .end local v7    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 240
    .restart local v5    # "srcInfo":Lcky;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 4067
    iput-wide v2, v5, Lcky;->c:J

    goto :goto_0

    .line 4179
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4180
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    goto :goto_1

    .line 4183
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4184
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    goto :goto_1

    .line 4187
    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4188
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    goto :goto_1

    .line 4191
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 249
    .restart local v7    # "mediaId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_9

    .line 250
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 5083
    iput-object v2, v5, Lcky;->h:Ljava/lang/String;

    .line 254
    :goto_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 255
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 256
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "conversation_id"

    .line 257
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7055
    iput-object v2, v5, Lcky;->a:Ljava/lang/String;

    .line 259
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "org_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    const-wide/16 v16, 0x0

    .line 262
    .local v16, "orgId":J
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "org_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 7075
    :goto_4
    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcky;->g:J

    .line 270
    .end local v16    # "orgId":J
    :cond_8
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v6

    .line 271
    .local v6, "isMediaId":Z
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;ZLjava/lang/String;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    const-class v4, Lcma;

    move-object/from16 v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-interface {v10, v2, v4, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 8063
    .local v9, "listener":Lcma;, "Lcma<Lcky;>;"
    iget-wide v10, v5, Lcky;->c:J

    .line 9059
    iget-object v12, v5, Lcky;->a:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v13, p1

    .line 288
    invoke-direct/range {v8 .. v13}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcma;JLjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 252
    .end local v6    # "isMediaId":Z
    .end local v9    # "listener":Lcma;, "Lcma<Lcky;>;"
    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "PIC"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6083
    iput-object v2, v5, Lcky;->h:Ljava/lang/String;

    goto/16 :goto_3

    .line 263
    .restart local v16    # "orgId":J
    :catch_0
    move-exception v14

    .line 264
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 290
    .end local v5    # "srcInfo":Lcky;
    .end local v7    # "mediaId":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "orgId":J
    :cond_a
    if-eqz p1, :cond_0

    .line 291
    sget v2, Lfzs$h;->favorite_fail:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 298
    if-eqz p3, :cond_4

    .line 299
    new-instance v7, Lcky;

    const-string/jumbo v0, "PIC"

    invoke-direct {v7, v0}, Lcky;-><init>(Ljava/lang/String;)V

    .line 300
    .local v7, "srcInfo":Lcky;
    if-eqz p2, :cond_0

    .line 301
    iget-wide v2, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 302
    iget-wide v2, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 9067
    iput-wide v2, v7, Lcky;->c:J

    .line 306
    :goto_0
    iget-wide v2, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 10083
    iput-object v0, v7, Lcky;->h:Ljava/lang/String;

    .line 307
    iget-object v0, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11055
    iput-object v0, v7, Lcky;->a:Ljava/lang/String;

    .line 312
    :cond_0
    iget-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :try_start_0
    iget-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 11075
    iput-wide v2, v7, Lcky;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_1
    :goto_1
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$5;

    invoke-direct {v3, p0, p1, v7, p3}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$5;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    const-class v4, Lcma;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 12063
    .local v1, "listener":Lcma;, "Lcma<Lcky;>;"
    iget-wide v2, v7, Lcky;->c:J

    .line 13059
    iget-object v4, v7, Lcky;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    .line 337
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcma;JLjava/lang/String;Landroid/content/Context;)V

    .line 343
    .end local v1    # "listener":Lcma;, "Lcma<Lcky;>;"
    .end local v7    # "srcInfo":Lcky;
    :cond_2
    :goto_2
    return-void

    .line 304
    .restart local v7    # "srcInfo":Lcky;
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 10067
    iput-wide v2, v7, Lcky;->c:J

    goto :goto_0

    .line 315
    :catch_0
    move-exception v6

    .line 316
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "srcInfo":Lcky;
    :cond_4
    if-eqz p1, :cond_2

    .line 340
    sget v0, Lfzs$h;->favorite_fail:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 198
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 200
    .local v0, "linkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 201
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    new-instance v2, Lgav;

    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)V

    const-class v6, Lcma;

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-interface {v3, v5, v6, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    invoke-direct {v2, p1, p2, v0, v3}, Lgav;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V

    .line 224
    .local v2, "messageTransfer2FavoriteManager":Lgav;
    invoke-virtual {v2}, Lgav;->a()V

    .line 230
    .end local v0    # "linkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/wukong/im/Message;>;"
    .end local v2    # "messageTransfer2FavoriteManager":Lgav;
    :cond_1
    :goto_1
    return-void

    .line 226
    :cond_2
    if-eqz p1, :cond_1

    .line 227
    sget v3, Lfzs$h;->favorite_fail:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 185
    invoke-static {p1, p2, p3}, Lgck;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lgcj;

    move-result-object v0

    .line 186
    .local v0, "favorite":Lgcj;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->b(Landroid/content/Context;)Lcma;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgcj;->a(Lcma;)V

    .line 194
    .end local v0    # "favorite":Lgcj;
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-eqz p1, :cond_0

    .line 191
    sget v1, Lfzs$h;->favorite_fail:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    .local p2, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "sendMessageObjectsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "message_favorite_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 97
    const-string/jumbo v2, "need_space_copy"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 657
    return-void
.end method
