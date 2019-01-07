.class public final Lddd;
.super Ljava/lang/Object;
.source "CategorySettingPresenter.java"

# interfaces
.implements Lddc$a;


# instance fields
.field a:Lcom/alibaba/wukong/im/category/CategoryObject;

.field b:Lddc$b;

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
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private f:Liak;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lddc$b;Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lddc$b;
    .param p3, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lddd;->c:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lddd;->d:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 53
    iput-object p2, p0, Lddd;->b:Lddc$b;

    .line 54
    iput-object p3, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 56
    iget-object v0, p0, Lddd;->b:Lddc$b;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CategorySettingContract.View is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CategorySettingPresenter categoryObject is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iget-object v0, p0, Lddd;->b:Lddc$b;

    invoke-interface {v0, p0}, Lddc$b;->setPresenter(Lcjd;)V

    .line 66
    iget-object v0, p0, Lddd;->b:Lddc$b;

    iget-object v1, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-object v1, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Lddc$b;->a(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lddd;->f:Liak;

    if-nez v0, :cond_2

    .line 1073
    new-instance v0, Lddd$1;

    invoke-direct {v0, p0}, Lddd$1;-><init>(Lddd;)V

    iput-object v0, p0, Lddd;->f:Liak;

    .line 1094
    const-class v0, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lddd;->f:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->addCategoryChangeListener(Liak;)V

    .line 69
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v1, p0, Lddd;->b:Lddc$b;

    invoke-interface {v1}, Lddc$b;->b()V

    .line 154
    new-instance v0, Lddd$3;

    invoke-direct {v0, p0}, Lddd$3;-><init>(Lddd;)V

    .line 183
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v1, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 184
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 187
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v2, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/CategoryService;->deleteCategory(JLcom/alibaba/wukong/Callback;)V

    .line 188
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lddd;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 209
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 210
    iget-object v4, p0, Lddd;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v4, p0, Lddd;->d:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 214
    .local v2, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0, v1}, Lddd;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-object v1, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 105
    .local v1, "lastTitle":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lddd;->b:Lddc$b;

    invoke-interface {v2}, Lddc$b;->b()V

    .line 109
    iget-object v2, p0, Lddd;->b:Lddc$b;

    invoke-interface {v2, p1}, Lddc$b;->a(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lddd$2;

    invoke-direct {v0, p0, v1}, Lddd$2;-><init>(Lddd;Ljava/lang/String;)V

    .line 143
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v2, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_2

    .line 144
    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 146
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_2
    iget-object v2, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-object p1, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v3, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-interface {v2, v3, v0}, Lcom/alibaba/wukong/im/CategoryService;->modifyCategory(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V

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
    .line 225
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    return-void

    .line 229
    :cond_1
    iget-object v2, p0, Lddd;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 230
    .local v1, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 232
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

    .line 233
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
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
    .line 192
    iget-object v0, p0, Lddd;->c:Ljava/util/List;

    return-object v0
.end method

.method b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Lddd$5;

    invoke-direct {v0, p0}, Lddd$5;-><init>(Lddd;)V

    .line 338
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    iget-object v1, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_2

    .line 339
    const-class v1, Lcma;

    iget-object v2, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    check-cast v0, Lcma;

    .line 341
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lddd;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    new-instance v0, Lddd$4;

    invoke-direct {v0, p0}, Lddd$4;-><init>(Lddd;)V

    .line 285
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    iget-object v1, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 286
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lddd;->e:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 289
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lddd;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->listConversationsByCategoryId(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V

    .line 291
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 356
    iget-object v0, p0, Lddd;->f:Liak;

    if-eqz v0, :cond_0

    .line 357
    const-class v0, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lddd;->f:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->removeCategoryChangeListener(Liak;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lddd;->f:Liak;

    .line 360
    :cond_0
    return-void
.end method
