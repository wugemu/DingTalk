.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

.field private b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 3224
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;)Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 3230
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    .line 3231
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3232
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 3233
    .local v6, "uid":J
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 4336
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 3370
    .end local v6    # "uid":J
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v9

    iget-object v9, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-static {v5, v9}, Ldjl;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v1

    .line 3236
    .local v1, "enterpriseIcon":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v9, "icon"

    invoke-interface {v5, v9}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3237
    .local v4, "normalIcon":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_2
    move v0, v8

    .line 3238
    .local v0, "canEdit":Z
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3239
    .local v3, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcng;>;"
    if-eqz v0, :cond_a

    .line 3240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3241
    :cond_3
    new-instance v5, Lcng;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v11, Lctk$i;->im_larger_image:I

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcng;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    :cond_4
    new-instance v5, Lcng;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v11, Lctk$i;->im_update_group_icon:I

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcng;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3245
    :cond_5
    new-instance v5, Lcng;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    sget v10, Lctk$i;->im_remove_group_icon:I

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcng;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3254
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    if-nez v5, :cond_7

    .line 3255
    new-instance v5, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {v5, v9}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .line 3257
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 3258
    const/4 v2, 0x0

    .line 3259
    .local v2, "isNotifiyDataChanged":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 3260
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v5

    if-nez v5, :cond_c

    .line 3261
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    new-instance v9, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 3262
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;)V

    invoke-virtual {v5, v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3361
    :goto_3
    if-eqz v2, :cond_8

    .line 3362
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    .line 3364
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3365
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 3237
    .end local v0    # "canEdit":Z
    .end local v2    # "isNotifiyDataChanged":Z
    .end local v3    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcng;>;"
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3248
    .restart local v0    # "canEdit":Z
    .restart local v3    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcng;>;"
    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3249
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 3250
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3251
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 3359
    .restart local v2    # "isNotifiyDataChanged":Z
    :cond_c
    const/4 v2, 0x1

    goto :goto_3
.end method
