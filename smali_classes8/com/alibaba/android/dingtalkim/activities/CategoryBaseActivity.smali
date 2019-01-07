.class public Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "CategoryBaseActivity.java"


# instance fields
.field protected a:Lcom/alibaba/wukong/im/category/CategoryObject;

.field protected b:J

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Liak;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 2181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2182
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2183
    sget v1, Lctk$i;->dt_im_category_add_fail_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2184
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;)V

    .line 2185
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2191
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v9, :cond_4

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v4

    .line 105
    .local v4, "currentUid":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v2, "cidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 107
    .local v6, "dataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v6, :cond_0

    .line 111
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v10

    sget-object v11, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v10, v11, :cond_1

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v10

    instance-of v10, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v10, :cond_1

    .line 112
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 113
    .local v7, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v10, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v10, :cond_0

    iget-object v10, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 114
    iget-object v10, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v10, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v10

    sget-object v11, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v10, v11, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v10

    instance-of v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v10, :cond_0

    .line 118
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 119
    .local v8, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 120
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5, v10, v11}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "cid":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    .end local v1    # "cid":Ljava/lang/String;
    .end local v6    # "dataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 128
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$3;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;Ljava/util/Map;)V

    .line 170
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v9

    const-class v10, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v9, v10}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v12, v10, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-class v10, Lcom/alibaba/wukong/Callback;

    .line 171
    invoke-static {v0, v10, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/Callback;

    .line 170
    invoke-interface {v9, v3, v12, v13, v10}, Lcom/alibaba/wukong/im/CategoryService;->moveConversations(Ljava/util/List;JLcom/alibaba/wukong/Callback;)V

    .line 174
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    const-string/jumbo v9, "im"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "addConversationsToCategory size "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 175
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 174
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v2    # "cidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "currentUid":J
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->b:J

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1081
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->c:Landroid/content/BroadcastReceiver;

    .line 1094
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1095
    const-string/jumbo v1, "intent_action_forward_pick_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2061
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->d:Liak;

    if-nez v0, :cond_1

    .line 2062
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->d:Liak;

    .line 2071
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->d:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->addCategoryChangeListener(Liak;)V

    .line 58
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 200
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->c:Landroid/content/BroadcastReceiver;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->d:Liak;

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->d:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->removeCategoryChangeListener(Liak;)V

    .line 205
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->d:Liak;

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 209
    return-void
.end method
