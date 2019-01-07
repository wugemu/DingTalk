.class public abstract Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.source "GroupBaseSearchFragment.java"


# instance fields
.field protected q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected r:I

.field protected s:Lcom/alibaba/wukong/im/Conversation;

.field protected t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->q:Ljava/util/Set;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->s:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->s:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 121
    .local v0, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 2055
    :cond_2
    :goto_1
    sget-object v2, Leoc$a;->a:Leoc;

    .line 130
    iget v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->i:I

    if-nez v2, :cond_4

    sget-object v2, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 131
    :goto_2
    invoke-static {v2, v0, p1}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 132
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->i:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 133
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->q:Ljava/util/Set;

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->s:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    goto :goto_0

    .line 127
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_3
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "title"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    goto :goto_1

    .line 130
    :cond_4
    sget-object v2, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_2
.end method


# virtual methods
.method protected final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 58
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->c(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v3, 0x0

    .line 63
    .local v3, "exist":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    .line 65
    .local v2, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "title"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 70
    iget-object v5, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "cid"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1055
    .local v0, "cid":Ljava/lang/String;
    sget-object v5, Leoc$a;->a:Leoc;

    .line 77
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->i:I

    if-nez v5, :cond_4

    sget-object v5, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 78
    :goto_2
    invoke-static {v5, v2, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v4

    .line 79
    .local v4, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->i:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 80
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->p:Leoe;

    if-eqz v5, :cond_3

    .line 82
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->p:Leoe;

    .line 1084
    iget-object v5, v5, Leoe;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {v4, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->p:Leoe;

    .line 1092
    iget v5, v5, Leoe;->b:I

    .line 83
    invoke-virtual {v4, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 85
    :cond_3
    sget-object v5, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 86
    iget v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->q:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v4, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->s:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->s:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 77
    .end local v4    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    sget-object v5, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_2

    .line 95
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_5
    if-nez v3, :cond_6

    .line 96
    invoke-direct {p0, p2}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->c(Ljava/lang/String;)V

    .line 99
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->c()V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
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

    .prologue
    .line 52
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->b(Ljava/util/List;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method protected a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 12
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

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    .line 145
    .local v2, "data":Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v8, :cond_2

    .line 148
    iget-object v8, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    .line 149
    .local v3, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 150
    iget-object v8, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 152
    :cond_3
    if-eqz v3, :cond_2

    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 153
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 157
    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    .line 158
    .local v1, "conversationStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    const/4 v6, 0x0

    .line 159
    .local v6, "status":I
    if-eqz v1, :cond_4

    .line 160
    iget v6, v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    .line 162
    :cond_4
    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v8, v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v6, v8, :cond_2

    sget-object v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v8, v8, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v6, v8, :cond_2

    .line 167
    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    long-to-int v7, v10

    .line 168
    .local v7, "tag":I
    const/4 v8, 0x7

    if-eq v7, v8, :cond_2

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    .line 174
    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->q:Ljava/util/Set;

    iget-object v10, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, v8, p2}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 184
    if-eqz p3, :cond_6

    .line 3055
    sget-object v8, Leoc$a;->a:Leoc;

    .line 185
    sget-object v8, Lcom/alibaba/android/search/model/BaseModel$ModelType;->PublicGroup:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    invoke-static {v8, v3, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v5

    .line 186
    .local v5, "model":Lcom/alibaba/android/search/model/BaseModel;
    sget-object v8, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v8}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    :goto_2
    move-object v4, v5

    .line 192
    check-cast v4, Lcom/alibaba/android/search/model/GroupModel;

    .line 193
    .local v4, "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    iget v8, v2, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;->c:I

    invoke-virtual {v4, v8}, Lcom/alibaba/android/search/model/GroupModel;->setSearchRemoteResultType(I)V

    .line 194
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/alibaba/android/search/model/GroupModel;->isFromServer(Z)V

    .line 196
    iget v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->i:I

    invoke-virtual {v5, v8}, Lcom/alibaba/android/search/model/BaseModel;->setChooseMode(I)V

    .line 198
    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->g:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->p:Leoe;

    if-eqz v8, :cond_5

    .line 200
    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->p:Leoe;

    .line 4084
    iget-object v8, v8, Leoe;->a:Ljava/lang/String;

    .line 200
    invoke-virtual {v5, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 201
    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->p:Leoe;

    .line 4092
    iget v8, v8, Leoe;->b:I

    .line 201
    invoke-virtual {v5, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 203
    :cond_5
    iget v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->r:I

    .line 204
    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 205
    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "cid":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->q:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v5, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4055
    .end local v0    # "cid":Ljava/lang/String;
    .end local v4    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    .end local v5    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_6
    sget-object v8, Leoc$a;->a:Leoc;

    .line 188
    iget v8, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->i:I

    if-nez v8, :cond_7

    sget-object v8, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    :goto_3
    invoke-static {v8, v3, p2}, Leoc;->a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v5

    .line 189
    .restart local v5    # "model":Lcom/alibaba/android/search/model/BaseModel;
    sget-object v8, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v8}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    goto :goto_2

    .line 188
    .end local v5    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_7
    sget-object v8, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_3

    .line 211
    .end local v1    # "conversationStatus":Lcom/alibaba/wukong/im/Conversation$ConversationStatus;
    .end local v2    # "data":Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;
    .end local v3    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v6    # "status":I
    .end local v7    # "tag":I
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->c()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->k:I

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/GroupBaseSearchFragment;->l:I

    .line 44
    return-void
.end method
