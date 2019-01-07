.class public Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
.super Ljava/lang/Object;
.source "MessageRecipientDataObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Ljava/io/Serializable;

.field private mType:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->values()[Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mType:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    .param p2, "data"    # Ljava/io/Serializable;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mType:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    .line 49
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    .line 50
    return-void
.end method

.method public static fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .locals 6
    .param p0, "conv"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getConversationType(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 62
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-direct {v1, v2, p0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;-><init>(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;Ljava/io/Serializable;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getConversationType(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 64
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getChatContact(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 65
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 66
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-direct {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;-><init>(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method public static fromUserIdentitiyObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .locals 2
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;-><init>(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method private static getChatContact(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 101
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 102
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getUidFromCid(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    .line 106
    .local v0, "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    if-eqz v0, :cond_0

    .line 107
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 108
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 109
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 117
    .end local v0    # "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "cid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getUidFromCid(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "media_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "conversation_title"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getConversationType(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)I
    .locals 4
    .param p0, "conv"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 81
    const-string/jumbo v0, ""

    .line 82
    .local v0, "cid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 83
    .local v1, "conversationType":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    .line 85
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    const/4 v1, 0x1

    .line 97
    :cond_1
    :goto_1
    return v1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "cid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cid":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private static getUidFromCid(Ljava/lang/String;)J
    .locals 8
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const-wide/16 v0, 0x0

    .line 139
    :goto_0
    return-wide v0

    .line 126
    :cond_0
    :try_start_0
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "uids":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 128
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 129
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "uid":J
    goto :goto_0

    .line 131
    .end local v0    # "uid":J
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 134
    .end local v0    # "uid":J
    :cond_2
    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 137
    .end local v0    # "uid":J
    .end local v2    # "uids":[Ljava/lang/String;
    :catch_0
    move-exception v3

    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_3

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 145
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    const/4 v0, 0x0

    .line 146
    .local v0, "cid":Ljava/lang/String;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getConversationType(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 153
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getUidFromCid(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 160
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    :goto_1
    return-object v0

    .line 148
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "cid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cid":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 160
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mType:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mType:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->mData:Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 180
    return-void
.end method
