.class public final Lerr;
.super Leqq;
.source "PublicGroupSearchPresenter.java"

# interfaces
.implements Lerq$a;


# instance fields
.field protected m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected n:I

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerq$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerq$b;

    .prologue
    .line 66
    invoke-direct {p0}, Leqq;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lerr;->m:Ljava/util/Set;

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lerr;->n:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lerr;->o:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lerr;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 68
    iput-object p2, p0, Lerr;->b:Leqp$b;

    .line 69
    iget-object v0, p0, Lerr;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 71
    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    if-eqz p1, :cond_0

    iget-object v1, p0, Lerr;->o:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.android.rimet.search.groupid.join"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lerr;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 224
    const/4 v1, 0x1

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-virtual {p0}, Lerr;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lerr;->o()V

    .line 159
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v5, Lerr$1;

    invoke-direct {v5, p0}, Lerr$1;-><init>(Lerr;)V

    .line 155
    .local v5, "mApiEventListener":Lcma;
    iget-object v0, p0, Lerr;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 156
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    iget-object v2, p0, Lerr;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v5, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mApiEventListener":Lcma;
    check-cast v5, Lcma;

    .line 158
    .restart local v5    # "mApiEventListener":Lcma;
    :cond_1
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    iget-object v1, p0, Lerr;->c:Leoe;

    .line 1084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lerr;->e:Ljava/lang/String;

    iget v3, p0, Lerr;->g:I

    const/16 v4, 0x64

    invoke-interface/range {v0 .. v5}, Lenb;->b(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "publicGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    const/4 v3, 0x0

    .line 231
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 233
    .local v1, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    .line 236
    .local v0, "conversationWrapper":Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
    iget-object v2, v0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v2, p2}, Lerr;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const-string/jumbo v2, "searchPublicConversation filter out %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2050
    const-string/jumbo v5, "search"

    invoke-static {v5, v2, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 2163
    .end local v0    # "conversationWrapper":Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
    .end local v1    # "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2164
    :cond_2
    iget-object v2, p0, Lerr;->b:Leqp$b;

    iget-object v3, p0, Lerr;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    .line 2165
    :goto_1
    return-void

    .line 2168
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    .line 2169
    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_4

    .line 2172
    iget-object v5, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    .line 2173
    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 2174
    if-eqz v5, :cond_4

    iget-object v2, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_4

    iget-object v2, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2175
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2179
    iget-object v2, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v2

    .line 2181
    if-eqz v2, :cond_7

    .line 2182
    iget v2, v2, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    .line 2187
    :goto_3
    sget-object v6, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v6, v6, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v2, v6, :cond_4

    .line 2191
    iget-object v2, p0, Lerr;->m:Ljava/util/Set;

    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v2, p2}, Lerr;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3055
    sget-object v2, Leoc$a;->a:Leoc;

    .line 2194
    sget-object v2, Lcom/alibaba/android/search/model/BaseModel$ModelType;->PublicGroup:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v2, v5, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v2

    .line 2195
    sget-object v6, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 2200
    iget v6, p0, Lerr;->n:I

    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 2201
    iget-object v6, p0, Lerr;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2202
    iget-object v6, p0, Lerr;->c:Leoe;

    if-eqz v6, :cond_5

    .line 2203
    iget-object v6, p0, Lerr;->c:Leoe;

    .line 4084
    iget-object v6, v6, Leoe;->a:Ljava/lang/String;

    .line 2203
    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 2204
    iget-object v6, p0, Lerr;->c:Leoe;

    .line 4092
    iget v6, v6, Leoe;->b:I

    .line 2204
    invoke-virtual {v2, v6}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 2206
    :cond_5
    iget v6, p0, Lerr;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lerr;->h:I

    .line 2207
    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2208
    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 2209
    iget-object v6, p0, Lerr;->m:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2210
    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2214
    :cond_6
    iget-object v2, p0, Lerr;->b:Leqp$b;

    iget-object v3, p0, Lerr;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Leqp$b;->a(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-super {p0}, Leqq;->d()V

    .line 76
    iget-object v0, p0, Lerr;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 77
    iget-object v0, p0, Lerr;->b:Leqp$b;

    iget-object v1, p0, Lerr;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Leqq;->m()V

    .line 83
    iget-object v0, p0, Lerr;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    return-void
.end method
