.class public Lewf;
.super Ljava/lang/Object;
.source "SystemCallManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lewf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "toUserId"    # J
    .param p4, "stateCode"    # Ljava/lang/String;
    .param p5, "mobile"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/util/List",
            "<",
            "Lckp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/DialogInterface$OnClickListener;"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    new-instance v1, Lewf$8;

    move-object v2, p3

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lewf$8;-><init>(Ljava/util/List;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lewf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 5
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 59
    .line 6203
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_syscall_make_fail:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6204
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6206
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6207
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 6209
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 6210
    :cond_0
    :goto_0
    return-void

    .line 6212
    :cond_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v3, "Make sys-call fail"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6213
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6214
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lewf$6;

    invoke-direct {v3, v1, p0}, Lewf$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;)V

    .line 6215
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Leuj$l;->dt_conference_nav_to_settings:I

    new-instance v3, Lewf$5;

    invoke-direct {v3, v1, p0}, Lewf$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;)V

    .line 6225
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6239
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 6240
    if-eqz v0, :cond_0

    .line 6241
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 6242
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 6243
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lewf;->b(Landroid/app/Activity;JLjava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;Lckp;)V
    .locals 3
    .param p0, "menu"    # Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .param p1, "slotInfo"    # Lckp;

    .prologue
    .line 346
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 350
    .local v0, "mySelf":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    .line 351
    .local v1, "officeNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3056
    iget-object v2, p1, Lckp;->c:Ljava/lang/String;

    .line 352
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4056
    iget-object v2, p1, Lckp;->c:Ljava/lang/String;

    .line 353
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    sget v2, Leuj$l;->dt_conference_office_number:I

    .line 4117
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->d:I

    .line 355
    sget v2, Leuj$f;->uidic_global_color_c11_1:I

    .line 5101
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->g:I

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I

    .prologue
    .line 59
    invoke-static/range {p0 .. p5}, Lewf;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "toUserId"    # J
    .param p3, "toUserNick"    # Ljava/lang/String;
    .param p4, "stateCode"    # Ljava/lang/String;
    .param p5, "mobile"    # Ljava/lang/String;
    .param p6, "checkMultiSimCard"    # Z

    .prologue
    .line 80
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v3, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v4, "context is null or mobile is null"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v10, 0x1

    .line 124
    :cond_1
    :goto_0
    return v10

    .line 85
    :cond_2
    invoke-static {p0}, Levl;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v2, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Leuj$l;->dt_conference_start_syscall_msg_title:I

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 88
    sget v12, Leuj$l;->dt_conf_callselect_btn_make_call:I

    new-instance v1, Lewf$1;

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lewf$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v12, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 100
    sget v1, Leuj$l;->dt_common_cancel:I

    new-instance v3, Lewf$2;

    invoke-direct {v3, v2, p0}, Lewf$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 111
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    if-eqz v0, :cond_3

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 114
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 116
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 118
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_4
    invoke-static/range {p0 .. p6}, Lewf;->c(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 119
    .local v10, "finished":Z
    if-eqz v10, :cond_1

    .line 121
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v11, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v11}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "toUserId"    # J
    .param p3, "mobile"    # Ljava/lang/String;

    .prologue
    .line 361
    if-eqz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    .line 6026
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-wide/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JIILcma;)V

    .line 367
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;-><init>()V

    .line 368
    .local v2, "recordModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;->callerUid:Ljava/lang/Long;

    .line 369
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;->calleeUid:Ljava/lang/Long;

    .line 370
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v12

    .line 372
    .local v12, "t":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-lez v3, :cond_2

    .line 373
    const-wide/16 v4, 0x3e8

    div-long v10, v12, v4

    .line 377
    .local v10, "beginTime":J
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;->beginTime:Ljava/lang/Long;

    .line 378
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;->duration:Ljava/lang/Long;

    .line 379
    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;->calleeMobile:Ljava/lang/String;

    .line 380
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v5

    const-string/jumbo v3, "EVENTBUTLER"

    .line 381
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lewf$9;

    invoke-direct {v4}, Lewf$9;-><init>()V

    const-class v6, Leyo$d;

    invoke-interface {v3, v4, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leyo$d;

    .line 6020
    if-eqz v2, :cond_0

    .line 6024
    const-class v4, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v4}, Lcom/alibaba/wukong/sync/SyncEngine;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 6025
    if-eqz v4, :cond_0

    .line 6028
    new-instance v6, Leyc$16;

    invoke-direct {v6, v5, v3}, Leyc$16;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v4, v2, v6}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->putSysCallRecord(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;Liyv;)V

    goto :goto_0

    .line 375
    .end local v10    # "beginTime":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .restart local v10    # "beginTime":J
    goto :goto_1
.end method

.method private static b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "toUserId"    # J
    .param p3, "stateCode"    # Ljava/lang/String;
    .param p4, "mobile"    # Ljava/lang/String;
    .param p5, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 130
    if-eqz p0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v6, "context is null or mobile is null"

    invoke-static {v3, v4, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 199
    :goto_0
    return v3

    .line 134
    :cond_1
    invoke-static {p3, p4}, Leyv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "dialNumber":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-lez v3, :cond_3

    .line 136
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p0, p1, p2, v0}, Lewf;->b(Landroid/app/Activity;JLjava/lang/String;)V

    .line 174
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.CALL_PHONE"

    aput-object v6, v3, v4

    new-instance v6, Lewf$4;

    invoke-direct {v6, v0, p0, p5}, Lewf$4;-><init>(Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-static {p0, v5, v3, v6}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    :cond_2
    move v3, v4

    .line 199
    goto :goto_0

    .line 139
    :cond_3
    const-string/jumbo v3, "tele_conf"

    sget-object v6, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v7, "toUserId <= 0"

    invoke-static {v3, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 142
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput-object p4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 143
    iput v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 144
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v3, "EVENTBUTLER"

    .line 146
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lewf$3;

    invoke-direct {v7, p3, p4, p0, v0}, Lewf$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    const-class v8, Lcma;

    invoke-interface {v3, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 145
    invoke-virtual {v6, v2, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z

    .prologue
    .line 59
    invoke-static/range {p0 .. p6}, Lewf;->c(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "toUserId"    # J
    .param p3, "toUserNick"    # Ljava/lang/String;
    .param p4, "stateCode"    # Ljava/lang/String;
    .param p5, "mobile"    # Ljava/lang/String;
    .param p6, "checkMultiSimCard"    # Z

    .prologue
    .line 254
    if-eqz p0, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    const/4 v1, 0x1

    .line 309
    :goto_0
    return v1

    .line 258
    :cond_1
    if-eqz p6, :cond_7

    invoke-static {p0}, Lcpj;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    invoke-static {p0}, Lcpj;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 263
    :cond_2
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewf;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Sys call with slots call slot "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "-1"

    .line 264
    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " directly"

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v6, -0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v6}, Lewf;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z

    .end local v4    # "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    move-result v1

    goto :goto_0

    .line 267
    .restart local v4    # "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    :cond_3
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v3, "Sys call with slots show menu"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_simcard_one:I

    sget v2, Leuj$l;->dt_conference_single_normalcall_card_one:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 270
    .local v0, "card0Menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lckp;

    .line 271
    .local v12, "slot0":Lckp;
    if-eqz v12, :cond_4

    .line 1056
    iget-object v1, v12, Lckp;->c:Ljava/lang/String;

    .line 1085
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 273
    invoke-static {v0, v12}, Lewf;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;Lckp;)V

    :cond_4
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 275
    invoke-static/range {v1 .. v6}, Lewf;->a(Landroid/app/Activity;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 1125
    iput-object v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 277
    new-instance v11, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v1, Leuj$l;->icon_simcard_two:I

    sget v2, Leuj$l;->dt_conference_single_normalcall_card_other:I

    invoke-direct {v11, v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 278
    .local v11, "card1Menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lckp;

    .line 279
    .local v13, "slot1":Lckp;
    if-eqz v13, :cond_5

    .line 2056
    iget-object v1, v13, Lckp;->c:Ljava/lang/String;

    .line 2085
    iput-object v1, v11, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->e:Ljava/lang/String;

    .line 281
    invoke-static {v11, v13}, Lewf;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;Lckp;)V

    :cond_5
    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 283
    invoke-static/range {v1 .. v6}, Lewf;->a(Landroid/app/Activity;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 2125
    iput-object v1, v11, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 286
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 287
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 291
    .local v14, "title":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/alibaba/android/teleconf/widget/MenuDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;-><init>(Landroid/content/Context;)V

    .line 2293
    iput-object v14, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog;->b:Ljava/lang/String;

    .line 292
    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;)Lcom/alibaba/android/teleconf/widget/MenuDialog;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a(Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;)Lcom/alibaba/android/teleconf/widget/MenuDialog;

    move-result-object v1

    new-instance v2, Lewf$7;

    invoke-direct {v2, p0}, Lewf$7;-><init>(Landroid/app/Activity;)V

    .line 2329
    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 302
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->show()V

    .line 303
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v3, "Sys call menu show"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "phone_calllist_normalcall_multicards_show_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 289
    .end local v14    # "title":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static/range {p4 .. p5}, Leyv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "title":Ljava/lang/String;
    goto :goto_1

    .line 308
    .end local v0    # "card0Menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v4    # "slotInfos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    .end local v11    # "card1Menu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v12    # "slot0":Lckp;
    .end local v13    # "slot1":Lckp;
    .end local v14    # "title":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lewf;->a:Ljava/lang/String;

    const-string/jumbo v3, "Sys call with slots call slot(-1) directly"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v10, -0x1

    move-object v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v5 .. v10}, Lewf;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    goto/16 :goto_0
.end method
