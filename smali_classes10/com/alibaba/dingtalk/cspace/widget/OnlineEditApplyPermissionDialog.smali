.class public Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;
.super Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
.source "OnlineEditApplyPermissionDialog.java"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;-><init>(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 31
    .line 1075
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 1076
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1077
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditApplyPermissionDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "navToConversation: invalid file owner id:"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a:J

    .line 1078
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1077
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    .line 1100
    :goto_0
    return-void

    .line 1084
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 1086
    :cond_1
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1087
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditApplyPermissionDialog"

    const-string/jumbo v2, "navToConversation: null or invalid my user id"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    goto :goto_0

    .line 1093
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a:J

    .line 1094
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZ)Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1097
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditApplyPermissionDialog"

    const-string/jumbo v2, "navToConversation: getConversationIdByUids return null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    goto :goto_0

    .line 1103
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->b()V

    .line 1104
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1137
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .prologue
    .line 31
    .line 1141
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$4;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V

    .line 1173
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1174
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 31
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a:J

    return-wide v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V

    .line 49
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->g:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_request_for_access:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->h:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_online_edit_permission_confirm_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->j:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_online_edit_permission_confirm_concat:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
