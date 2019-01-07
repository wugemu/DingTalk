.class public final Leoc;
.super Ljava/lang/Object;
.source "ModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leoc$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Leoc;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .locals 1
    .param p0, "chooseMode"    # I

    .prologue
    .line 372
    packed-switch p0, :pswitch_data_0

    .line 384
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Friend:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 388
    .local v0, "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_0
    return-object v0

    .line 374
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->Friend:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 375
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 377
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->FriendChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 378
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 381
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->FriendChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 382
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;Z)Lcom/alibaba/android/search/model/BaseModel;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "msgNarrowModel"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "isMerge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/alibaba/android/search/model/BaseModel;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "userMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Lcom/alibaba/android/search/model/MsgModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/search/model/MsgModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lchq;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 3
    .param p0, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .param p1, "data"    # Lchq;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 322
    if-nez p1, :cond_0

    .line 339
    :goto_0
    return-object v0

    .line 326
    :cond_0
    sget-object v1, Leoc$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/model/MailModel;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/search/model/MailModel;-><init>(Lchq;Ljava/lang/String;)V

    .line 337
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/model/SpaceModel;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/search/model/SpaceModel;-><init>(Lchq;Ljava/lang/String;)V

    .line 332
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 3
    .param p0, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .param p1, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 122
    :cond_0
    sget-object v1, Leoc$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    new-instance v0, Lcom/alibaba/android/search/model/LocalContactModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/LocalContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 137
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/model/LocalContactModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/LocalContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 125
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 127
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/LocalContactChooseSingleModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 128
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 130
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_2
    new-instance v0, Lcom/alibaba/android/search/model/LocalContactChooseMultiModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/LocalContactChooseMultiModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 131
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 3
    .param p0, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .param p1, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    .line 166
    :cond_0
    sget-object v1, Leoc$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    new-instance v0, Lcom/alibaba/android/search/model/OrgContactModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/OrgContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 190
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/model/OrgContactModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/OrgContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 169
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 171
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/model/OrgContactChooseSingleModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/OrgContactChooseSingleModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 172
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 174
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_2
    new-instance v0, Lcom/alibaba/android/search/model/OrgContactChooseMultiModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/OrgContactChooseMultiModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 175
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 177
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_3
    new-instance v0, Lcom/alibaba/android/search/model/ExternalContactModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/ExternalContactModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 178
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 180
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_4
    new-instance v0, Lcom/alibaba/android/search/model/ExternalContactChooseSingleModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/ExternalContactChooseSingleModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 181
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 183
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_5
    new-instance v0, Lcom/alibaba/android/search/model/ExternalContactChooseMultiModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/ExternalContactChooseMultiModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 184
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 3
    .param p0, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 68
    :cond_0
    sget-object v1, Leoc$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 79
    new-instance v0, Lcom/alibaba/android/search/model/FriendModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/FriendModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 83
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/model/FriendModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/FriendModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 71
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 73
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/model/FriendChooseSingleModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/FriendChooseSingleModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 74
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 76
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_2
    new-instance v0, Lcom/alibaba/android/search/model/FriendChooseMultiModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/FriendChooseMultiModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 77
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 3
    .param p0, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 256
    :cond_0
    sget-object v1, Leoc$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 267
    new-instance v0, Lcom/alibaba/android/search/model/GroupModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/GroupModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 271
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/model/GroupModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/GroupModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 259
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 261
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/model/GroupModel;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/search/model/GroupModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 262
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 264
    .end local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_2
    new-instance v0, Lcom/alibaba/android/search/model/GroupChooseMultiModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/model/GroupChooseMultiModel;-><init>(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 265
    .restart local v0    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/search/model/BaseModel$ModelType;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 4
    .param p0, "type"    # Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/model/BaseModel$ModelType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/android/search/model/BaseModel;"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v1

    .line 283
    :cond_1
    sget-object v2, Leoc$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    new-instance v1, Lcom/alibaba/android/search/model/DingModel;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/android/search/model/DingModel;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 299
    .local v1, "model":Lcom/alibaba/android/search/model/BaseModel;
    :goto_1
    invoke-virtual {v1, p2}, Lcom/alibaba/android/search/model/BaseModel;->setKeyword(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/model/FunctionModel;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/search/model/FunctionModel;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 289
    .local v0, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/FunctionModel;->supportLocale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    move-object v1, v0

    .restart local v1    # "model":Lcom/alibaba/android/search/model/BaseModel;
    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .locals 1
    .param p0, "chooseMode"    # I

    .prologue
    .line 394
    packed-switch p0, :pswitch_data_0

    .line 406
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 410
    .local v0, "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_0
    return-object v0

    .line 396
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 397
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 399
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContactChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 400
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 403
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->LocalContactChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 404
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static c(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .locals 1
    .param p0, "chooseMode"    # I

    .prologue
    .line 416
    packed-switch p0, :pswitch_data_0

    .line 428
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 432
    .local v0, "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_0
    return-object v0

    .line 418
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 419
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 421
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContactChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 422
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 425
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->OrgContactChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 426
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static d(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;
    .locals 1
    .param p0, "chooseMode"    # I

    .prologue
    .line 460
    packed-switch p0, :pswitch_data_0

    .line 472
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 476
    .local v0, "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :goto_0
    return-object v0

    .line 462
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContact:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 463
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 465
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContactChooseSingle:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 466
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 469
    .end local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ExternalContactChooseMulti:Lcom/alibaba/android/search/model/BaseModel$ModelType;

    .line 470
    .restart local v0    # "modeType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
