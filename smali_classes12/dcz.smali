.class public final Ldcz;
.super Ljava/lang/Object;
.source "CategoryContainSessionsPresenter.java"

# interfaces
.implements Ldcy$a;


# instance fields
.field a:Lcom/alibaba/wukong/im/category/CategoryObject;

.field b:Ldcy$b;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private f:Liak;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldcy$b;Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Ldcy$b;
    .param p3, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldcz;->c:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldcz;->d:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Ldcz;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 39
    iput-object p2, p0, Ldcz;->b:Ldcy$b;

    .line 40
    iput-object p3, p0, Ldcz;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 42
    iget-object v0, p0, Ldcz;->b:Ldcy$b;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CategoryContainSessionsContract.View is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Ldcz;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CategoryContainSessionsContract.Presenter category object is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget-object v0, p0, Ldcz;->b:Ldcy$b;

    invoke-interface {v0, p0}, Ldcy$b;->setPresenter(Lcjd;)V

    .line 1055
    iget-object v0, p0, Ldcz;->f:Liak;

    if-nez v0, :cond_2

    .line 1056
    new-instance v0, Ldcz$1;

    invoke-direct {v0, p0}, Ldcz$1;-><init>(Ldcz;)V

    iput-object v0, p0, Ldcz;->f:Liak;

    .line 1067
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Ldcz;->f:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->addCategoryChangeListener(Liak;)V

    .line 52
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Ldcz;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldcz;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 90
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 91
    iget-object v1, p0, Ldcz;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Ldcz;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 102
    .local v1, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 104
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Ldcz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    new-instance v0, Ldcz$2;

    invoke-direct {v0, p0}, Ldcz$2;-><init>(Ldcz;)V

    .line 146
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    iget-object v1, p0, Ldcz;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 147
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldcz;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 150
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Ldcz;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->listConversationsByCategoryId(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V

    .line 152
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Ldcz;->f:Liak;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Ldcz;->f:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->removeCategoryChangeListener(Liak;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Ldcz;->f:Liak;

    .line 171
    :cond_0
    return-void
.end method
