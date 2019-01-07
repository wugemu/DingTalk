.class public Lcom/alibaba/android/user/impl/ContactInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
.source "ContactInterfaceImpl.java"


# instance fields
.field g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

.field private h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

.field private i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 279
    .line 41153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 41154
    :cond_0
    const-string/jumbo v0, "dealMessages(list,conversation)"

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, " listPreviousMessages return null"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41155
    :cond_1
    return-void

    .line 41157
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 41159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 41160
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    sub-int v3, v0, v1

    move v1, v0

    .line 41161
    :goto_0
    if-le v1, v3, :cond_1

    if-ltz v1, :cond_1

    .line 41162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 41163
    if-nez v0, :cond_4

    .line 41164
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v4, "dealMessages(list,conversation)"

    aput-object v4, v0, v8

    const-string/jumbo v4, " listPreviousMessages messages get item null"

    aput-object v4, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41161
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 41167
    :cond_4
    const-string/jumbo v4, "uid"

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 41169
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v4, "dealMessages(list,conversation)"

    aput-object v4, v0, v8

    const-string/jumbo v4, " uidString null"

    aput-object v4, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 41173
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 41174
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41175
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;-><init>()V

    .line 41177
    const-string/jumbo v5, "nick"

    invoke-interface {v0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    .line 41178
    const-string/jumbo v5, "avatarMediaId"

    invoke-interface {v0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->avatar:Ljava/lang/String;

    .line 41179
    const-string/jumbo v5, "remark"

    invoke-interface {v0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    .line 41180
    const-string/jumbo v5, "status"

    invoke-interface {v0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 41182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->status:I

    .line 41187
    :goto_2
    const-wide/32 v6, 0x28425

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->j(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 41188
    iget v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_d

    .line 41189
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_RECOMMEND:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    .line 41194
    :cond_6
    :goto_3
    const-wide/32 v6, 0x39dfc

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->j(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 41195
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->GROUP_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    .line 41198
    :cond_7
    const-string/jumbo v5, "orgName"

    invoke-interface {v0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    .line 41199
    const-string/jumbo v5, "orgAuthLevel"

    invoke-interface {v0, v5}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41200
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 41201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgAuthLevel:I

    .line 41203
    :cond_8
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->createTime:J

    .line 41205
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41206
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41207
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v5, "dealMessages(list,conversation)"

    aput-object v5, v0, v8

    const-string/jumbo v5, " nick null"

    aput-object v5, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41209
    :cond_9
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41210
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v5, "dealMessages(list,conversation)"

    aput-object v5, v0, v8

    const-string/jumbo v5, " avavar null"

    aput-object v5, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41212
    :cond_a
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41213
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v5, "dealMessages(list,conversation)"

    aput-object v5, v0, v8

    const-string/jumbo v5, " remark null"

    aput-object v5, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41215
    :cond_b
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41216
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v4, "dealMessages(list,conversation)"

    aput-object v4, v0, v8

    const-string/jumbo v4, " orgName null"

    aput-object v4, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 41184
    :cond_c
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "dealMessages(list,conversation)"

    aput-object v6, v5, v8

    const-string/jumbo v6, " status null"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 41191
    :cond_d
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    goto/16 :goto_3

    .line 41220
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 41221
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v4, "dealMessages(list,conversation)"

    aput-object v4, v0, v8

    const-string/jumbo v4, " repeat message"

    aput-object v4, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    return-object v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static o(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;
    .locals 10
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x30

    const/16 v8, 0x8

    const/4 v7, 0x2

    .line 4258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4259
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;-><init>()V

    .line 4307
    :goto_0
    return-object v1

    .line 4262
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_1

    move-object v1, v4

    .line 4264
    goto :goto_0

    .line 4268
    :cond_1
    const/4 v2, 0x0

    .local v2, "month":I
    const/4 v3, 0x0

    .line 4270
    .local v3, "year":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_4

    .line 4272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_5

    .line 4273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4278
    .local v0, "date":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2

    .line 4279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_6

    .line 4280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4286
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_3

    .line 4287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4290
    :cond_3
    if-lez v0, :cond_4

    const/16 v5, 0x1f

    if-gt v0, v5, :cond_4

    .line 4291
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;-><init>()V

    .line 4292
    .local v1, "expireDate":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;
    iput v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;->day:I

    .line 4294
    if-ltz v2, :cond_4

    const/16 v5, 0xc

    if-gt v2, v5, :cond_4

    .line 4295
    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;->month:I

    .line 4296
    iput v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;->year:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4303
    .end local v0    # "date":I
    .end local v1    # "expireDate":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "user"

    const-class v6, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "invalid date string:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    .line 4304
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4303
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v1, v4

    .line 4307
    goto/16 :goto_0

    .line 4275
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "date":I
    goto/16 :goto_1

    .line 4282
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_2
.end method


# virtual methods
.method public final A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1

    .prologue
    .line 3950
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    return-object v0
.end method

.method public final B()V
    .locals 1

    .prologue
    .line 4045
    const/4 v0, 0x0

    invoke-static {v0}, Lfvv;->a(Z)Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->c()V

    .line 4046
    return-void
.end method

.method public final C()V
    .locals 0

    .prologue
    .line 4053
    invoke-static {}, Lfvv;->b()V

    .line 4054
    return-void
.end method

.method public final D()Lccq;
    .locals 1

    .prologue
    .line 4070
    invoke-static {}, Lfwn;->i()Lfwn;

    move-result-object v0

    return-object v0
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 4152
    invoke-static {}, Lflw;->a()Z

    move-result v0

    return v0
.end method

.method public final F()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 4157
    invoke-static {v2}, Lflw;->a(Z)V

    .line 4158
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    .line 28071
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lflv;->a(ZZ)V

    .line 4159
    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4168
    invoke-static {}, Lfxb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final H()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4327
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 4328
    .local v1, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    .line 28084
    iget-object v0, v2, Lccr;->d:Lccs;

    .line 4329
    .local v0, "localizationConverter":Lccs;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4330
    invoke-interface {v0, v1}, Lccs;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 4333
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v2

    .line 28275
    iget-object v2, v2, Lfbn;->a:Lfbn$a;

    invoke-virtual {v2, v0}, Lfbn$a;->a(Lccs;)V

    .line 4334
    return-void
.end method

.method public final I()Lccs;
    .locals 1

    .prologue
    .line 4356
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$94;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$94;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    return-object v0
.end method

.method public final J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4391
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pref_last_create_org_info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4392
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4391
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4393
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    if-eqz v1, :cond_0

    .line 4394
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .line 4396
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final K()V
    .locals 1

    .prologue
    .line 4411
    invoke-static {}, Lfbd;->a()Lfbd;

    move-result-object v0

    invoke-virtual {v0}, Lfbd;->b()V

    .line 4412
    return-void
.end method

.method public final L()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4416
    invoke-static {}, Lfbd;->a()Lfbd;

    move-result-object v0

    .line 30195
    sget-boolean v1, Lfbd;->a:Z

    if-nez v1, :cond_0

    .line 30196
    const/4 v1, 0x1

    sput-boolean v1, Lfbd;->a:Z

    .line 30197
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfbd$5;

    invoke-direct {v2, v0}, Lfbd$5;-><init>(Lfbd;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4417
    :cond_0
    return-void
.end method

.method public final M()V
    .locals 0

    .prologue
    .line 4421
    invoke-static {}, Lfbd;->a()Lfbd;

    invoke-static {}, Lfbd;->c()V

    .line 4422
    return-void
.end method

.method public final N()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 4451
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 4452
    .local v0, "currentUserProfileExtension":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v0, :cond_1

    .line 4465
    :cond_0
    return-object v3

    .line 4455
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 4456
    .local v2, "orgEmployees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4459
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4460
    .local v3, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4461
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 4462
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final O()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4561
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_ut_real_debug"

    const-string/jumbo v2, "ddutdebug"

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 4586
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    return v0
.end method

.method public final Q()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 35052
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->X:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 4842
    return-void
.end method

.method public final R()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 4846
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 4847
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 4859
    :cond_0
    :goto_0
    return v2

    .line 4850
    :cond_1
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4851
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_2

    .line 4855
    invoke-static {v1}, Lfls;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4856
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final S()Z
    .locals 1

    .prologue
    .line 4867
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->c()Z

    move-result v0

    return v0
.end method

.method public final T()V
    .locals 0

    .prologue
    .line 4934
    invoke-static {}, Lfls;->i()V

    .line 4935
    return-void
.end method

.method public final U()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 36138
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v0

    .line 36139
    const-string/jumbo v2, "autokey008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v0, v2, :cond_0

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 4941
    :goto_0
    if-eqz v0, :cond_1

    .line 4942
    invoke-static {v1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b(Z)V

    .line 4944
    :cond_1
    return-void

    .line 36143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final V()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 4966
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v3, "f_eapp_entry_red_dot"

    .line 37083
    invoke-virtual {v1, v3, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 4966
    if-eqz v1, :cond_1

    .line 4967
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "open_miniapp"

    const-string/jumbo v4, "e_apps_list_prepared"

    invoke-interface {v1, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 4968
    .local v0, "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 4970
    .end local v0    # "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :goto_0
    return v1

    .line 4968
    .restart local v0    # "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4970
    .end local v0    # "enableSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "v433_show_miniapp_enter"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final W()V
    .locals 1

    .prologue
    .line 5111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 5112
    return-void
.end method

.method public final X()V
    .locals 1

    .prologue
    .line 5116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 5117
    return-void
.end method

.method public final Y()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5318
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_f2f_create_group_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Z()V
    .locals 0

    .prologue
    .line 5305
    invoke-static {}, Lflu;->a()V

    .line 5306
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 1861
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->f()Lfmq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfmq;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)J
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 882
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    invoke-interface {v0, p1}, Lfwc;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lchv;)Lchw;
    .locals 3
    .param p1, "certifyRequest"    # Lchv;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 4406
    .line 29015
    if-nez p1, :cond_1

    .line 29016
    :cond_0
    :goto_0
    return-object v0

    .line 29051
    :cond_1
    iget v1, p1, Lchv;->e:I

    .line 29019
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 29020
    new-instance v0, Lfuq;

    invoke-direct {v0, p1}, Lfuq;-><init>(Lchv;)V

    goto :goto_0

    .line 30051
    :cond_2
    iget v1, p1, Lchv;->e:I

    .line 29021
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 29022
    new-instance v0, Lfup;

    invoke-direct {v0, p1}, Lfup;-><init>(Lchv;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1488
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;-><init>()V

    .line 1489
    .local v0, "contactFragment":Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1490
    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;J)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "orgId"    # J

    .prologue
    .line 4446
    .line 31079
    invoke-static {p1}, Lfuv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    .line 4446
    return-object v0
.end method

.method public final a(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;"
        }
    .end annotation

    .prologue
    .line 1785
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)Ljava/lang/String;
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 621
    invoke-static {p1, p2, p3, p4}, Lfbm;->b(JJ)Lfrw;

    move-result-object v0

    .line 622
    .local v0, "orgUserNameObject":Lfrw;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lfrw;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;
    .locals 1
    .param p1, "nodeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 1702
    invoke-static {p1}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 605
    invoke-static {p1}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "orgId"    # J

    .prologue
    .line 4033
    invoke-static {p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27023
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v2

    .line 27314
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-gtz v0, :cond_1

    .line 27315
    invoke-virtual {v2, v1}, Lfvv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27321
    :cond_0
    :goto_0
    return-object v0

    .line 27318
    :cond_1
    const-string/jumbo v0, "global"

    invoke-static {v1, v0}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27319
    iget-object v3, v2, Lfvv;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27324
    iget-object v0, v2, Lfvv;->a:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfvv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # J
    .param p3, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    invoke-static {p1, p2, p3}, Lflr;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4906
    invoke-static {p1}, Lfls;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 4831
    .line 35021
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 35022
    sget-object v1, Lbld;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 35023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    .line 35024
    const/16 v1, 0x63

    iput v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    .line 35025
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 35026
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    sget-object v2, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v2

    shl-int v2, v4, v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    .line 35027
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 35028
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 35029
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 35030
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput p1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->number:I

    .line 35032
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V

    .line 4832
    return-void
.end method

.method public final a(J)V
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 669
    const-string/jumbo v2, "common_contact_chat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lflr;->a(JLjava/lang/String;JLandroid/content/Context;)V

    .line 670
    return-void
.end method

.method public final a(JIILcma;)V
    .locals 9
    .param p1, "oid"    # J
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1936
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcem;>;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

    move-object v2, p0

    move-object v3, p5

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;JII)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1964
    return-void
.end method

.method public final a(JJLcma;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    const/4 v8, 0x1

    .line 1050
    const-string/jumbo v2, "user"

    invoke-static {v2}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1051
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lccu$a;->a(Landroid/os/IBinder;)Lccu;

    move-result-object v1

    .line 1052
    .local v1, "service":Lccu;
    if-nez v1, :cond_1

    .line 1053
    if-eqz p5, :cond_0

    .line 1054
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    :try_start_0
    new-instance v6, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$34;

    invoke-direct {v6, p0, p5}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$34;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lccu;->c(JJLcct;)V

    .line 1094
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v7

    .line 1096
    .local v7, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcja;->c()V

    .line 1097
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getUserProfileExtension"

    aput-object v4, v2, v3

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(JLcma;)V
    .locals 5
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const-string/jumbo v3, "user"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 993
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lccu$a;->a(Landroid/os/IBinder;)Lccu;

    move-result-object v2

    .line 994
    .local v2, "service":Lccu;
    if-nez v2, :cond_1

    .line 995
    if-eqz p3, :cond_0

    .line 996
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "service is null"

    invoke-interface {p3, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    :try_start_0
    new-instance v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$33;

    invoke-direct {v3, p0, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$33;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    invoke-interface {v2, p1, p2, v3}, Lccu;->b(JLcct;)V

    .line 1036
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcja;->c()V

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUserProfileAsync"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(JLcmi;)V
    .locals 3
    .param p1, "orgID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcmi",
            "<",
            "Lcfa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3494
    .local p3, "callback":Lcmi;, "Lcmi<Lcfa;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcmi;)V

    .line 3496
    const-class v1, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 3498
    .local v0, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    if-nez v0, :cond_0

    .line 3501
    :goto_0
    return-void

    .line 3500
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/alibaba/android/user/idl/services/ContactIService;->getOrgManageInfoV2(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 5342
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->k()Lfms;

    move-result-object v0

    .line 5343
    .local v0, "loginUserDataSource":Lfms;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lfms;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)I

    .line 5344
    return-void
.end method

.method public final a(JLjava/lang/String;Lcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4556
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lezu;->a(JLjava/lang/String;Lcma;)V

    .line 4557
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "iconMediaId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4626
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    const/4 v4, 0x0

    move-wide v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lezt;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 4627
    return-void
.end method

.method public final a(JLjava/util/List;Lcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1851
    .local p3, "deptIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lezt;->c(JLjava/util/List;Lcma;)V

    .line 1852
    return-void
.end method

.method public final a(JZLcma;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "confirmed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5241
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p4}, Lezv;->a(JZLcma;)V

    .line 5242
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 683
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/concern_list.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$28;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$28;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 690
    return-void
.end method

.method public final a(Landroid/app/Activity;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "privacyType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2559
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 2560
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->f(Ljava/lang/String;)Z

    move-result v1

    .line 2562
    .local v1, "isCurrentUserEU":Z
    packed-switch p2, :pswitch_data_0

    .line 2607
    :goto_1
    return-void

    .line 2560
    .end local v1    # "isCurrentUserEU":Z
    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0

    .line 2564
    .restart local v1    # "isCurrentUserEU":Z
    :pswitch_0
    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2565
    const-string/jumbo v3, "https://pages.dingtalk.com/wow/dingtalk/16074/serviceforios"

    .line 2569
    .local v3, "url":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->service_protocol:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2599
    .local v2, "title":Ljava/lang/String;
    :goto_3
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/no_login_webview.html"

    new-instance v6, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$66;

    invoke-direct {v6, p0, v3, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$66;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 2567
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "https://pages.dingtalk.com/wow/dingtalk/act/service-en"

    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_2

    .line 2572
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_1
    if-eqz v1, :cond_2

    .line 2573
    const-string/jumbo v3, "https://h5.dingtalk.com/privacy-policy/eu.html"

    .line 2581
    .restart local v3    # "url":Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->privacy_policy:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2582
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_3

    .line 2574
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2575
    const-string/jumbo v3, "https://h5.dingtalk.com/privacy-policy/tw.html"

    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_4

    .line 2576
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2577
    const-string/jumbo v3, "https://h5.dingtalk.com/privacy-policy/zh.html"

    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_4

    .line 2579
    .end local v3    # "url":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "https://h5.dingtalk.com/privacy-policy/en.html"

    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_4

    .line 2584
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "https://pages.dingtalk.com/wow/dingtalk/16062/copyright"

    .line 2585
    .restart local v3    # "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->copyright_info:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2586
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_3

    .line 2588
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "https://h5.dingtalk.com/changelog/android.html?v="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2589
    .restart local v3    # "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->function_introduce:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2590
    .restart local v2    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 2592
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "https://s.dingtalk.com/market/dingtalk/aliversion.php"

    .line 2593
    .restart local v3    # "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->alilang_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2594
    .restart local v2    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 2562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;ZZ)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "chooseLimit"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "identify"    # Ljava/lang/String;
    .param p6, "chooseAction"    # I
    .param p8, "canChooseCurrentUser"    # Z
    .param p9, "filterSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 506
    .local p7, "selectMembers":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v10

    const-string/jumbo v11, "https://qr.dingtalk.com/org_contact.html"

    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$22;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$22;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;ZZ)V

    invoke-interface {v10, v11, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 521
    return-void
.end method

.method public final a(Landroid/app/Activity;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "selectCount"    # I
    .param p6, "identityFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4075
    .local p4, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p5, "orgDeptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_1

    .line 4076
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    .line 4077
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/select_result.html"

    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$88;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 4101
    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "reportType"    # I
    .param p3, "itemId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 475
    const-string/jumbo v0, "https://qr.dingtalk.com/contact/report.html"

    .line 476
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$2;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;ILjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 484
    return-void
.end method

.method public final a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "reportType"    # I
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "itemOwnerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 460
    const-string/jumbo v0, "https://qr.dingtalk.com/contact/report.html"

    .line 461
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$89;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$89;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 471
    return-void
.end method

.method public final a(Landroid/app/Activity;I[JJILjava/lang/String;[J[J)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "uids"    # [J
    .param p4, "corpId"    # J
    .param p6, "chooseLimit"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "selectedUids"    # [J
    .param p9, "disableUids"    # [J

    .prologue
    .line 1431
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;I[JJILjava/lang/String;[J[JLjava/util/HashMap;)V

    .line 1432
    return-void
.end method

.method public final a(Landroid/app/Activity;I[JJILjava/lang/String;[J[JLjava/util/HashMap;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseMode"    # I
    .param p3, "uids"    # [J
    .param p4, "corpId"    # J
    .param p6, "chooseLimit"    # I
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "selectedUids"    # [J
    .param p9, "disableUids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I[JJI",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1437
    .local p10, "nameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v11

    const-string/jumbo v12, "https://qr.dingtalk.com/tower_select.html"

    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$44;

    move-object v1, p0

    move-wide/from16 v2, p4

    move-object/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p6

    move-object/from16 v7, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$44;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLjava/lang/String;II[J[J[JLjava/util/HashMap;)V

    invoke-interface {v11, v12, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1451
    return-void
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;JZ)V

    .line 288
    return-void
.end method

.method public final a(Landroid/app/Activity;JI)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "source"    # I

    .prologue
    .line 4815
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 4827
    :cond_0
    :goto_0
    return-void

    .line 4818
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/sendfriendrequest"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JI)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JJLjava/lang/String;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "orgId"    # J
    .param p6, "staffId"    # Ljava/lang/String;
    .param p7, "source"    # I

    .prologue
    .line 363
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v8

    .line 364
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;

    move-object v1, p0

    move-wide v2, p4

    move-wide v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JJLjava/lang/String;I)V

    .line 363
    invoke-interface {v8, v9, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 375
    return-void
.end method

.method public final a(Landroid/app/Activity;JLandroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 424
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/user_im_robot_template.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$69;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p3, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$69;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLandroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 4611
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/external/external_company_list_include_business.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$98;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$98;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 4622
    return-void
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;ILcma;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "jumpUrl"    # Ljava/lang/String;
    .param p5, "minMemberCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4981
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 4982
    const-string/jumbo v4, "err_parameter"

    const-string/jumbo v6, "activity is null"

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5027
    :goto_0
    return-void

    .line 37174
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-lez v4, :cond_4

    .line 37178
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 37180
    if-eqz v4, :cond_4

    .line 37184
    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 37186
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37187
    :cond_1
    const/4 v2, 0x0

    .line 4988
    .local v2, "orgDetail":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :goto_1
    if-eqz v2, :cond_5

    .line 4989
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    iget v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-static/range {v3 .. v10}, Lflz;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 4990
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 37190
    .end local v2    # "orgDetail":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 37191
    if-eqz v4, :cond_3

    .line 37195
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v7, v8, p2

    if-nez v7, :cond_3

    .line 37196
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    goto :goto_1

    .line 37200
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 4994
    .restart local v2    # "orgDetail":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :cond_5
    const/4 v4, 0x0

    .line 4995
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Lezg$l;->dt_processing_please_wait:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4994
    invoke-static {p1, v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v5

    .line 4997
    .local v5, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    new-instance v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;

    move-object v4, p0

    move-object/from16 v6, p6

    move-object v7, p1

    move-wide v8, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcma;Landroid/app/Activity;JLjava/lang/String;I)V

    .line 5025
    .local v3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    const-class v4, Lcma;

    invoke-static {v3, v4, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    check-cast v3, Lcma;

    .line 5026
    .restart local v3    # "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Lezt;->a(Ljava/lang/Long;Lcma;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "mobile"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "fromNameCard"    # Z

    .prologue
    .line 336
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, "targetSchema":Ljava/lang/String;
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v8

    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 349
    return-void
.end method

.method public final a(Landroid/app/Activity;JZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "forbiddenAddFriend"    # Z

    .prologue
    .line 292
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "targetSchema":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JZ)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 304
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 525
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$23;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$23;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 534
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "isFinishActivity"    # Z

    .prologue
    .line 1326
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lfls;->b(Landroid/app/Activity;Landroid/os/Bundle;Z)V

    .line 1327
    return-void
.end method

.method public final a(Landroid/app/Activity;Lchs;Lcma;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visitRecordRequestObject"    # Lchs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lchs;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3866
    .local p3, "eventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3872
    :cond_0
    :goto_0
    return-void

    .line 3869
    :cond_1
    invoke-static {}, Lfau;->a()Lezz;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3870
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    .line 3871
    invoke-interface {v0, p3, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3869
    invoke-interface {v1, p2, v0}, Lezz;->a(Lchs;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcma;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 4761
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 34072
    :cond_0
    :goto_0
    return-void

    .line 4765
    :cond_1
    new-instance v0, Lfrd;

    invoke-direct {v0}, Lfrd;-><init>()V

    .line 34070
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 34071
    :cond_2
    const-string/jumbo v0, "AlipayAuthCodeHelper"

    const-string/jumbo v1, "activity == null || listener == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 34074
    :cond_3
    iput-object p1, v0, Lfrd;->a:Landroid/app/Activity;

    .line 34075
    iput-object p2, v0, Lfrd;->b:Lcma;

    .line 34081
    new-instance v1, Lfrd$2;

    invoke-direct {v1, v0}, Lfrd$2;-><init>(Lfrd;)V

    .line 34105
    const-class v2, Lcma;

    iget-object v0, v0, Lfrd;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 34106
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    const-string/jumbo v2, "ALIPAY"

    invoke-virtual {v1, v2, v3, v0}, Lfas;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 539
    if-nez p2, :cond_0

    .line 554
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x44c

    if-le v0, v1, :cond_1

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_contact_choose_max_limit"

    .line 7083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 542
    if-eqz v0, :cond_1

    .line 543
    const-string/jumbo v0, "selectUserList"

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lffv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->builder()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 7957
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 547
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$24;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$24;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "selectedContactsRequest"    # Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4106
    if-nez p1, :cond_0

    .line 4117
    :goto_0
    return-void

    .line 4110
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/selected_contacts.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$90;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$90;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "authOrgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .prologue
    .line 4426
    const-string/jumbo v0, ""

    invoke-static {p1, p2, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V

    .line 4427
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "authOrgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 4431
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;Ljava/lang/String;)V

    .line 4432
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

    .prologue
    .line 40047
    sget-object v0, Lfuj$b;->a:Lfuj;

    .line 5517
    invoke-virtual {v0, p1, p2}, Lfuj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V

    .line 5518
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 6358
    invoke-static {p1, p2, v0}, Lflz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    .line 354
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V

    .line 403
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "conversationName"    # Ljava/lang/String;
    .param p4, "forbiddenAddFriend"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 380
    if-eqz p2, :cond_0

    iget v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 381
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;J)V

    .line 398
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid="

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "profile_one_user_enter"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 386
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    .line 387
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$60;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$60;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;Z)V

    .line 386
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "forbiddenAddFriend"    # Z

    .prologue
    .line 358
    invoke-static {p1, p2, p3}, Lflz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    .line 359
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 308
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/user_guide_task.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$30;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$30;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 316
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "chooseMode"    # I
    .param p4, "chooseLimit"    # I
    .param p5, "limitMsgRes"    # I
    .param p6, "filterMyself"    # Z
    .param p7, "argments"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 488
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v8

    const-string/jumbo v9, "https://qr.dingtalk.com/org_contact.html"

    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move/from16 v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$13;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;Ljava/lang/String;ZIII)V

    invoke-interface {v8, v9, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 501
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5180
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5181
    .local v2, "requestJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "headers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5183
    .local v1, "headers":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 5184
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "headers":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5185
    .restart local v1    # "headers":Lorg/json/JSONObject;
    const-string/jumbo v3, "headers"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5188
    :cond_0
    const-string/jumbo v3, "x-appkey"

    const-string/jumbo v4, "21811227"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5189
    const-string/jumbo v3, "x-ttid"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcpy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5190
    const-string/jumbo v3, "x-devid"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/wukong/WKManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5192
    invoke-static {}, Lfxm;->a()Lfxm;

    move-result-object v4

    .line 38118
    const-string/jumbo v3, "needLogin"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 38121
    const-string/jumbo v3, "icbu"

    .line 38123
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "f_mtop_over_lwp_login_site_param_enable"

    invoke-virtual {v6, v7}, Lchx;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38124
    const-string/jumbo v3, "loginSite"

    const-string/jumbo v6, "icbu"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38127
    :cond_1
    if-nez v5, :cond_2

    .line 38128
    const-class v3, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;

    .line 38129
    new-instance v5, Lfxm$3;

    invoke-direct {v5, v4, p3}, Lfxm$3;-><init>(Lfxm;Lcma;)V

    .line 38147
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/rpcoverlwp/TunnelIService;->mtop(Ljava/lang/String;Liyv;)V

    .line 5204
    .end local v1    # "headers":Lorg/json/JSONObject;
    .end local v2    # "requestJsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 38151
    .restart local v1    # "headers":Lorg/json/JSONObject;
    .restart local v2    # "requestJsonObject":Lorg/json/JSONObject;
    :cond_2
    sget-object v5, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v5}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v5

    .line 38153
    if-eqz v5, :cond_3

    sget-object v6, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v6}, Lcom/ali/user/open/service/impl/SessionManager;->isSessionValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 38155
    iget-object v3, v5, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    iget-object v5, v5, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v2, p3}, Lfxm;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5194
    .end local v1    # "headers":Lorg/json/JSONObject;
    .end local v2    # "requestJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 5196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$15;

    invoke-direct {v3, p0, p3, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$15;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;Ljava/lang/Exception;)V

    invoke-static {v3}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 38166
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "headers":Lorg/json/JSONObject;
    .restart local v2    # "requestJsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    new-instance v5, Lfxm$4;

    invoke-direct {v5, v4, v2, p3}, Lfxm$4;-><init>(Lfxm;Lorg/json/JSONObject;Lcma;)V

    .line 38188
    invoke-static {p1, v3, v5}, Lfrb;->b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 320
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "targetSchema":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$40;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$40;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 332
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;

    .prologue
    .line 4436
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4437
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3848
    .local p3, "fillData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-nez p1, :cond_0

    .line 3861
    :goto_0
    return-void

    .line 3851
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3852
    .local v0, "i":Landroid/content/Intent;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 3853
    .local v2, "orgId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 3854
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3857
    :cond_1
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3858
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3859
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isNeedSyn"    # Z

    .prologue
    .line 2218
    invoke-static {p1, p2}, Lflw;->a(Landroid/app/Activity;Z)V

    .line 2219
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1611
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/add_friend"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 1762
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_score.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$51;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$51;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1770
    return-void
.end method

.method public final a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "fillData"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p5, "requestCode"    # I

    .prologue
    .line 3514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3515
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3516
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3517
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3518
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3520
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "fillData"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p5, "identify"    # Ljava/lang/String;

    .prologue
    .line 3623
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3624
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3625
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3626
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3627
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3628
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3630
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 1748
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manage_org.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$50;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$50;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1758
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J
    .param p4, "contactType"    # Ljava/lang/String;
    .param p5, "modifyTime"    # J

    .prologue
    .line 1674
    move-wide v0, p2

    move-object v2, p4

    move-wide v3, p5

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lflr;->a(JLjava/lang/String;JLandroid/content/Context;)V

    .line 1675
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1308
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/add_friend"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$39;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$39;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1317
    return-void
.end method

.method public final a(Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3505
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lfbd;->a()Lfbd;

    invoke-static {p2}, Lfbd;->a(Lcma;)V

    .line 3506
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4136
    if-nez p1, :cond_0

    .line 4148
    :goto_0
    return-void

    .line 4139
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/local_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$92;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$92;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "passcode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1634
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pwd/lock_screen.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$48;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$48;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1641
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1642
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "activity":Landroid/content/Context;
    invoke-virtual {p1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1644
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1295
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/menu.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$38;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$38;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, p2, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1304
    return-void
.end method

.method public final a(Lcfs;)V
    .locals 3
    .param p1, "changedModel"    # Lcfs;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 852
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v0

    .line 8078
    if-eqz p1, :cond_0

    .line 8082
    sget-object v1, Lfxi;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfxi$2;

    invoke-direct {v2, v0, p1}, Lfxi$2;-><init>(Lfxi;Lcfs;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 853
    :cond_0
    return-void
.end method

.method public final a(Lcjo$a;)V
    .locals 1
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 9071
    invoke-static {}, Log$a;->a()Log;

    move-result-object v0

    .line 9095
    iget-object v0, v0, Log;->d:Lcjo;

    invoke-interface {v0, p1}, Lcjo;->a(Lcjo$a;)V

    .line 868
    return-void
.end method

.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lchh;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1455
    .local p1, "listener":Lcma;, "Lcma<Lchh;>;"
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v0

    .line 12122
    sget-object v1, Lfxi;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfxi$3;

    invoke-direct {v2, v0, p1}, Lfxi$3;-><init>(Lfxi;Lcma;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1456
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)V
    .locals 2
    .param p1, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .param p2, "source"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4122
    if-nez p1, :cond_0

    .line 4132
    :goto_0
    return-void

    .line 4126
    :cond_0
    const-class v0, Lfnb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$91;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    .param p2, "confirmed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5236
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lezv;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V

    .line 5237
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;Lcma;)V
    .locals 1
    .param p1, "businessCardObject"    # Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4924
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfag;->a()Lezn;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lezn;->a(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;Lcma;)V

    .line 4925
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "fragment_key"

    const-string/jumbo v2, "onversationMembersFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const-string/jumbo v1, "bread_node_name"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string/jumbo v1, "conversation_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 863
    return-void
.end method

.method public final a(Ljava/lang/String;IILcma;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1795
    .local p4, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3, p4}, Lezt;->a(Ljava/lang/String;IILcma;)V

    .line 1796
    return-void
.end method

.method public final a(Ljava/lang/String;IJLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 9
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "orgId"    # J
    .param p5, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 4948
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lezt;->a(Ljava/lang/String;IJLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V

    .line 4949
    return-void
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1805
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1, p4}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V

    .line 1806
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "dingTalkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2118
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2146
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 3
    .param p1, "stateCode"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2712
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, p2, v2, p4}, Lfac;->a(Ljava/lang/String;Ljava/lang/String;ILcma;)V

    .line 2713
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "staffId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 887
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Long;>;"
    const-string/jumbo v3, "user"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 888
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lccu$a;->a(Landroid/os/IBinder;)Lccu;

    move-result-object v2

    .line 889
    .local v2, "service":Lccu;
    if-nez v2, :cond_1

    .line 890
    if-eqz p3, :cond_0

    .line 891
    const-string/jumbo v3, "err_parameter"

    const-string/jumbo v4, "service is null"

    invoke-interface {p3, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    :try_start_0
    new-instance v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;

    invoke-direct {v3, p0, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$32;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    invoke-interface {v2, p1, p2, v3}, Lccu;->a(Ljava/lang/String;Ljava/lang/String;Lcct;)V

    .line 934
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v1

    .line 936
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcja;->c()V

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUidByCorpIdAndStaffId"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lfwc;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    .line 945
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcma;Z)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p4, "expireLimitCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p2, "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lfwc;->a(Ljava/lang/String;Ljava/util/List;Lcma;Z)V

    .line 972
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 817
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v2, "needQueryLocalContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v4, "restList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v3, "queryStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 821
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 822
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 825
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    .end local v5    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v6

    invoke-virtual {v6}, Lfmz;->b()Lfmr;

    move-result-object v6

    invoke-interface {v6, v3}, Lfmr;->d(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 830
    .local v1, "localContactObjectMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 832
    .restart local v5    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 833
    .local v0, "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_3

    .line 834
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 835
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 836
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isMyLocalContact:Z

    goto :goto_1

    .line 839
    .end local v0    # "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v5    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 840
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 841
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 842
    return-void
.end method

.method public final a(Ljava/util/List;JZZLcma;)V
    .locals 8
    .param p2, "orgId"    # J
    .param p4, "useLocal"    # Z
    .param p5, "attachUserProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JZZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "callback":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/util/List;JZZZLcma;)V

    .line 751
    return-void
.end method

.method public final a(Ljava/util/List;JZZZLcma;)V
    .locals 12
    .param p2, "orgId"    # J
    .param p4, "useLocal"    # Z
    .param p5, "attachUserProfile"    # Z
    .param p6, "refreshUnActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JZZZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgc;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "callback":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    if-eqz p5, :cond_0

    .line 756
    new-instance v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;JZZLcma;)V

    move/from16 v0, p6

    invoke-virtual {p0, v0, p1, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(ZLjava/util/List;Lcma;)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p7

    invoke-interface/range {v2 .. v7}, Lezt;->a(Ljava/util/List;JZLcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/util/List;Lcma;Z)V

    .line 1120
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1246
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    .local p3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lfac;->a(Ljava/util/List;Lcma;Ljava/util/List;)V

    .line 1247
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;Z)V
    .locals 8
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1176
    .local p1, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    const/4 v2, 0x0

    .line 1177
    .local v2, "longArray":[J
    if-eqz p1, :cond_0

    .line 1178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [J

    .line 1179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 12044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1180
    aput-wide v4, v2, v1

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v4, "user"

    invoke-static {v4}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1184
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lccu$a;->a(Landroid/os/IBinder;)Lccu;

    move-result-object v3

    .line 1185
    .local v3, "service":Lccu;
    if-nez v3, :cond_2

    .line 1186
    if-eqz p2, :cond_1

    .line 1187
    const-string/jumbo v4, "err_parameter"

    const-string/jumbo v5, "service is null"

    invoke-interface {p2, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_1
    :goto_1
    return-void

    .line 1192
    :cond_2
    :try_start_0
    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$37;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$37;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    invoke-interface {v3, v2, v4, p3}, Lccu;->a([JLcct;Z)V

    .line 1238
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1240
    :catch_0
    move-exception v4

    invoke-static {}, Lcja;->c()V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;ZLcma;)V
    .locals 2
    .param p2, "supportFixLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2340
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p3}, Lfac;->a(Ljava/util/List;ZLcma;)V

    .line 2341
    return-void
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4875
    .line 35153
    const-string/jumbo v0, "setClaimEnergyEntryVisibility=%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35154
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dt_user"

    const-string/jumbo v2, "show_claim_energy_entry_setting"

    if-eqz p1, :cond_0

    const-string/jumbo v3, "1"

    :goto_0
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 4876
    return-void

    .line 35154
    :cond_0
    const-string/jumbo v3, "0"

    goto :goto_0
.end method

.method public final a(ZLjava/util/List;Lcma;)V
    .locals 2
    .param p1, "refreshUnActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2407
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1, p1}, Lfac;->a(Ljava/util/List;Lcma;ZZ)V

    .line 2408
    return-void
.end method

.method public final a(JZ)Z
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "includeHkMcTw"    # Z

    .prologue
    .line 4591
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(JZ)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkLang"    # Z

    .prologue
    .line 4636
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;ZZ)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkLang"    # Z
    .param p3, "includeHkMcTw"    # Z

    .prologue
    .line 4641
    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "orgId"    # J

    .prologue
    const/4 v4, 0x0

    .line 3958
    .line 25963
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lfvv;->a(Ljava/lang/String;JZZ)Z

    move-result v0

    .line 3958
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 4919
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4008
    invoke-static {p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 26983
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 4008
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "ignoreDingtalkSpecConfig"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4013
    invoke-static {p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 3983
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "ignoreDingtalkSpecConfig"    # Z

    .prologue
    .line 3988
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public final aa()V
    .locals 0

    .prologue
    .line 5313
    invoke-static {}, Lflu;->b()V

    .line 5314
    return-void
.end method

.method public final ab()V
    .locals 0

    .prologue
    .line 5326
    invoke-static {}, Lflu;->c()V

    .line 5327
    return-void
.end method

.method public final ac()Z
    .locals 1

    .prologue
    .line 5379
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    return v0
.end method

.method public final ad()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5331
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_cache_contact_android_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ae()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;
    .locals 1

    .prologue
    .line 5348
    invoke-static {}, Lflf;->a()Lflf;

    move-result-object v0

    invoke-virtual {v0}, Lflf;->b()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public final af()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5554
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_connection_square"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcms;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ag()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 5532
    invoke-static {}, Lcms;->e()Z

    move-result v0

    .line 5533
    .local v0, "checkIsInChinese":Z
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isHuaweiRom()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcof;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "5.0"

    invoke-static {v2}, Lcof;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 5534
    const/4 v1, 0x1

    .line 5549
    .local v1, "checkRomHasAdaptProblem":Z
    :goto_0
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 5535
    .end local v1    # "checkRomHasAdaptProblem":Z
    :cond_1
    invoke-static {}, Lcof;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "3.0"

    invoke-static {v2}, Lcof;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 5536
    const/4 v1, 0x1

    .restart local v1    # "checkRomHasAdaptProblem":Z
    goto :goto_0

    .line 5537
    .end local v1    # "checkRomHasAdaptProblem":Z
    :cond_2
    invoke-static {}, Lcof;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "2.5"

    invoke-static {v2}, Lcof;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 5538
    const/4 v1, 0x1

    .restart local v1    # "checkRomHasAdaptProblem":Z
    goto :goto_0

    .line 5539
    .end local v1    # "checkRomHasAdaptProblem":Z
    :cond_3
    invoke-static {}, Lcof;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5540
    const/4 v1, 0x1

    .restart local v1    # "checkRomHasAdaptProblem":Z
    goto :goto_0

    .line 5541
    .end local v1    # "checkRomHasAdaptProblem":Z
    :cond_4
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isXiaomiRom()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5542
    const/4 v1, 0x1

    .restart local v1    # "checkRomHasAdaptProblem":Z
    goto :goto_0

    .line 5543
    .end local v1    # "checkRomHasAdaptProblem":Z
    :cond_5
    invoke-static {}, Lcof;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5544
    const/4 v1, 0x1

    .restart local v1    # "checkRomHasAdaptProblem":Z
    goto :goto_0

    .line 5546
    .end local v1    # "checkRomHasAdaptProblem":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "checkRomHasAdaptProblem":Z
    goto :goto_0

    .line 5549
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I
    .locals 1
    .param p1, "nodeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 1707
    invoke-static {p1}, Lfxe;->d(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)I

    move-result v0

    return v0
.end method

.method public final b(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 1679
    invoke-static {p1, p2}, Lflr;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;"
        }
    .end annotation

    .prologue
    .line 1790
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1

    .prologue
    .line 1114
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJ)Ljava/lang/String;
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 615
    invoke-static {p1, p2, p3, p4}, Lfbm;->b(JJ)Lfrw;

    move-result-object v0

    .line 616
    .local v0, "orgUserNameObject":Lfrw;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lfrw;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 610
    invoke-static {p1}, Lflr;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    .line 1271
    if-nez p1, :cond_0

    .line 1272
    const/4 v0, 0x0

    .line 1290
    :goto_0
    return-object v0

    .line 1275
    :cond_0
    const/4 v0, 0x0

    .line 1277
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v3, "object":Lorg/json/JSONObject;
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, "lang":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 1284
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1286
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1287
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 846
    .local p1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v0

    .line 847
    .local v0, "dataSource":Lfmr;
    invoke-interface {v0, p1}, Lfmr;->d(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method public final b(JIILcma;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "type"    # I
    .param p4, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3509
    .local p5, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfbd;->a()Lfbd;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 23101
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 23102
    if-eqz v1, :cond_0

    .line 23103
    const-string/jumbo v0, "err_parameter"

    const-string/jumbo v2, "Bad request param uid."

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 23105
    :cond_0
    :goto_0
    return-void

    .line 23107
    :cond_1
    new-instance v6, Lfbd$2;

    invoke-direct {v6, v0, v1}, Lfbd$2;-><init>(Lfbd;Lcma;)V

    .line 23113
    const-class v0, Lcom/alibaba/android/user/idl/services/SafeIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/SafeIService;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/user/idl/services/SafeIService;->oplog(JIILiyv;)V

    goto :goto_0
.end method

.method public final b(JJLcma;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcgc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p5, "userEmployeeInfoModelApiEventListener":Lcma;, "Lcma<Lcgc;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lezt;->a(JJZLcma;)V

    .line 1104
    return-void
.end method

.method public final b(JLcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1846
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lezt;->a(JLcma;)V

    .line 1847
    return-void
.end method

.method public final b(JLjava/util/List;Lcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p3, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lfwc;->a(JLjava/util/List;Lcma;)V

    .line 950
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 1366
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1367
    return-void
.end method

.method public final b(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 1520
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/setting_org_boss.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$45;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$45;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1528
    return-void
.end method

.method public final b(Landroid/app/Activity;JLandroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "templateId"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/user_im_robot_template.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$80;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$80;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLandroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5078
    if-nez p1, :cond_0

    .line 5107
    :goto_0
    return-void

    .line 5083
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 5084
    .local v4, "userInfo":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v4, :cond_1

    .line 5085
    const-string/jumbo v5, "ContactInterfaceImpl"

    const-string/jumbo v6, "nav2Add2OrgActivity: Has no userInfo!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5086
    sget v5, Lezg$l;->wrong_arguments:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 5090
    :cond_1
    invoke-static {v4, p2, p3}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v3

    .line 5091
    .local v3, "orgInfo":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v3, :cond_2

    .line 5092
    const-string/jumbo v5, "ContactInterfaceImpl"

    const-string/jumbo v6, "nav2Add2OrgActivity: Has no orgInfo!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5093
    sget v5, Lezg$l;->wrong_arguments:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 5097
    :cond_2
    move-wide v0, p2

    .line 5098
    .local v0, "finalOrgId":J
    move-object v2, p4

    .line 5099
    .local v2, "finalSource":Ljava/lang/String;
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v7, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$11;

    invoke-direct {v7, p0, v0, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$11;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLjava/lang/String;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;JZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "canManage"    # Z

    .prologue
    .line 2532
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_invite.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$64;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, p3, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$64;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JZ)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2540
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 558
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_new_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$25;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$25;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 567
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4929
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p1, p2}, Lfls;->a(Landroid/app/Activity;Lcma;)V

    .line 4930
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contactChooseRequest"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2485
    if-nez p1, :cond_0

    .line 2499
    :goto_0
    return-void

    .line 2489
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$62;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 571
    const-string/jumbo v0, "https://qr.dingtalk.com/im/group_qrcode.html"

    .line 572
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$26;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$26;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 581
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "zimId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5219
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lfrb;->c(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 5221
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 585
    const-string/jumbo v0, "https://qr.dingtalk.com/im/group_qrcode.html"

    .line 586
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$27;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$27;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 596
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1722
    const-string/jumbo v0, "match_contact_thread_group"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/utils/LocalContactHelper$LocalContactSyncThread;

    invoke-direct {v1, p1}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper$LocalContactSyncThread;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1723
    return-void
.end method

.method public final b(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 3523
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    .line 3531
    :cond_0
    :goto_0
    return-void

    .line 3526
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/contact/orgmanager/SecurityCenterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3527
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3528
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3529
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1341
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/create_org_v2.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$41;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$41;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1351
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3656
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channel_share_qr.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$82;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$82;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3665
    return-void
.end method

.method public final b(Lcjo$a;)V
    .locals 1
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 10071
    invoke-static {}, Log$a;->a()Log;

    move-result-object v0

    .line 10099
    iget-object v0, v0, Log;->d:Lcjo;

    invoke-interface {v0, p1}, Lcjo;->b(Lcjo$a;)V

    .line 873
    return-void
.end method

.method public final b(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcdd;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1898
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcdd;>;>;"
    new-instance v0, Lfal;

    invoke-direct {v0}, Lfal;-><init>()V

    .line 1899
    .local v0, "cookieAPI":Lezp;
    invoke-interface {v0, p1}, Lezp;->a(Lcma;)V

    .line 1900
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3381
    const-string/jumbo v1, "updateNewFriendUnreadCount"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3382
    if-nez p1, :cond_0

    .line 3383
    const-string/jumbo v1, "conversation is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3464
    :goto_0
    return-void

    .line 3386
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 22111
    iput-object v5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 3388
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3389
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->aj:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 3394
    :cond_1
    :goto_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 3395
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 3396
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3397
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 3398
    .local v0, "latestMessage":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    const-string/jumbo v2, "nick"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->nick:Ljava/lang/String;

    .line 3399
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    const-string/jumbo v2, "avatarMediaId"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->avatar:Ljava/lang/String;

    .line 3401
    .end local v0    # "latestMessage":Lcom/alibaba/wukong/im/Message;
    :cond_2
    const/16 v1, 0x14

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$77;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$77;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p1, v5, v3, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 3391
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2378
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    .line 2403
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lfac;->a(Ljava/lang/String;Lcma;)V

    .line 2404
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5442
    .line 39114
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 5443
    .local v3, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 5445
    .local v4, "oldMediaId":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5446
    iput-object p2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 5448
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 5512
    .local v0, "listener":Lcma;
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lfac;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    .line 5513
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p2, "staffIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lfwc;->b(Ljava/lang/String;Ljava/util/List;Lcma;)V

    .line 961
    return-void
.end method

.method public final b(Ljava/util/List;Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1780
    .local p1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfac;->b(Ljava/util/List;Lcma;)V

    .line 1781
    return-void
.end method

.method public final b(Ljava/util/List;Lcma;Z)V
    .locals 7
    .param p3, "quickResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listApiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    const/16 v3, 0x5dc

    const/4 v2, 0x0

    .line 1124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 11114
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 1132
    invoke-virtual {p0, p1, p2, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0

    .line 1136
    :cond_1
    new-instance v1, Lflp;

    invoke-direct {v1}, Lflp;-><init>()V

    .line 1137
    .local v1, "batchProcessor":Lflp;, "Lflp<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;

    invoke-direct {v4, p0, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lflp;Z)V

    new-instance v5, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$36;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$36;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    .line 11112
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 11113
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Lflp$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 11126
    :cond_3
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 11127
    sget-object v0, Lflp;->a:Ljava/lang/String;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 11128
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 11129
    new-instance v0, Lflp$1;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lflp$1;-><init>(Lflp;Ljava/util/List;ILflp$b;Lflp$a;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 4003
    invoke-static {p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1265
    const-string/jumbo v0, "https://qr.dingtalk.com/page/friendrequest"

    return-object v0
.end method

.method public final c(JJ)Ljava/lang/String;
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 627
    invoke-static {p1, p2, p3, p4}, Lfbm;->c(JJ)Lfrw;

    move-result-object v0

    .line 628
    .local v0, "orgUserNameObject":Lfrw;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lfrw;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1856
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->f()Lfmq;

    move-result-object v0

    invoke-interface {v0, p1}, Lfmq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "switchKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4028
    invoke-static {p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27018
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4028
    return-object v0
.end method

.method public final c(Ljava/util/List;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1800
    .local p1, "phoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->b()Lfmr;

    move-result-object v0

    invoke-interface {v0, p1}, Lfmr;->d(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/util/Map;
    .locals 13
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 4192
    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4254
    :cond_0
    return-object v9

    .line 4197
    :cond_1
    iget-object v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    const-string/jumbo v11, "joingrouprequest}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4201
    new-instance v9, Ljava/util/TreeMap;

    new-instance v10, Lcom/alibaba/android/user/extra/UserTitleConfigComparator;

    invoke-direct {v10}, Lcom/alibaba/android/user/extra/UserTitleConfigComparator;-><init>()V

    invoke-direct {v9, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 4204
    .local v9, "userTitleConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4205
    .local v4, "extensionObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "tag"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 4206
    .local v8, "tagObj":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 4207
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 4208
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4209
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4210
    .local v6, "key":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v8, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 4211
    .local v7, "level":I
    if-eq v7, v12, :cond_2

    .line 4214
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4215
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;-><init>()V

    .line 4216
    .local v0, "config":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->titleTag:Ljava/lang/String;

    .line 4217
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->level:Ljava/lang/String;

    .line 4218
    new-instance v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;-><init>()V

    iput-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->expireStartDate:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    .line 4219
    new-instance v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;-><init>()V

    iput-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->expireEndDate:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    .line 4220
    iget-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->titleTag:Ljava/lang/String;

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4248
    .end local v0    # "config":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    .end local v4    # "extensionObject":Lorg/json/JSONObject;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "level":I
    .end local v8    # "tagObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 4249
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v10

    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v10, v11, :cond_0

    .line 4250
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 4225
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "extensionObject":Lorg/json/JSONObject;
    .restart local v8    # "tagObj":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string/jumbo v10, "expireTag"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4226
    .local v2, "expiredTagObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 4227
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 4228
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4229
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4230
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 4231
    .local v3, "expiredTagValue":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 4234
    const-string/jumbo v10, "level"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 4235
    .restart local v7    # "level":I
    if-eq v7, v12, :cond_4

    .line 4238
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4239
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;-><init>()V

    .line 4240
    .restart local v0    # "config":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->titleTag:Ljava/lang/String;

    .line 4241
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->level:Ljava/lang/String;

    .line 4242
    const-string/jumbo v10, "start"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->o(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->expireStartDate:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    .line 4243
    const-string/jumbo v10, "end"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->o(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->expireEndDate:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig$ExpireDate;

    .line 4244
    iget-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;->titleTag:Ljava/lang/String;

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final c(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3876
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/ExternalRelationObject;>;"
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lezu;->a(JJLcma;)V

    .line 3877
    return-void
.end method

.method public final c(JLcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4709
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lezt;->f(JLcma;)V

    .line 4710
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2611
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/burn_chat_session_list.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 2612
    return-void
.end method

.method public final c(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 2687
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLandroid/app/Activity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2697
    return-void
.end method

.method public final c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2463
    if-nez p1, :cond_0

    .line 2481
    :goto_0
    return-void

    .line 2467
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manager_org_member.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$61;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$61;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;Lcma;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5144
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$14;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/app/Activity;Lcma;)V

    .line 5166
    .local v0, "getUserTokenListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "getUserTokenListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 5167
    .restart local v0    # "getUserTokenListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lfbe;->a()Lfbe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfbe;->a(Lcma;)V

    .line 5168
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1741
    invoke-static {p1}, Lcom/alibaba/android/user/devset/DevSettingActivity;->b(Landroid/content/Context;)V

    .line 1742
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->y:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/user/devset/DevSettingActivity;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/laiwang/protocol/media/MediaIdManager;->setDefaultDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/user/devset/DevSettingActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Ljava/lang/String;)V

    .line 1744
    return-void
.end method

.method public final c(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 3534
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    .line 3542
    :cond_0
    :goto_0
    return-void

    .line 3537
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3538
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3539
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3540
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1356
    invoke-static {p1, p2}, Lfls;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1357
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 3781
    if-nez p1, :cond_1

    .line 3806
    :cond_0
    :goto_0
    return-void

    .line 3785
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3786
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3787
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "market://details?id="

    aput-object v3, v2, v5

    const/4 v3, 0x1

    .line 3788
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3787
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3790
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3791
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3792
    .local v1, "marketResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3793
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3794
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3795
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3796
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/common_webview.html"

    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$86;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$86;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final c(Lcjo$a;)V
    .locals 1
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 1251
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1}, Lfac;->a(Lcjo$a;)V

    .line 1252
    return-void
.end method

.method public final c(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3880
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfwt;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    .local v0, "deviceObject":Lfwt;
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    .line 24147
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lfwu$5;

    invoke-direct {v3, v1, v0, p1}, Lfwu$5;-><init>(Lfwu;Lfwt;Lcma;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3882
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2795
    const-string/jumbo v1, "updateNewGroupRequest"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2796
    if-nez p1, :cond_0

    .line 2797
    const-string/jumbo v1, "conversation is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2867
    :goto_0
    return-void

    .line 2800
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 21116
    iput-object v5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 2802
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2805
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 2806
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 2807
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2808
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 2809
    .local v0, "latestMessage":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    const-string/jumbo v2, "nick"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->nick:Ljava/lang/String;

    .line 2810
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    const-string/jumbo v2, "avatarMediaId"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->avatar:Ljava/lang/String;

    .line 2813
    .end local v0    # "latestMessage":Lcom/alibaba/wukong/im/Message;
    :cond_2
    const/16 v1, 0x14

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$72;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$72;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p1, v5, v4, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2722
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfac;->b(Ljava/lang/String;Lcma;)V

    .line 2723
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 986
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    invoke-static {}, Lfwd;->a()Lfwc;

    move-result-object v2

    invoke-interface {v2, p1}, Lfwc;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 987
    .local v0, "orgId":J
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2, p3}, Lezt;->b(JLjava/util/List;Lcma;)V

    .line 988
    return-void
.end method

.method public final c(Ljava/util/List;Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Lcfr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1815
    .local p1, "typesForServer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "listener":Lcma;, "Lcma<Lcfr;>;"
    invoke-static {}, Lfbh;->a()Lfad;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfad;->a(Ljava/util/List;Lcma;)V

    .line 1816
    return-void
.end method

.method public final c(J)Z
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 678
    invoke-static {}, Lflm;->a()Lflm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lflm;->a(J)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1866
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->f()Lfmq;

    move-result-object v0

    .line 1867
    .local v0, "dao":Lfmq;
    if-eqz v0, :cond_0

    .line 1868
    invoke-interface {v0, p1}, Lfmq;->b(Ljava/lang/String;)I

    move-result v1

    .line 1870
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1495
    new-instance v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;-><init>()V

    return-object v0
.end method

.method public final d(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 11071
    invoke-static {}, Log$a;->a()Log;

    move-result-object v0

    .line 877
    invoke-virtual {v0, p1, p2, p3, p4}, Log;->a(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 1045
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfac;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 4797
    invoke-static {p1, p2}, Lfrb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 4312
    invoke-static {}, Lfuy;->a()Lfuy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfuy;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLcma;)V
    .locals 1
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5278
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lflu;->a(JLcma;)V

    .line 5279
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2622
    if-eqz p1, :cond_0

    .line 2623
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html?lwfrom=20160321130337835"

    sget v1, Lezg$l;->setting_service_center_title:I

    .line 2624
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    .line 2623
    invoke-virtual/range {v0 .. v5}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2626
    :cond_0
    return-void
.end method

.method public final d(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;JLandroid/os/Bundle;)V

    .line 413
    return-void
.end method

.method public final d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1321
    invoke-static {p1, p2}, Lfls;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1322
    return-void
.end method

.method public final d(Landroid/app/Activity;Lcma;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5208
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "icbu"

    invoke-static {p1, v0, p2}, Lfrb;->b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 5210
    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2412
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/set_dingtalk_account.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 2413
    return-void
.end method

.method public final d(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 3545
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gtz v5, :cond_1

    .line 3596
    :cond_0
    :goto_0
    return-void

    .line 3548
    :cond_1
    const/4 v2, 0x0

    .line 3549
    .local v2, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 3550
    .local v4, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_3

    .line 3551
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 3552
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 3553
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3554
    .local v3, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v6, v6, p2

    if-nez v6, :cond_2

    .line 3555
    move-object v2, v3

    .line 3561
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v3    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    if-eqz v2, :cond_0

    .line 3564
    move-object v0, v2

    .line 3565
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 3569
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/org_contact.html"

    new-instance v7, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$78;

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$78;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4376
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friendrequest"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$95;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$95;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4377
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 4387
    return-void
.end method

.method public final d(Lcjo$a;)V
    .locals 1
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 1256
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1}, Lfac;->b(Lcjo$a;)V

    .line 1257
    return-void
.end method

.method public final d(Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 4953
    .local p1, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;>;"
    invoke-static {}, Lfaj;->a()Lfbi;

    move-result-object v0

    invoke-interface {v0, p1}, Lfbi;->a(Lcma;)V

    .line 4954
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 4836
    .line 35037
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 35038
    sget-object v1, Lbld;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 35039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    .line 35040
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 35041
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    sget-object v2, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v2

    shl-int v2, v4, v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    .line 35042
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 35043
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 35044
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_AVATAR_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 35045
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput-object p1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    .line 35046
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iput-object p2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->mediaId:Ljava/lang/String;

    .line 35048
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setExternalData(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)V

    .line 4837
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1571
    .line 15025
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    if-eqz p3, :cond_1

    .line 15029
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 15030
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 15031
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 15032
    :cond_1
    :goto_0
    return-void

    .line 15035
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    new-instance v2, Lfvx$1;

    invoke-direct {v2, p3}, Lfvx$1;-><init>(Lcma;)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2150
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$55;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$55;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2168
    return-void
.end method

.method public final d(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2335
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lfac;->a(Ljava/util/List;ZLcma;)V

    .line 2336
    return-void
.end method

.method public final e(J)I
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 1420
    invoke-static {p1, p2}, Lfls;->a(J)I

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1875
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->f()Lfmq;

    move-result-object v0

    .line 1876
    .local v0, "dao":Lfmq;
    if-eqz v0, :cond_0

    .line 1877
    invoke-interface {v0, p1}, Lfmq;->d(Ljava/lang/String;)I

    move-result v1

    .line 1879
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final e(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 4441
    invoke-static {p1}, Lfuv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5226
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    invoke-interface {v0, p1}, Lfac;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1500
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    .line 13071
    invoke-virtual {v0, v1, v1}, Lflv;->a(ZZ)V

    .line 1501
    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 694
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/secret_chat_setting.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$29;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$29;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 701
    return-void
.end method

.method public final e(Landroid/app/Activity;J)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    const/4 v3, 0x0

    .line 4188
    new-instance v1, Lfjk;

    invoke-direct {v1}, Lfjk;-><init>()V

    move-object v2, p1

    move-wide v4, p2

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Lfjk;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JLjava/lang/String;)V

    .line 4189
    return-void
.end method

.method public final e(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1331
    invoke-static {p1, p2}, Lfls;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1332
    return-void
.end method

.method public final e(Landroid/app/Activity;Lcma;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5214
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "taobao"

    invoke-static {p1, v0, p2}, Lfrb;->b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 5215
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3682
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channelApply"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 3683
    return-void
.end method

.method public final e(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 3600
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 3614
    :cond_0
    :goto_0
    return-void

    .line 3604
    :cond_1
    invoke-static {p2, p3}, Lfls;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3607
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/sub_manager_setting.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$79;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$79;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4743
    if-nez p1, :cond_0

    .line 4756
    :goto_0
    return-void

    .line 4746
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/my_profile.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$5;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4747
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final e(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5035
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "query_friends"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$9;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 5051
    return-void
.end method

.method public final f(Landroid/app/Activity;)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2727
    new-instance v0, Lfbq;

    invoke-direct {v0, p1}, Lfbq;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const/4 v4, 0x0

    .line 1460
    const-string/jumbo v5, "user"

    invoke-static {v5}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1461
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lccu$a;->a(Landroid/os/IBinder;)Lccu;

    move-result-object v2

    .line 1462
    .local v2, "service":Lccu;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1473
    :goto_0
    return-object v3

    .line 1466
    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p2}, Lccu;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 1467
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1469
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :catch_0
    move-exception v1

    .line 1470
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getUserProfile"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lciz;->a(Ljava/lang/String;Z)V

    .line 1471
    invoke-static {}, Lcja;->c()V

    move-object v3, v4

    .line 1473
    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1884
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->f()Lfmq;

    move-result-object v0

    .line 1885
    .local v0, "dao":Lfmq;
    if-eqz v0, :cond_0

    .line 1886
    invoke-interface {v0, p1}, Lfmq;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1888
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1505
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    invoke-virtual {v0}, Lflv;->b()V

    .line 1506
    return-void
.end method

.method public final f(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 4183
    invoke-static {p1, p2, p3}, Lfls;->a(Landroid/app/Activity;J)V

    .line 4184
    return-void
.end method

.method public final f(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1336
    invoke-static {p1, p2}, Lfls;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1337
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3776
    const-string/jumbo v0, "https://h5.dingtalk.com/base/download.html"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3777
    return-void
.end method

.method public final f(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 3634
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/external/list/ExternalListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3635
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3636
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3637
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3639
    :cond_0
    return-void
.end method

.method public final f(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5361
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/connection_post.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 5375
    return-void
.end method

.method public final f(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 6
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4470
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "dt_fuc_is_workmate_show"

    .line 31083
    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 4470
    if-nez v4, :cond_1

    .line 4488
    :cond_0
    :goto_0
    return v2

    .line 4473
    :cond_1
    if-eqz p1, :cond_0

    .line 4476
    iget v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4479
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 4480
    .local v1, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4483
    invoke-virtual {p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->N()Ljava/util/List;

    move-result-object v0

    .line 4484
    .local v0, "currentUserOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4487
    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 4488
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public final g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p1, "oid"    # J

    .prologue
    .line 1697
    .line 15114
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1697
    invoke-static {v0, p1, p2}, Lfls;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2367
    :cond_0
    :goto_0
    return-object v2

    .line 2349
    :cond_1
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    .line 2350
    .local v1, "factory":Lfmz;
    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v4

    invoke-interface {v4, p1}, Lfmr;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v0

    .line 2351
    .local v0, "contactObj":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_0

    .line 2355
    const/4 v3, 0x0

    .line 2356
    .local v3, "userObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 2357
    invoke-virtual {v1}, Lfmz;->c()Lfna;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-interface {v4, v6, v7}, Lfna;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 2361
    :cond_2
    if-eqz v3, :cond_3

    .line 2362
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .local v2, "result":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    goto :goto_0

    .line 2364
    .end local v2    # "result":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .restart local v2    # "result":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 1532
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v0

    invoke-virtual {v0}, Lfln;->b()V

    .line 1533
    invoke-static {}, Lflr;->g()V

    .line 1534
    return-void
.end method

.method public final g(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3938
    if-nez p1, :cond_0

    .line 3943
    :goto_0
    return-void

    .line 3942
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/my_qrcode.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 4566
    new-instance v0, Lfnp;

    invoke-direct {v0, p1, p2, p3}, Lfnp;-><init>(Landroid/app/Activity;J)V

    invoke-virtual {v0}, Lfnp;->a()V

    .line 4567
    return-void
.end method

.method public final g(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfls;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1377
    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4322
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html"

    sget v1, Lezg$l;->setting_service_center_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 4323
    return-void
.end method

.method public final g(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 3644
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channelManagement"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$81;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$81;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3652
    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5416
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/connection.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$19;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$19;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 5425
    return-void
.end method

.method public final g(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 8
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4493
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "dt_fuc_is_workmate_show"

    .line 32083
    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 4493
    if-nez v4, :cond_1

    .line 4507
    :cond_0
    :goto_0
    return v2

    .line 4496
    :cond_1
    if-eqz p1, :cond_0

    .line 4499
    iget v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 4502
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 32950
    .local v1, "orgInfo":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 4504
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4507
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public final h(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 4810
    invoke-static {p1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1538
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    .line 13074
    const-class v0, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/FollowService;

    .line 13075
    iget-object v1, v1, Lfln;->a:Lcom/alibaba/wukong/im/FollowListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/FollowService;->addFollowListener(Lcom/alibaba/wukong/im/FollowListener;)V

    .line 1539
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v1

    .line 13083
    const-class v0, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/BlacklistService;

    .line 13084
    iget-object v1, v1, Lfwv;->a:Lcom/alibaba/wukong/im/BlacklistListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/BlacklistService;->addBlacklistListener(Lcom/alibaba/wukong/im/BlacklistListener;)V

    .line 1540
    invoke-static {}, Lffr;->a()Lffr;

    move-result-object v1

    .line 14055
    :try_start_0
    const-class v0, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserService;

    new-instance v2, Lffr$1;

    invoke-direct {v2, v1}, Lffr$1;-><init>(Lffr;)V

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/UserService;->addUserExListener(Lcom/alibaba/wukong/im/UserExListenerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 14077
    :goto_0
    return-void

    .line 14074
    :catch_0
    move-exception v0

    .line 14075
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "OpenIdExManager init failed, error="

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 14076
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 14075
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final h(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 1712
    invoke-static {p1, p2}, Lflr;->b(J)V

    .line 1713
    return-void
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4058
    if-eqz p1, :cond_0

    .line 4059
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/orgapplylist"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 4061
    :cond_0
    return-void
.end method

.method public final h(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 4699
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/profile.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$3;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 4706
    return-void
.end method

.method public final h(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1381
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_new_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$42;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$42;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1393
    return-void
.end method

.method public final h(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 4551
    invoke-static {p1, p2, p3}, Lfls;->a(Landroid/content/Context;J)V

    .line 4552
    return-void
.end method

.method public final h(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5429
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/share_namecard.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$20;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$20;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 5438
    return-void
.end method

.method public final h(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4631
    invoke-static {p1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 2
    .param p1, "switchKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3971
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    .line 26217
    invoke-virtual {v0, p1, v1, v1}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 3971
    return v0
.end method

.method public final i(J)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 1731
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lfmr;->a(J)Ljava/util/List;

    move-result-object v0

    .line 1732
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1733
    const/4 v1, 0x0

    .line 1735
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;

    .prologue
    .line 4018
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfvv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1545
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    .line 14080
    iget-object v0, v1, Lfln;->a:Lcom/alibaba/wukong/im/FollowListener;

    if-eqz v0, :cond_0

    .line 14084
    const-class v0, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/FollowService;

    .line 14085
    iget-object v2, v1, Lfln;->a:Lcom/alibaba/wukong/im/FollowListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/FollowService;->removeFollowListener(Lcom/alibaba/wukong/im/FollowListener;)V

    .line 14086
    iput-object v3, v1, Lfln;->a:Lcom/alibaba/wukong/im/FollowListener;

    .line 1546
    :cond_0
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v1

    .line 14089
    iget-object v0, v1, Lfwv;->a:Lcom/alibaba/wukong/im/BlacklistListener;

    if-eqz v0, :cond_1

    .line 14093
    const-class v0, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/BlacklistService;

    .line 14094
    iget-object v2, v1, Lfwv;->a:Lcom/alibaba/wukong/im/BlacklistListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/BlacklistService;->removeBlacklistListener(Lcom/alibaba/wukong/im/BlacklistListener;)V

    .line 14095
    iput-object v3, v1, Lfwv;->a:Lcom/alibaba/wukong/im/BlacklistListener;

    .line 1547
    :cond_1
    return-void
.end method

.method public final i(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5055
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$10;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 5064
    return-void
.end method

.method public final i(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 4958
    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0}, Lflz;->a(Landroid/app/Activity;JI)V

    .line 4959
    return-void
.end method

.method public final i(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1397
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/crminfo.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$43;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$43;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1406
    return-void
.end method

.method public final i(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 4646
    instance-of v4, p1, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 4647
    const-string/jumbo v4, "ContactInterfaceImpl"

    const-string/jumbo v5, "showBindSmartDeviceOrgListDialog with not Activity context"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4696
    :goto_0
    return-void

    .line 33042
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 33044
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33045
    :cond_1
    const/4 v0, 0x0

    .line 4653
    .local v0, "bindSmartDeviceOrgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4654
    :cond_3
    sget v4, Lezg$l;->dt_contact_smart_device_bind_orgs_none_tips:I

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_0

    .line 33048
    .end local v0    # "bindSmartDeviceOrgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33050
    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 33051
    if-eqz v4, :cond_5

    .line 33055
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Lfxk;->a(J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 33056
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4658
    .restart local v0    # "bindSmartDeviceOrgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 4660
    .local v3, "orgNames":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 4661
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 4665
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 4660
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4668
    :cond_8
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4669
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lezg$l;->dt_contact_smart_device_choose_org_title:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4670
    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;

    invoke-direct {v4, p0, v0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$99;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4695
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public final i(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J

    .prologue
    .line 4890
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/feedback/index.html?lwfrom=20160323172017626&id=648&source=profile&type=uid&bizid=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4891
    return-void
.end method

.method public final i(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5384
    if-nez p1, :cond_0

    .line 5396
    :goto_0
    return-void

    .line 5387
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/namecard_orgs.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$17;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$17;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 1415
    invoke-static {}, Lfmz;->a()Lfmz;

    .line 1416
    return-void
.end method

.method public final j(J)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 2962
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 2963
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const/4 v6, 0x0

    move-wide v4, p1

    .line 2962
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1551
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v0

    invoke-virtual {v0}, Lfwv;->b()V

    .line 1552
    return-void
.end method

.method public final j(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5069
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5070
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i(Landroid/app/Activity;)V

    .line 5074
    :goto_0
    return-void

    .line 5072
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact_permission.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1597
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/web_login.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$46;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$46;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1607
    return-void
.end method

.method public final j(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 4732
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_ant_face_verify_enable"

    .line 33083
    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4733
    .local v0, "isEnable":Z
    const-string/jumbo v1, "ContactInterfaceImpl"

    const-string/jumbo v2, "navToPersionCertifyPage isOpen:"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4734
    if-eqz v0, :cond_0

    .line 4735
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    sget-object v2, Lezh;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    :goto_0
    return-void

    .line 4737
    :cond_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    sget-object v2, Lezh;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5400
    if-nez p1, :cond_0

    .line 5412
    :goto_0
    return-void

    .line 5403
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friend_recommend.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$18;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$18;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 4065
    invoke-static {p1}, Lfxo;->b(Ljava/lang/String;)V

    .line 4066
    return-void
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 4317
    invoke-static {}, Lfuy;->a()Lfuy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfuy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 1717
    invoke-static {}, Lflr;->a()V

    .line 1718
    return-void
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5526
    .line 40325
    if-nez p1, :cond_0

    .line 40326
    const-string/jumbo v0, "UserNavigator"

    const-string/jumbo v1, "nav2CardExchangePage, activity == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40327
    :goto_0
    return-void

    .line 40330
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/exchange_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final k(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1622
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pwd/create.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$47;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$47;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1630
    return-void
.end method

.method public final k(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4898
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/setting/private.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 4899
    return-void
.end method

.method public final k(J)Z
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 4880
    invoke-static {p1, p2}, Lfls;->c(J)Z

    move-result v0

    return v0
.end method

.method public final l(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 5336
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->k()Lfms;

    move-result-object v0

    .line 5337
    .local v0, "loginUserDataSource":Lfms;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfms;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    return-object v1
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "from"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4805
    const-string/jumbo v0, "https://h5.dingtalk.com/orgsquare/index.html?dd_nav_bgcolor=FF329DFA&from=%s#/home"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1774
    const-string/jumbo v0, "pref_key_get_org_score_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1775
    const-string/jumbo v0, "pref_key_get_org_score_complete"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1776
    return-void
.end method

.method public final l(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2417
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/crminfo.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$58;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$58;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2427
    return-void
.end method

.method public final l(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5522
    invoke-static {p1}, Lfls;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 5254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5255
    const/4 v0, 0x0

    .line 5257
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2230
    const-string/jumbo v0, "ContactInterfaceImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2311
    return-void
.end method

.method public final m(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2431
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/my_customer_guide.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$59;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$59;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2440
    return-void
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 5265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5266
    const/4 v0, 0x0

    .line 5268
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final n(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2502
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/camera_recognize_card.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$63;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$63;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2511
    return-void
.end method

.method public final n()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2616
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "pref_create_org_times"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 2617
    .local v0, "times":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public final o()Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->J()Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    move-result-object v0

    .line 2631
    .local v0, "createNewOrgInfo":Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;
    if-eqz v0, :cond_0

    .line 2632
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 2634
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final o(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2544
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/local_contact.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$65;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$65;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2553
    return-void
.end method

.method public onApplicationCreate()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2172
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->onApplicationCreate()V

    .line 2174
    const-string/jumbo v0, "user"

    new-instance v1, Lezi;

    invoke-direct {v1}, Lezi;-><init>()V

    invoke-static {v0, v1}, Lcix;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2175
    new-instance v0, Lfvs;

    const-string/jumbo v1, "biz/orgtask"

    invoke-direct {v0, v1}, Lfvs;-><init>(Ljava/lang/String;)V

    .line 2176
    new-instance v0, Lfvn;

    const-string/jumbo v1, "biz/friend"

    invoke-direct {v0, v1}, Lfvn;-><init>(Ljava/lang/String;)V

    .line 2177
    new-instance v0, Lfvo;

    const-string/jumbo v1, "biz/organization"

    invoke-direct {v0, v1}, Lfvo;-><init>(Ljava/lang/String;)V

    .line 2178
    new-instance v0, Lfvu;

    const-string/jumbo v1, "biz/user_profile"

    invoke-direct {v0, v1}, Lfvu;-><init>(Ljava/lang/String;)V

    .line 2179
    new-instance v0, Lfvm;

    invoke-direct {v0}, Lfvm;-><init>()V

    .line 2180
    new-instance v0, Lfvp;

    invoke-direct {v0}, Lfvp;-><init>()V

    .line 2181
    new-instance v0, Lfvr;

    invoke-direct {v0}, Lfvr;-><init>()V

    .line 2182
    new-instance v0, Lfvt;

    invoke-direct {v0}, Lfvt;-><init>()V

    .line 2183
    new-instance v0, Lfvl;

    invoke-direct {v0}, Lfvl;-><init>()V

    .line 2184
    new-instance v0, Lfvq;

    invoke-direct {v0}, Lfvq;-><init>()V

    .line 2186
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->b()V

    .line 2187
    invoke-static {}, Lflr;->f()V

    .line 15689
    const-string/jumbo v0, "pref_key_official_contacts_cleared_version"

    invoke-static {v0, v6}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    .line 2189
    :goto_0
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfxn;->a(Landroid/content/Context;)V

    .line 2190
    invoke-static {}, Lfvy;->a()Lfvy;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 16055
    if-eqz v1, :cond_0

    .line 16056
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_upload_play_store_referrer"

    .line 17083
    invoke-virtual {v2, v3, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 16056
    if-eqz v2, :cond_0

    const-string/jumbo v2, "212200"

    .line 16058
    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 18712
    :cond_0
    :goto_1
    invoke-static {}, Lcms;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_key_fill_user_auth_org_name_version"

    .line 18713
    invoke-static {v0, v6}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 2193
    :cond_1
    :goto_2
    invoke-static {}, Lfnz;->a()Lfnz;

    move-result-object v0

    invoke-virtual {v0}, Lfnz;->b()V

    .line 19209
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 19210
    if-eqz v0, :cond_2

    .line 19213
    invoke-static {}, Lfle;->a()Lfle;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 20059
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-wide v4, v1, Lfle;->a:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_9

    .line 20200
    :cond_2
    :goto_3
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 20201
    if-eqz v0, :cond_3

    .line 20204
    invoke-static {}, Lflf;->a()Lflf;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v1, v2, v3}, Lflf;->a(J)I

    move-result v0

    .line 20205
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ContactInterfaceImpl"

    aput-object v2, v1, v6

    const-string/jumbo v2, ", "

    aput-object v2, v1, v7

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2197
    :cond_3
    return-void

    .line 15694
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$83;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$83;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 16063
    :cond_5
    const-string/jumbo v2, "pref_play_install_referrer_reported"

    invoke-static {v1, v2, v6}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "pref_play_user_active_referrer_reported"

    .line 16064
    invoke-static {v2, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17094
    :cond_6
    :try_start_0
    new-instance v2, Lcom/android/installreferrer/api/InstallReferrerClient$a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/installreferrer/api/InstallReferrerClient$a;-><init>(Landroid/content/Context;B)V

    .line 18078
    iget-object v3, v2, Lcom/android/installreferrer/api/InstallReferrerClient$a;->a:Landroid/content/Context;

    if-nez v3, :cond_7

    .line 18079
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16114
    :catch_0
    move-exception v0

    .line 16115
    const-class v1, Lfvy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 18082
    :cond_7
    :try_start_1
    new-instance v3, Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    iget-object v2, v2, Lcom/android/installreferrer/api/InstallReferrerClient$a;->a:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;-><init>(Landroid/content/Context;)V

    .line 16069
    iput-object v3, v0, Lfvy;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 16070
    iget-object v2, v0, Lfvy;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    new-instance v3, Lfvy$1;

    invoke-direct {v3, v0, v1}, Lfvy$1;-><init>(Lfvy;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/android/installreferrer/api/InstallReferrerClient;->a(Livl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 18718
    :cond_8
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$84;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 20062
    :cond_9
    iput-wide v2, v1, Lfle;->a:J

    .line 20063
    const-string/jumbo v0, "CustomEntryConfigDownloader"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lfle$1;

    invoke-direct {v2, v1}, Lfle$1;-><init>(Lfle;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_3
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 2669
    sget v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->A:I

    return v0
.end method

.method public final p(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2639
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/active_invite.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$67;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$67;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2648
    return-void
.end method

.method public final q()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 2928
    const-string/jumbo v1, "start from launcher"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2930
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 2931
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const-wide/32 v4, 0x28425

    .line 2930
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v0

    .line 2932
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2933
    const-string/jumbo v1, "cid is empty"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2955
    :goto_0
    return-void

    .line 2936
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$74;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$74;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final q(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2674
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/select_customer.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$68;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$68;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2683
    return-void
.end method

.method public final r()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 2753
    const-string/jumbo v1, "updateNewGroupRequest begin"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2755
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 2756
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const-wide/32 v4, 0x39dfc

    .line 2755
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v0

    .line 2757
    .local v0, "gid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2758
    const-string/jumbo v1, "gid is empty"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2780
    :goto_0
    return-void

    .line 2761
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$71;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$71;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final r(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3762
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$85;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$85;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3772
    return-void
.end method

.method public final s()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2877
    .local v1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v4, 0x28425

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->j(J)Ljava/lang/String;

    move-result-object v0

    .line 2878
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2879
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2883
    :goto_0
    const-wide/32 v4, 0x39dfc

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->j(J)Ljava/lang/String;

    move-result-object v2

    .line 2884
    .local v2, "gid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2885
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2889
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2890
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "launcher enter updateNewFriendAndGroupUnreadCount()"

    aput-object v4, v3, v6

    const-string/jumbo v4, " conversationIds size 0"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2923
    :goto_2
    return-void

    .line 2881
    .end local v2    # "gid":Ljava/lang/String;
    :cond_0
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "launcher enter updateNewFriendAndGroupUnreadCount()"

    aput-object v4, v3, v6

    const-string/jumbo v4, " get cid null"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2887
    .restart local v2    # "gid":Ljava/lang/String;
    :cond_1
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "launcher enter updateNewFriendAndGroupUnreadCount()"

    aput-object v4, v3, v6

    const-string/jumbo v4, " get gid null"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2894
    :cond_2
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v4, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;

    invoke-direct {v4, p0, v0, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$73;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    goto :goto_2
.end method

.method public final s(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 3810
    if-nez p1, :cond_0

    .line 3844
    :goto_0
    return-void

    .line 3815
    :cond_0
    const-string/jumbo v5, "intent_key_contact_choose_request"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 3816
    .local v3, "request":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    if-eqz v3, :cond_1

    .line 3817
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->builder()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 3822
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    :goto_1
    const-string/jumbo v5, "LocalContactFragment"

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3823
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3824
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->m(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3825
    const/16 v5, 0x33

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 23863
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 3828
    const-string/jumbo v5, "title"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3829
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lezg$l;->dt_batch_add_ext_contact_from_mobile:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3831
    .local v4, "title":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3833
    new-instance v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;

    invoke-direct {v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;-><init>()V

    .line 3836
    .local v2, "logic":Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;
    const-string/jumbo v5, "activity_identify"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;->mFlag:Ljava/lang/String;

    .line 3837
    const-string/jumbo v5, "org_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;->mOrgId:J

    .line 3839
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 3841
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3842
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "intent_key_contact_choose_request"

    .line 24053
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 3842
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3843
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3819
    .end local v0    # "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "logic":Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .restart local v0    # "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    goto :goto_1

    .line 3829
    :cond_2
    const-string/jumbo v5, "title"

    .line 3830
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public final t()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1

    .prologue
    .line 3468
    .line 22379
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    .line 3468
    if-eqz v0, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->h:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 3471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->g:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    goto :goto_0
.end method

.method public final t(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3916
    if-nez p1, :cond_0

    .line 3932
    :goto_0
    return-void

    .line 3920
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/select_city.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$87;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$87;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 3921
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final u()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->i:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    return-object v0
.end method

.method public final u(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4338
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4352
    :cond_0
    :goto_0
    return-void

    .line 4341
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/select_org_type.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$93;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$93;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4342
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final v(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4571
    if-nez p1, :cond_0

    .line 4582
    :goto_0
    return-void

    .line 4574
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_invite_qrcode.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$96;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$96;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4575
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final w(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4596
    if-nez p1, :cond_0

    .line 4607
    :goto_0
    return-void

    .line 4599
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/org_address_picker.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$97;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$97;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4600
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 3891
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b()Z

    move-result v0

    return v0
.end method

.method public final x(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4714
    if-nez p1, :cond_0

    .line 4727
    :goto_0
    return-void

    .line 4717
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/select_position.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$4;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$4;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4718
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final x()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 24891
    const-string/jumbo v0, "pref_key_entry_switch_invitation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3896
    return v0
.end method

.method public final y()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 24896
    const-string/jumbo v1, "pref_key_entry_switch_industry_data"

    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24902
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24907
    const-string/jumbo v1, "promotion"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24908
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 24909
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 24910
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 24911
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24910
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24913
    :cond_0
    invoke-static {v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Ljava/util/List;)Z

    move-result v1

    .line 24914
    const-string/jumbo v3, "pref_key_entry_switch_promotion"

    invoke-static {v3, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 24919
    :goto_1
    const-string/jumbo v1, "invitation"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24920
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 24921
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 24922
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 24923
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24922
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24916
    :cond_1
    const-string/jumbo v1, "pref_key_entry_switch_promotion"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24951
    :catch_0
    move-exception v0

    .line 24952
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 24953
    :cond_2
    :goto_3
    return-void

    .line 24925
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Ljava/util/List;)Z

    move-result v1

    .line 24926
    const-string/jumbo v3, "pref_key_entry_switch_invitation"

    invoke-static {v3, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 24931
    :goto_4
    const-string/jumbo v1, "homepage"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24932
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 24933
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 24934
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 24935
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24934
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 24928
    :cond_4
    const-string/jumbo v1, "pref_key_entry_switch_invitation"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_4

    .line 24937
    :cond_5
    invoke-static {}, Lfly;->a()Lfly;

    move-result-object v1

    .line 25086
    iget-object v3, v1, Lfly;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 25087
    iget-object v1, v1, Lfly;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25088
    invoke-static {}, Lfly;->d()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {v1, v4}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25090
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 25091
    const-string/jumbo v3, "pref_key_org_home_page_gov_list"

    invoke-static {v3, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24940
    :cond_6
    const-string/jumbo v1, "search_market_activity"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 24941
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 24942
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24943
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 24944
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24943
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 24946
    :cond_7
    invoke-static {v2}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Ljava/util/List;)Z

    move-result v0

    .line 24947
    const-string/jumbo v1, "pref_key_entry_switch_search_market_actiivty"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 24949
    :cond_8
    const-string/jumbo v0, "pref_key_entry_switch_search_market_actiivty"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public final y(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4780
    if-nez p1, :cond_0

    .line 4793
    :goto_0
    return-void

    .line 4783
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/manager_org_customize.html"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$6;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$6;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 4784
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3906
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final z(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5126
    if-nez p1, :cond_0

    .line 5140
    :goto_0
    return-void

    .line 5129
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 5130
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/join_team"

    new-instance v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$12;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$12;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V

    .line 5131
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
