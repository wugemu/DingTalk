.class public final Ldvh;
.super Ldvj;
.source "LightAppMessageSelectHandler.java"


# instance fields
.field a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldru;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manager"    # Ldru;
    .param p3, "app"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ldvj;-><init>(Landroid/app/Activity;Ldru;)V

    .line 41
    iput-object p3, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Ldvh;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->message_more_microapp_filter:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "iv"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v2, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imIcon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v2, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imIcon:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    :try_start_0
    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v2, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imIcon:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .local v1, "url":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 144
    .local v0, "im":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-interface {v0, p1, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .end local v0    # "im":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 141
    :cond_1
    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v1, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imIcon:Ljava/lang/String;

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 147
    .restart local v0    # "im":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-interface {v0, p1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 18
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->h:Ldru;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 73
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v6, 0x2

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .local v4, "orgId":J
    const-string/jumbo v2, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 77
    const-string/jumbo v2, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 81
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v2, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->S()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "title":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldvh;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v6, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imAction:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v4    # "orgId":J
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->h:Ldru;

    if-eqz v2, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->h:Ldru;

    invoke-virtual {v2}, Ldru;->d()V

    .line 125
    :cond_2
    return-void

    .line 78
    .restart local v4    # "orgId":J
    :cond_3
    const-string/jumbo v2, "orgId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v2, "orgId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 88
    .end local v4    # "orgId":J
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/util/List;

    move-result-object v11

    .line 89
    .local v11, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v11, :cond_1

    .line 90
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 91
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v16, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 93
    .local v17, "object":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    .end local v17    # "object":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    .line 96
    .local v15, "nameArr":[Ljava/lang/String;
    new-instance v14, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    invoke-direct {v14, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v14, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lctk$i;->choose_from_enterprise:I

    invoke-virtual {v14, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v6, -0x1

    new-instance v9, Ldvh$1;

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Ldvh$1;-><init>(Ldvh;Ljava/util/List;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v2, v6, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_1

    .line 110
    .end local v14    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v15    # "nameArr":[Ljava/lang/String;
    .end local v16    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v2, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Ldvh;->g:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->S()Ljava/lang/String;

    move-result-object v8

    .line 113
    .restart local v8    # "title":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v4, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 115
    .restart local v4    # "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldvh;->g:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v6, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imAction:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 5
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v3

    .line 61
    :goto_0
    return v2

    .line 52
    :cond_1
    invoke-static {p1}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v1, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->imMsgTypes:Ljava/util/List;

    .line 56
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 57
    .local v0, "t":I
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 58
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "t":I
    :cond_4
    move v2, v3

    .line 61
    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string/jumbo v0, "chat_more_towertask_click"

    return-object v0
.end method

.method protected final y_()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    .line 1045
    iget-object v1, p0, Ldvh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 184
    .local v1, "obj":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 186
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "app_id"

    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
