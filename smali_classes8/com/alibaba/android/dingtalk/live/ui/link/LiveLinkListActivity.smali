.class public Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveLinkListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lbxu;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->f:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "nick":Ljava/lang/String;
    const-class v2, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/GroupNickService;

    .line 315
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    const/4 v3, 0x1

    .line 314
    invoke-interface {v2, p0, v4, v5, v3}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v0

    .line 316
    .local v0, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_1
    return-object v1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    sget v1, Lbtp$e;->empty_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 110
    .local v0, "emptyView":Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    sget v1, Lbtp$g;->icon_group_live:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 111
    sget v1, Lbtp$g;->dt_lv_link_live_empty_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 112
    sget v1, Lbtp$g;->dt_lv_link_live_empty_description:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 113
    sget v1, Lbtp$g;->dt_lv_link_live_choose_conv:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 114
    sget v1, Lbtp$d;->ui_common_level1_button_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 115
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 67
    .line 5253
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_link_live_del_confirm_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5254
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_delete:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 5255
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_cancel:I

    const/4 v2, 0x0

    .line 5261
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5262
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/ArrayList;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    const/4 v2, 0x0

    .line 67
    .line 5523
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5524
    :cond_0
    :goto_0
    return-void

    .line 5527
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5528
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 5529
    if-eqz v0, :cond_2

    .line 5532
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_2

    .line 5533
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 5534
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_3

    .line 5535
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 5536
    new-instance v1, Lbvt;

    invoke-direct {v1}, Lbvt;-><init>()V

    .line 5537
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lbvt;->a:Ljava/lang/String;

    .line 5538
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lbvt;->b:Ljava/lang/String;

    .line 5539
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->g(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lbvt;->c:Ljava/lang/Long;

    .line 5540
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5541
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 5542
    new-instance v5, Lbvt;

    invoke-direct {v5}, Lbvt;-><init>()V

    .line 5543
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "cid"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lbvt;->a:Ljava/lang/String;

    .line 5544
    iget-object v1, v5, Lbvt;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lbvt;->b:Ljava/lang/String;

    .line 5547
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "tag"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5548
    if-eqz v1, :cond_5

    .line 5549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    .line 5551
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    int-to-long v8, v1

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-virtual {v6, v8, v9, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLjava/util/Map;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lbvt;->c:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5555
    :goto_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6457
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3, v0, v2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/util/List;Ljava/util/List;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 326
    .local p1, "newCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b:Lbxu;

    invoke-virtual {v3}, Lbxu;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 327
    .local v2, "totalCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v0    # "cid":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "intent_action_link_live_cids_changed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "conversation_ids"

    .line 336
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 337
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 338
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;I)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbvt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 471
    .local p1, "shareToInfos":Ljava/util/List;, "Ljava/util/List<Lbvt;>;"
    .local p2, "successCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->showLoadingDialog()V

    .line 473
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_3

    .line 475
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->dismissLoadingDialog()V

    .line 476
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b(Ljava/util/List;)V

    .line 4341
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    .line 479
    .local v11, "hasFailed":Z
    if-nez v11, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->finish()V

    .line 520
    .end local v11    # "hasFailed":Z
    :cond_1
    :goto_1
    return-void

    .line 4345
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent_action_link_live_shared_cids"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "conversation_ids"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4346
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 4348
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 486
    :cond_3
    add-int/lit8 v1, p3, 0x5

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 487
    .local v4, "toIndex":I
    new-instance v10, Lbvu;

    invoke-direct {v10}, Lbvu;-><init>()V

    .line 488
    .local v10, "reqModel":Lbvu;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->d:Ljava/lang/String;

    iput-object v1, v10, Lbvu;->a:Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->e:Ljava/lang/String;

    iput-object v1, v10, Lbvu;->b:Ljava/lang/String;

    .line 490
    invoke-interface {p1, p3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v10, Lbvu;->c:Ljava/util/List;

    .line 492
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;Ljava/util/List;II)V

    .line 518
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 519
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v6

    .line 4425
    new-instance v5, Lbxe$22;

    const/4 v8, 0x0

    iget-object v9, v6, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v7, v0

    invoke-direct/range {v5 .. v10}, Lbxe$22;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbvu;)V

    .line 4431
    invoke-virtual {v5}, Lbxe$22;->start()V

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbvt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "shareToInfos":Ljava/util/List;, "Ljava/util/List<Lbvt;>;"
    .local p2, "successCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v3

    .line 395
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    .local v1, "failedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbvt;

    .line 397
    .local v2, "info":Lbvt;
    if-eqz v2, :cond_2

    .line 400
    if-eqz p2, :cond_3

    iget-object v6, v2, Lbvt;->a:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 401
    :cond_3
    iget-object v6, v2, Lbvt;->a:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    .end local v2    # "info":Lbvt;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "notifySharePartFailed, failedCids="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4013
    const-string/jumbo v5, "live"

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$7;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V

    .line 449
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 452
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;>;"
    :cond_5
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v3, v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    move v3, v4

    .line 453
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "search_mode_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    const-string/jumbo v1, "count_limit"

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v2, "link_live_list"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v1, "title"

    sget v2, Lbtp$g;->dt_lv_link_live_choose_conv:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v1, "confirm_fetcher"

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConfirmFetcher;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConfirmFetcher;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 307
    const-string/jumbo v1, "intent_key_choose_control"

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b:Lbxu;

    .line 308
    invoke-virtual {v4}, Lbxu;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->f:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveConversationChooseControl;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 309
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 67
    .line 5266
    if-eqz p1, :cond_0

    .line 5269
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->showLoadingDialog()V

    .line 5270
    new-instance v0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;-><init>()V

    .line 5271
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->cid:Ljava/lang/String;

    .line 5272
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->liveUuid:Ljava/lang/String;

    .line 5273
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->nickname:Ljava/lang/String;

    .line 5274
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v1, v0, v2}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 67
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 353
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/util/List;)V

    .line 355
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a()V

    .line 384
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->showLoadingDialog()V

    .line 361
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$6;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V

    .line 382
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 383
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)Lbxu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b:Lbxu;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 203
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 204
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/util/List;)V

    .line 209
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_extra_orientation_when_finish"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "orientation":I
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "orientation":I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lbtp$f;->activity_link_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->setContentView(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lbtp$g;->dt_lv_link_live_list:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1098
    :cond_0
    new-instance v0, Lbxu;

    invoke-direct {v0, p0}, Lbxu;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b:Lbxu;

    .line 1099
    sget v0, Lbtp$e;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a:Landroid/widget/ListView;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b:Lbxu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->d:Ljava/lang/String;

    .line 1126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_uuid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->e:Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1129
    const-string/jumbo v0, "live"

    const-string/jumbo v1, "Link live init failed, cid is empty"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 89
    :goto_0
    if-nez v0, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->finish()V

    .line 95
    :cond_1
    :goto_1
    return-void

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1134
    const-string/jumbo v0, "live"

    const-string/jumbo v1, "Link live init failed, uuid is empty"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 1135
    goto :goto_0

    .line 1138
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1143
    :cond_4
    new-instance v5, Lbvi;

    invoke-direct {v5}, Lbvi;-><init>()V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->d:Ljava/lang/String;

    iput-object v0, v5, Lbvi;->a:Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->e:Ljava/lang/String;

    iput-object v0, v5, Lbvi;->b:Ljava/lang/String;

    .line 1147
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->showLoadingDialog()V

    .line 1148
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V

    .line 1175
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 1176
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 1436
    new-instance v0, Lbxe$23;

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$23;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbvi;)V

    .line 1442
    invoke-virtual {v0}, Lbxe$23;->start()V

    .line 1565
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 1569
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$9;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c:Landroid/content/BroadcastReceiver;

    .line 1585
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1586
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 228
    sget v5, Lbtp$g;->icon_add:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "iconFont":Ljava/lang/String;
    sget v5, Lbtp$b;->ui_common_theme_icon_bg_color:I

    invoke-static {v5}, Leda;->b(I)I

    move-result v0

    .line 230
    .local v0, "color":I
    new-instance v1, Lecw;

    invoke-direct {v1, v2, v0}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 231
    .local v1, "drawable":Lecw;
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 2079
    .local v4, "size":I
    iput v4, v1, Lecw;->b:I

    .line 3070
    iput v4, v1, Lecw;->a:I

    .line 235
    const/4 v5, 0x1

    sget v6, Lbtp$g;->dt_lv_link_live_choose_conv:I

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 237
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 238
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 239
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    .line 1590
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1591
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c:Landroid/content/BroadcastReceiver;

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "object":Ljava/lang/Object;
    instance-of v4, v1, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 189
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 190
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v5, v3, [Ljava/lang/String;

    sget v6, Lbtp$g;->and_chat_menu_delete:I

    .line 191
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 190
    invoke-virtual {v4, v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v2, v3

    .line 198
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 246
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b()V

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
