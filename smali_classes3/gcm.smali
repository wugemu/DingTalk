.class public final Lgcm;
.super Lgcq;
.source "OAMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lgcq;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 20

    .prologue
    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->g:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->g:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v2, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 42
    .local v14, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    .end local v14    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v14    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_1
    invoke-interface {v14}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 46
    .local v12, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lgcm;->g:Ljava/lang/Object;

    check-cast v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 47
    .local v11, "aoDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    if-eqz v11, :cond_0

    .line 48
    const-string/jumbo v6, ""

    .line 49
    .local v6, "tips":Ljava/lang/String;
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "url":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 51
    .local v8, "picUrl":Ljava/lang/String;
    iget-object v5, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    .line 52
    .local v5, "title":Ljava/lang/String;
    iget-object v2, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 53
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "\uff1a"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    :cond_2
    iget-object v2, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 57
    iget-object v6, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    .line 68
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lgcm;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v16

    .line 69
    .local v16, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v16, :cond_4

    .line 70
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 71
    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgcm;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgcm;->d:Lcky;

    iget-object v9, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lgcm;->f:Lcma;

    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 58
    .end local v16    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    iget-object v2, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    if-eqz v2, :cond_3

    .line 59
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v15

    .line 60
    .local v15, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v15, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 61
    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v13, v3, v2

    .line 62
    .local v13, "formDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;
    iget-object v9, v13, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    invoke-virtual {v15, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 63
    iget-object v9, v13, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->value:Ljava/lang/String;

    invoke-virtual {v15, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65
    .end local v13    # "formDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;
    :cond_6
    invoke-virtual {v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public final a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lgcq;->a(Lcma;)V

    .line 35
    invoke-virtual {p0, p1}, Lgcm;->b(Lcma;)V

    .line 36
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 18

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p0}, Lgcm;->c()V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->g:Ljava/lang/Object;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->g:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-eqz v2, :cond_7

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 85
    .local v11, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 86
    :cond_0
    const/4 v14, 0x0

    .line 122
    .end local v11    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :goto_0
    return-object v14

    .line 88
    .restart local v11    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_1
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 89
    .local v9, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lgcm;->g:Ljava/lang/Object;

    check-cast v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 90
    .local v8, "aoDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    if-eqz v8, :cond_7

    .line 91
    const-string/jumbo v4, ""

    .line 92
    .local v4, "tips":Ljava/lang/String;
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 94
    .local v6, "picUrl":Ljava/lang/String;
    iget-object v3, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    .line 95
    .local v3, "title":Ljava/lang/String;
    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v7, 0x1

    const-string/jumbo v15, "\uff1a"

    aput-object v15, v2, v7

    const/4 v7, 0x2

    iget-object v15, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    aput-object v15, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_2
    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 100
    iget-object v4, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    .line 111
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lgcm;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v13

    .line 112
    .local v13, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v13, :cond_4

    .line 113
    iget-object v6, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 114
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgcm;->d:Lcky;

    iget-object v7, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    .line 118
    invoke-static/range {v2 .. v7}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v14

    .line 119
    .local v14, "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    goto :goto_0

    .line 101
    .end local v13    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v14    # "viewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    :cond_5
    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    if-eqz v2, :cond_3

    .line 102
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v12

    .line 103
    .local v12, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v12, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 104
    iget-object v7, v8, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    array-length v15, v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v15, :cond_6

    aget-object v10, v7, v2

    .line 105
    .local v10, "formDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;
    iget-object v0, v10, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 106
    iget-object v0, v10, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    .end local v10    # "formDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;
    :cond_6
    invoke-virtual {v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 122
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "tips":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "picUrl":Ljava/lang/String;
    .end local v8    # "aoDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .end local v9    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v11    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v12    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0
.end method
