.class public Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "DiagnosticsActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DIAGNOSTICS_ACTIVITY_CHOOSE_GROUP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->a:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->b:Landroid/widget/ToggleButton;

    .line 57
    new-instance v0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    .line 1170
    if-eqz p1, :cond_5

    .line 1173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 1174
    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1176
    const-string/jumbo v1, ""

    .line 1177
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_3

    .line 1179
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1180
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 1181
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 1197
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    const-string/jumbo v0, "diagnostics_setting_force_fix_cid_msg_index_exec"

    .line 1199
    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1201
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    .line 1202
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->c(Ljava/lang/String;)Z

    move-result v0

    .line 1203
    if-eqz v0, :cond_4

    .line 1204
    sget v0, Lezg$l;->setting_diagnostics_fix_msg_index_succ:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1182
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 1183
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v1, "cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    move-object v1, v0

    .line 1185
    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_1

    .line 1187
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1188
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1189
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1190
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 1191
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const/4 v6, 0x0

    .line 1190
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1206
    :cond_4
    sget v0, Lezg$l;->setting_diagnostics_fix_msg_index_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 50
    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    .prologue
    const/4 v3, 0x1

    .line 50
    .line 2157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2158
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2159
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const-string/jumbo v1, "intent_key_im_forward_edit_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2162
    const-string/jumbo v1, "intent_key_im_forward_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2163
    const-string/jumbo v1, "intent_key_pick_org_contact"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2165
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 99
    .local v1, "vid":I
    sget v2, Lezg$h;->setting_force_fix_msg_index:I

    if-ne v1, v2, :cond_1

    .line 100
    const-string/jumbo v2, "diagnostics_setting_force_fix_msg_index_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    sget v2, Lezg$l;->setting_diagnostics_dialog_msg_fix_msg_index:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    new-instance v4, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->confirm:I

    new-instance v4, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 154
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    sget v2, Lezg$h;->setting_force_fix_cid_msg_index:I

    if-ne v1, v2, :cond_0

    .line 129
    const-string/jumbo v2, "diagnostics_setting_force_fix_cid_msg_index_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    sget v2, Lezg$l;->setting_diagnostics_dialog_msg_fix_msg_index:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    new-instance v4, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->confirm:I

    new-instance v4, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v1, Lezg$j;->activity_settings_diagnostics:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->setContentView(I)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$l;->dt_user_setting_diagnostics_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "intent_action_forward_pick_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 81
    sget v1, Lezg$h;->setting_fts_client_log:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->b:Landroid/widget/ToggleButton;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->b:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->b:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 94
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void
.end method
