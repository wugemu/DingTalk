.class public Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
.super Ljava/lang/Object;
.source "DingtalkConversation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final profilesPrefix:Ljava/lang/String; = "$:"

.field private static final serialVersionUID:J = -0x7c07e0b8a1d26c46L

.field private static final uidsPrefix:Ljava/lang/String; = "uids:"


# instance fields
.field public categoryIndex:I

.field public categoryTitle:Ljava/lang/String;

.field public categoryType:J

.field public content:Ljava/lang/String;

.field public displayType:I

.field public groupType:I

.field public hideChecked:Z

.field public mAtUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConversation:Lcom/alibaba/wukong/im/Conversation;

.field public mConversationMap:Ljava/util/Map;
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

.field public mExtension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalExtra:Ljava/util/Map;
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

.field public mediaIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;",
            ">;"
        }
    .end annotation
.end field

.field public transient singleMsgContentType:I

.field public timeSpan:Ljava/lang/String;

.field public timeSpanLast:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "displayType"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    .line 60
    return-void
.end method

.method public static castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    return-object v0
.end method

.method public static castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 3
    .param p0, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "processIcon"    # Z

    .prologue
    .line 109
    if-nez p0, :cond_1

    .line 110
    const/4 v0, 0x0

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 113
    .local v0, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz p0, :cond_0

    .line 114
    if-eqz p1, :cond_2

    .line 115
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->generateMediaIdList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 117
    :cond_2
    iput-object p0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 118
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "at_uids"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 119
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "at_uids"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcpt;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mAtUidMap:Ljava/util/HashMap;

    .line 121
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mLocalExtra:Ljava/util/Map;

    .line 122
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "conversationObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 72
    .local v0, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz p0, :cond_1

    .line 73
    const-string/jumbo v1, "icon"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->generateMediaIdList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 74
    iput-object p0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 75
    const-string/jumbo v1, "ext"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "ext"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->jsonToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    .line 78
    :cond_0
    const-string/jumbo v1, "desc"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string/jumbo v1, "desc"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->jsonToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mLocalExtra:Ljava/util/Map;

    .line 82
    :cond_1
    return-object v0
.end method

.method public static generateMediaIdList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "uidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v6, "mediaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    if-eqz p0, :cond_1

    const-string/jumbo v12, "uids:"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 131
    const-string/jumbo v12, ":"

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 132
    .local v5, "index":I
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    const-string/jumbo v12, ";"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "uids":[Ljava/lang/String;
    array-length v13, v8

    move v12, v11

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v7, v8, v12

    .line 135
    .local v7, "uid":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 136
    .local v9, "userIconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    iput-object v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 137
    iput-object v7, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 138
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 140
    .end local v7    # "uid":Ljava/lang/String;
    .end local v9    # "userIconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    .line 141
    const-string/jumbo v12, ","

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 143
    array-length v12, v8

    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v7, v8, v11

    .line 144
    .restart local v7    # "uid":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 145
    .restart local v9    # "userIconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    iput-object v7, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 146
    iput-object v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 147
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 151
    .end local v5    # "index":I
    .end local v7    # "uid":Ljava/lang/String;
    .end local v8    # "uids":[Ljava/lang/String;
    .end local v9    # "userIconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_1
    if-eqz p0, :cond_4

    const-string/jumbo v11, "$:"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 152
    const-string/jumbo v11, "$:"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "iconJson":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "iconJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 156
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 157
    .local v4, "iconJsonObject":Lorg/json/JSONObject;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 158
    .restart local v9    # "userIconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    const-string/jumbo v11, "mediaId"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 159
    iget-object v11, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 160
    iget-object v11, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    invoke-static {v11}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 162
    :cond_2
    const-string/jumbo v11, "nick"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 163
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    .end local v1    # "i":I
    .end local v3    # "iconJsonArray":Lorg/json/JSONArray;
    .end local v4    # "iconJsonObject":Lorg/json/JSONObject;
    .end local v9    # "userIconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v10

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "iconJson":Ljava/lang/String;
    .end local v6    # "mediaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    :cond_3
    :goto_3
    return-object v6

    .restart local v6    # "mediaIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    :cond_4
    move-object v6, v10

    goto :goto_3
.end method

.method private static jsonToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "columnValMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v0, 0x0

    .end local v0    # "columnValMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .line 98
    .restart local v0    # "columnValMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 180
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 182
    .local v0, "that":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 185
    goto :goto_0
.end method

.method public setDisplayType(I)V
    .locals 0
    .param p1, "displayType"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    .line 68
    return-void
.end method
