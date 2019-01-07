.class public final Lduz;
.super Ldvj;
.source "CSpaceMessageSelectHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldru;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manager"    # Ldru;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ldvj;-><init>(Landroid/app/Activity;Ldru;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lduz;)V
    .locals 0
    .param p0, "x0"    # Lduz;

    .prologue
    .line 34
    invoke-direct {p0}, Lduz;->g()V

    return-void
.end method

.method static synthetic a(Lduz;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lduz;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lduz;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 5
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v2

    invoke-virtual {v2, p2}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v0

    .line 145
    .local v0, "timeStamp":J
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lduz;->g:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/conversation/chat_list_detail.html"

    new-instance v4, Lduz$3;

    invoke-direct {v4, p0, v0, v1, p1}, Lduz$3;-><init>(Lduz;JLcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 156
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lduz;->h:Ldru;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lduz;->h:Ldru;

    invoke-virtual {v0}, Ldru;->d()V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
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

    .prologue
    .line 48
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->space_name:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$e;->chat_app_yunfile_btn_selecter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->space_name:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 11
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    invoke-direct {p0}, Lduz;->g()V

    .line 106
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v5, "cspace_batch_save_images_enable_android"

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    invoke-direct {p0, p1, p2}, Lduz;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 61
    invoke-direct {p0}, Lduz;->g()V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v3, "spaceImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v4, "otherImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/Message;

    .line 68
    .local v6, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1109
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    .line 69
    :goto_2
    if-eqz v0, :cond_a

    .line 70
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1112
    :cond_5
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 1113
    const/16 v7, 0x1f4

    if-eq v0, v7, :cond_6

    const/16 v7, 0x1f5

    if-eq v0, v7, :cond_6

    move v0, v1

    .line 1115
    goto :goto_2

    .line 1117
    :cond_6
    instance-of v0, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v0, :cond_7

    move v0, v1

    .line 1118
    goto :goto_2

    :cond_7
    move-object v0, v6

    .line 1120
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 1121
    if-eqz v0, :cond_8

    instance-of v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v7, :cond_9

    :cond_8
    move v0, v1

    .line 1122
    goto :goto_2

    .line 1124
    :cond_9
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1125
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 1129
    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    move v0, v1

    .line 71
    :goto_3
    if-eqz v0, :cond_3

    .line 72
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1132
    :cond_c
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 1133
    if-eq v0, v8, :cond_d

    const/16 v7, 0xfb

    if-ne v0, v7, :cond_e

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v0, v1

    goto :goto_3

    .line 77
    .end local v6    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    invoke-direct {p0, p1, p2}, Lduz;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 79
    invoke-direct {p0}, Lduz;->g()V

    goto/16 :goto_0

    .line 83
    :cond_10
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    invoke-direct {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v8, v8, [Ljava/lang/String;

    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    sget v5, Lctk$i;->dt_cspace_save_batch_image:I

    .line 84
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    .line 85
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v1

    .line 84
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    iget-object v0, p0, Lduz;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->dt_cspace_save_chat_history:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    new-instance v0, Lduz$2;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lduz$2;-><init>(Lduz;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 83
    invoke-virtual {v7, v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lduz;->g:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_common_cancel:I

    .line 98
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lduz$1;

    invoke-direct {v2, p0}, Lduz$1;-><init>(Lduz;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
