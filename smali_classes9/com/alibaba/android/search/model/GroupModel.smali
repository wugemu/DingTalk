.class public Lcom/alibaba/android/search/model/GroupModel;
.super Lcom/alibaba/android/search/model/BaseModel;
.source "GroupModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private mIsFromServer:Z

.field protected mPublicGroup:Z

.field private mSearchRemoteResultType:I
    .annotation build Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper$GroupSearchResultType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/search/model/GroupModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "publicGroup"    # Z

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mSearchRemoteResultType:I

    .line 101
    iput-object p1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 102
    iput-boolean p2, p0, Lcom/alibaba/android/search/model/GroupModel;->mPublicGroup:Z

    .line 103
    iget-boolean v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mPublicGroup:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->PublicGroup:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/GroupModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 104
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/GroupModel;->setChooseMode(I)V

    .line 105
    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Group:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;ZLcom/alibaba/android/search/model/BaseModel$ModelType;)V
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "publicGroup"    # Z
    .param p3, "modelType"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/alibaba/android/search/model/BaseModel;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mSearchRemoteResultType:I

    .line 108
    iput-object p1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 109
    invoke-virtual {p0, p3}, Lcom/alibaba/android/search/model/GroupModel;->setModelType(Lcom/alibaba/android/search/model/BaseModel$ModelType;)V

    .line 110
    iput-boolean p2, p0, Lcom/alibaba/android/search/model/GroupModel;->mPublicGroup:Z

    .line 111
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->GroupChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    if-ne p3, v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/GroupModel;->setChooseMode(I)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/model/GroupModel;->setChooseMode(I)V

    goto :goto_0
.end method

.method private getFinalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq v2, v3, :cond_0

    .line 169
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 154
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    .line 155
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "searchType":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    const-string/jumbo v1, "[R]"

    .line 166
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object p1, v1

    .line 167
    goto :goto_0

    .line 158
    :cond_2
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const-string/jumbo v1, "[H]"

    goto :goto_1

    .line 160
    :cond_3
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    const-string/jumbo v1, "[L]"

    goto :goto_1

    .line 162
    :cond_4
    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string/jumbo v1, "[S]"

    goto :goto_1

    .line 169
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public fillAvatarRightBottomIconRes(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 4
    .param p1, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 222
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, -0x1

    .line 227
    .local v0, "tag":I
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "tag"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "tag"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 234
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(ILjava/util/Map;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_1
.end method

.method public getAvatar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/SearchUserIconObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 358
    const-string/jumbo v0, ""

    .line 359
    .local v0, "cid":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 365
    .restart local v0    # "cid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConversation()Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    goto :goto_0
.end method

.method public getDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 176
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "hitField"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDingtalkConversation()Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method public getGroupTagIconUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    .end local v0    # "cid":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "cid":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v3, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v3}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/search/utils/SearchUtils;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-direct {p0, v2}, Lcom/alibaba/android/search/model/GroupModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    :goto_0
    return-object v3

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "count":I
    iget-object v3, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v3

    if-lez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    .line 142
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "("

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, ")"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/android/search/model/GroupModel;->getFinalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v4, "memberCount"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "countStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1150
    invoke-static {v1, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 139
    goto :goto_1
.end method

.method public getNameIconRes()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getTag()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(ILjava/util/Map;)I

    move-result v0

    goto :goto_0
.end method

.method public getSearchRemoteResultType()I
    .locals 1
    .annotation build Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper$GroupSearchResultType;
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mSearchRemoteResultType:I

    return v0
.end method

.method public getTag()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 208
    const/4 v0, -0x1

    .line 209
    .local v0, "tag":I
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "tag"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "tag"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0
.end method

.method public isEnterprise()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 255
    :goto_0
    return v1

    .line 243
    :cond_1
    const/4 v0, -0x1

    .line 244
    .local v0, "tag":I
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "tag"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "tag"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 4033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 252
    :cond_2
    :goto_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 253
    const/4 v1, 0x1

    goto :goto_0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    long-to-int v0, v4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 255
    goto :goto_0
.end method

.method public isFromServer(Z)V
    .locals 0
    .param p1, "isFromServer"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/android/search/model/GroupModel;->mIsFromServer:Z

    .line 74
    return-void
.end method

.method public isGroupTagConfigured()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/Map;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/app/Activity;Landroid/view/View;)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 262
    const-string/jumbo v6, "search_click_type"

    const-string/jumbo v7, "type=%s"

    new-array v8, v10, [Ljava/lang/Object;

    const-string/jumbo v9, "group"

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    .line 267
    iget-boolean v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mPublicGroup:Z

    if-eqz v6, :cond_1

    .line 268
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string/jumbo v3, ""

    .line 274
    .local v3, "cid":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 275
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 276
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "cid"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cid":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 277
    .restart local v3    # "cid":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "title"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "title":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 278
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "tag"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 279
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v7, "tag"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 5033
    invoke-static {v6, v11}, Lcoc;->a(Ljava/lang/Integer;I)I

    .line 288
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.HOMETAB_CLICKED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "broadCast":Landroid/content/Intent;
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 290
    .local v1, "broadcastManager":Ldq;
    const-string/jumbo v6, "tabID"

    sget v7, Lemt$e;->tab_conversation:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getChooseMode()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 293
    invoke-static {v5}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "finalTitle":Ljava/lang/String;
    const-class v6, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v7, Lcom/alibaba/android/search/model/GroupModel$1;

    invoke-direct {v7, p0, p1, v4}, Lcom/alibaba/android/search/model/GroupModel$1;-><init>(Lcom/alibaba/android/search/model/GroupModel;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v6, v7, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 340
    .end local v4    # "finalTitle":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->shouldReturn2Recommend()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/GroupModel;->getCid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->fromCid(Ljava/lang/String;I)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    move-result-object v7

    .line 5142
    if-eqz v7, :cond_0

    .line 5146
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5147
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5148
    invoke-virtual {v6, v8}, Lesm;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "broadCast":Landroid/content/Intent;
    .end local v1    # "broadcastManager":Ldq;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_2

    .line 282
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 283
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    goto :goto_1

    .line 335
    .restart local v0    # "broadCast":Landroid/content/Intent;
    .restart local v1    # "broadcastManager":Ldq;
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "im_navigator_from"

    const-string/jumbo v7, "search_result"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v2, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_2

    .line 347
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/search/model/GroupModel;->mDingtalkConversation:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    sget-object v7, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V

    goto/16 :goto_0
.end method

.method public setSearchRemoteResultType(I)V
    .locals 0
    .param p1, "resultType"    # I
        .annotation build Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper$GroupSearchResultType;
        .end annotation
    .end param

    .prologue
    .line 81
    iput p1, p0, Lcom/alibaba/android/search/model/GroupModel;->mSearchRemoteResultType:I

    .line 82
    return-void
.end method

.method public shouldReturn2Recommend()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-boolean v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mIsFromServer:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/search/model/GroupModel;->mSearchRemoteResultType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
