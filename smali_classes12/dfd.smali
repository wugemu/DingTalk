.class public final Ldfd;
.super Ldfa;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Ldfc;


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ldfa;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    .line 48
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    sget v1, Lctk$i;->dt_im_recruitment_tele_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 240
    sget v1, Lctk$i;->dt_im_recruitment_tele_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 241
    sget v1, Lctk$i;->cancel:I

    new-instance v2, Ldfd$6;

    invoke-direct {v2, p0, v0}, Ldfd$6;-><init>(Ldfd;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    sget v1, Lctk$i;->dt_im_recruitment_tele_dialog_btn_action:I

    new-instance v2, Ldfd$7;

    invoke-direct {v2, p0, p1}, Ldfd$7;-><init>(Ldfd;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 268
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "showBizCall"    # Z
    .param p6, "corpId"    # Ljava/lang/String;
    .param p7, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 176
    new-instance v11, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 4205
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 177
    .local v11, "actionMenuDialog":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$i;->cancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4213
    iput-object v4, v11, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->b:Ljava/lang/String;

    .line 178
    new-instance v4, Ldfd$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Ldfd$2;-><init>(Ldfd;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V

    .line 4245
    invoke-virtual {v11, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 184
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v15, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    if-eqz p5, :cond_0

    .line 187
    new-instance v12, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v4, Lctk$i;->icon_bizcall_fill:I

    sget v5, Lctk$i;->dt_conference_bizcall_name:I

    invoke-direct {v12, v4, v5}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 188
    .local v12, "menu1":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$i;->dt_conference_bizcall_employee_free:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4533
    iput-object v4, v12, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 189
    const/4 v4, 0x1

    .line 4541
    iput-boolean v4, v12, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->f:Z

    .line 190
    sget-object v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 4585
    iput-object v4, v12, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 191
    new-instance v4, Ldfd$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Ldfd$3;-><init>(Ldfd;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Landroid/app/Activity;JLjava/lang/String;)V

    .line 5581
    iput-object v4, v12, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 203
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v12    # "menu1":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    :cond_0
    new-instance v13, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v4, Lctk$i;->icon_voicephone_fill:I

    sget v5, Lctk$i;->dt_conference_start_btntitle_voip:I

    invoke-direct {v13, v4, v5}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 207
    .local v13, "menu2":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    sget-object v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 5585
    iput-object v4, v13, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 208
    new-instance v4, Ldfd$4;

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Ldfd$4;-><init>(Ldfd;JLandroid/app/Activity;)V

    .line 6581
    iput-object v4, v13, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 218
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v14, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v4, Lctk$i;->icon_conf_video_fill:I

    sget v5, Lctk$i;->dt_conference_start_btntitle_video:I

    invoke-direct {v14, v4, v5}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 221
    .local v14, "menu3":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    sget-object v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 6585
    iput-object v4, v14, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 222
    new-instance v4, Ldfd$5;

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Ldfd$5;-><init>(Ldfd;JLandroid/app/Activity;)V

    .line 7581
    iput-object v4, v14, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 232
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v11, v15}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 234
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    .line 235
    return-void
.end method

.method static synthetic a(Ldfd;Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 1
    .param p0, "x0"    # Ldfd;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Ldfd;->a(Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rlListContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "ivWaterMark"    # Landroid/widget/ImageView;

    .prologue
    .line 77
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 73
    return-void
.end method

.method public final a(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x3

    .line 87
    if-eq p1, v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Ldfa;->a(I)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-super {p0, v0}, Ldfa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2114
    invoke-static {v0}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 91
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 4105
    invoke-static {v1}, Libb;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 113
    if-nez v1, :cond_0

    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 4114
    invoke-static {v1}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Ldfd;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldyq;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    :cond_1
    :goto_0
    return v0

    .line 119
    :cond_2
    iget-object v0, p0, Ldfd;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Ldfd;->a(Landroid/app/Activity;)V

    .line 122
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)Z
    .locals 1
    .param p1, "addAppContainer"    # Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Ldfa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1114
    invoke-static {v0}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 82
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 96
    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3105
    invoke-static {v1}, Libb;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    .line 97
    .local v6, "isHr":Z
    if-nez v6, :cond_0

    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3114
    invoke-static {v1}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    :cond_0
    iget-object v1, p0, Ldfd;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldyq;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    iget-object v2, p0, Ldfd;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 3139
    iget-object v1, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3140
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 3141
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    .line 3142
    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-lez v1, :cond_5

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-eqz v1, :cond_5

    .line 3143
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 3144
    if-nez v1, :cond_3

    const-string/jumbo v3, ""

    .line 3145
    :goto_0
    if-eqz v6, :cond_4

    .line 3146
    iget-object v0, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "im_campus_resume_hr_corp_id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3147
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v8

    new-instance v0, Ldfd$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ldfd$1;-><init>(Ldfd;Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v8, v7, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;Lcma;)V

    :cond_1
    :goto_1
    move v0, v9

    .line 107
    :cond_2
    return v0

    .line 3144
    :cond_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lctk$i;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v0

    const-string/jumbo v0, " "

    aput-object v0, v3, v9

    const/4 v0, 0x2

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v8, v7

    .line 3163
    invoke-direct/range {v1 .. v8}, Ldfd;->a(Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_1

    .line 3165
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 3166
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->and_conf_txt_call_myself_prompt:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 3169
    :cond_6
    iget-object v0, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "im_campus_resume_hr_corp_id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3170
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    iget-object v0, p0, Ldfd;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Ldfd;->b:Lcom/alibaba/wukong/im/Conversation;

    const/16 v4, 0x2775

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;I)V

    goto :goto_1

    .line 102
    :cond_7
    iget-object v0, p0, Ldfd;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Ldfd;->a(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldfd;->d:Z

    .line 136
    return-void
.end method
