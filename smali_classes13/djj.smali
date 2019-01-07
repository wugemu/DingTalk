.class public final Ldjj;
.super Ljava/lang/Object;
.source "ConversationNameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;II)Ljava/util/List;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 187
    .local v1, "size":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 188
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 189
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_0

    .line 190
    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-object v2
.end method

.method public static a(JLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 14
    .param p0, "orgId"    # J
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ldqw;>;>;"
    if-nez p5, :cond_0

    .line 69
    :goto_0
    return-void

    .line 45
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 47
    .local v10, "emptyList":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v10    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .local v7, "objects":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    invoke-static/range {p2 .. p2}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const-string/jumbo v4, "ConversationNameUtils.fetchEnterprise"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    move-object/from16 v2, p3

    move-wide v4, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Ldjj;->b(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 57
    .local v12, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v12}, Ldqw;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ldqw;

    move-result-object v11

    .line 58
    .local v11, "object":Ldqw;
    if-eqz v11, :cond_4

    .line 59
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    .end local v11    # "object":Ldqw;
    .end local v12    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 63
    :cond_6
    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v9}, Ldjj;->b(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/alibaba/wukong/im/Conversation;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Landroid/app/Activity;
    .param p7, "x6"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 33
    invoke-static/range {p0 .. p7}, Ldjj;->b(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Landroid/app/Activity;
    .param p5, "x5"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 33
    invoke-static/range {p0 .. p5}, Ldjj;->b(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private static b(Ljava/util/List;IJLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "orgId"    # J
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p6, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;IJ",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ldqw;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_0

    .line 80
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const-string/jumbo v8, "ConversationNameUtils.fetchEnterprise complete"

    invoke-static {v4, v5, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "ConversationNameUtils.fetchEnterprise index="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 86
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-static {v4, v5, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move/from16 v0, p1

    add-int/lit16 v4, v0, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Ldjj;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p4 .. p4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "conversationId":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->MEMBER:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    .line 90
    move-object/from16 v0, p4

    invoke-static {v0, v4}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v7

    .line 91
    .local v7, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    new-instance v3, Ldjj$1;

    move-wide/from16 v4, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v3 .. v13}, Ldjj$1;-><init>(JLjava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Ljava/util/List;Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 123
    .local v3, "listener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    invoke-static/range {p6 .. p6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    const-class v4, Lcma;

    move-object/from16 v0, p6

    invoke-static {v3, v4, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    check-cast v3, Lcma;

    .line 126
    .restart local v3    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, v2

    move-wide/from16 v10, p2

    move-object v15, v3

    invoke-virtual/range {v8 .. v15}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZZLcma;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;I",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ldqw;>;>;"
    const/4 v5, 0x0

    .line 137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 138
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "ConversationNameUtils.fetchNormal complete"

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p5, p3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string/jumbo v1, "im"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ConversationNameUtils.fetchNormal index="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    add-int/lit16 v1, p1, 0x1f4

    invoke-static {p0, p1, v1}, Ldjj;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    .line 146
    .local v7, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ldjj$2;

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ldjj$2;-><init>(Ljava/util/List;Ljava/util/List;ILcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 177
    .local v0, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    invoke-static {p4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 180
    .restart local v0    # "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;>;"
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7, v0}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
