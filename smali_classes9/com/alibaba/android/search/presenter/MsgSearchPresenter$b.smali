.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/search/model/BaseModel;

.field b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

.field final synthetic c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;)V
    .locals 0
    .param p2, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p3, "groupMessageObject"    # Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a:Lcom/alibaba/android/search/model/BaseModel;

    .line 1464
    iput-object p3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .line 1465
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    .prologue
    .line 1456
    .line 2509
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a:Lcom/alibaba/android/search/model/BaseModel;

    if-eqz v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-eqz v0, :cond_1

    .line 2513
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 3093
    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    .line 2513
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    iget-object v1, v1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 1456
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    if-nez v1, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    new-instance v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;)V

    .line 1501
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_2

    .line 1502
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1504
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method
