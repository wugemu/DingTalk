.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    .prologue
    .line 3262
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 20
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3265
    if-ltz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;)Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    .line 3266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;)Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcng;

    .line 3267
    .local v11, "menu":Lcng;
    iget v2, v11, Lcng;->a:I

    packed-switch v2, :pswitch_data_0

    .line 3356
    .end local v11    # "menu":Lcng;
    :cond_0
    :goto_0
    return-void

    .line 3269
    .restart local v11    # "menu":Lcng;
    :pswitch_0
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {v8, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3270
    .local v8, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lctk$i;->remove_conversation_avatar_confirm:I

    invoke-virtual {v8, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lctk$i;->cancel:I

    new-instance v17, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v4, Lctk$i;->sure:I

    new-instance v17, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;)V

    .line 3274
    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3321
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 3325
    .end local v8    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 3326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    invoke-static {v2, v4}, Ldjl;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v10

    .line 3327
    .local v10, "enterpriseIcon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->groupIcon()Ljava/lang/String;

    move-result-object v12

    .line 3328
    .local v12, "normalIcon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v12    # "normalIcon":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v12}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v12    # "normalIcon":Ljava/lang/String;
    :cond_1
    move-object v12, v10

    goto :goto_1

    .line 3333
    .end local v10    # "enterpriseIcon":Ljava/lang/String;
    .end local v12    # "normalIcon":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 3336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    invoke-static {v2, v4}, Ldjl;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v10

    .line 3337
    .restart local v10    # "enterpriseIcon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "icon"

    invoke-interface {v2, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3338
    .restart local v12    # "normalIcon":Ljava/lang/String;
    move-object v3, v10

    .line 3339
    .local v3, "oldAvatar":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "use_enterprise_icon"

    invoke-interface {v2, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3340
    .local v16, "useEnterpriseIcon":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3341
    move-object v3, v12

    .line 3343
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v14

    .line 3344
    .local v14, "oid":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3345
    .local v5, "orgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3346
    .local v7, "orgIcon":Ljava/lang/String;
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v2, v4}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 3347
    .local v9, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-virtual {v9, v14, v15}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v13

    .line 3348
    .local v13, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v13, :cond_3

    iget-object v2, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_3

    iget-object v2, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3349
    iget-object v2, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 3351
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v6

    .line 3352
    .local v6, "conversationResId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    const-string/jumbo v4, "1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
