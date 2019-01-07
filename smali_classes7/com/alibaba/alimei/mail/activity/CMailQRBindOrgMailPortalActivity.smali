.class public Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailQRBindOrgMailPortalActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b:Z

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->c:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;ILjava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    .line 7304
    iput-boolean v7, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b:Z

    .line 7306
    if-eqz p2, :cond_5

    .line 7307
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7308
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b()V

    .line 7326
    :cond_0
    :goto_0
    return-void

    .line 7309
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 7310
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labe;

    .line 7312
    iget-object v1, v0, Labe;->c:Ljava/lang/Boolean;

    .line 8022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 7313
    iget-object v2, v0, Labe;->d:Ljava/lang/Boolean;

    .line 9022
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 7315
    if-eqz v1, :cond_3

    .line 7316
    if-eqz v2, :cond_2

    .line 7317
    iget-object v0, v0, Labe;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 9284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9285
    const-string/jumbo v3, "orgId"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9286
    const-string/jumbo v0, "mail_select_binded_org"

    invoke-static {v0, v2}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 7318
    sget v0, Laxo$i;->dt_mail_org_has_bind_domain_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 7320
    :cond_2
    iget-object v1, v0, Labe;->b:Ljava/lang/Long;

    iget-object v2, v0, Labe;->a:Ljava/lang/String;

    .line 9338
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 10290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10291
    const-string/jumbo v3, "orgId"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10292
    const-string/jumbo v3, "mail_select_unbind_org"

    invoke-static {v3, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 9340
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "goto bind domain with orgId:"

    aput-object v3, v0, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 9342
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/mail/org_bind_confirm.html"

    .line 9344
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;

    invoke-direct {v5, p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 9342
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 9356
    iput-boolean v7, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->c:Z

    .line 9358
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto/16 :goto_0

    .line 7323
    :cond_3
    sget v0, Laxo$i;->dt_mail_bind_not_admin_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7326
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto/16 :goto_0

    .line 7330
    :cond_5
    if-nez p1, :cond_0

    .line 7331
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    .line 6248
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->dismissLoadingDialog()V

    .line 6250
    invoke-static {p1, p2, p3, p4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6252
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6253
    sget v0, Laxo$i;->dt_mail_qr_token_invalid_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    .line 6257
    :goto_0
    return-void

    .line 6254
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6255
    sget v0, Laxo$i;->dt_mail_use_admin_phone_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 6256
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_BINDACCOUNT_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6257
    sget v0, Laxo$i;->dt_mail_bind_account_not_my_phone_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 6259
    :cond_2
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    .line 6266
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 6267
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b()V

    .line 6268
    :goto_0
    return-void

    .line 6271
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6273
    sget v0, Laxo$i;->dt_mail_choose_bind_org_title:I

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6275
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 6276
    const/4 v0, 0x0

    .line 6277
    if-eqz p1, :cond_4

    .line 6278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labe;

    .line 6279
    add-int/lit8 v2, v1, 0x1

    iget-object v6, v0, Labe;->a:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v0, v0, Labe;->a:Ljava/lang/String;

    :goto_3
    aput-object v0, v4, v1

    move v1, v2

    .line 6280
    goto :goto_2

    .line 6275
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 6279
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    :cond_4
    move v1, v0

    .line 6282
    :cond_5
    sget v0, Laxo$i;->dt_mail_bind_new_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 6284
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6291
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V

    .line 7173
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 6300
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Lzv;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
    .param p1, "x1"    # Lzv;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    .line 5150
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "qrToken check response, tag = "

    aput-object v3, v2, v6

    iget-object v3, p1, Lzv;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string/jumbo v3, " data: "

    aput-object v3, v2, v7

    const/4 v3, 0x3

    iget-object v4, p1, Lzv;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->b(Ljava/lang/String;)I

    .line 5153
    const-string/jumbo v2, "bindDomain"

    iget-object v3, p1, Lzv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5154
    iget-object v2, p1, Lzv;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b(Ljava/lang/String;)Z

    move-result v2

    .line 5156
    if-eqz v2, :cond_0

    .line 5213
    const-string/jumbo v2, "start to query org list"

    invoke-static {v2}, Lyx;->b(Ljava/lang/String;)I

    .line 5215
    const-class v2, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 5217
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->getUserOrgList(Liyv;)V

    .line 5173
    :goto_0
    return-void

    .line 5159
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->dismissLoadingDialog()V

    .line 5161
    sget v2, Laxo$i;->dt_mail_use_admin_phone_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 5163
    :cond_1
    const-string/jumbo v2, "bindAccount"

    iget-object v3, p1, Lzv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5164
    iget-object v2, p1, Lzv;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b(Ljava/lang/String;)Z

    move-result v2

    .line 5166
    if-eqz v2, :cond_a

    .line 5167
    iget-object v2, p1, Lzv;->b:Ljava/lang/String;

    .line 5388
    :try_start_0
    const-class v3, Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 5389
    if-nez v2, :cond_2

    .line 5390
    sget v2, Laxo$i;->dt_mail_qr_token_format_error:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 5391
    const-string/jumbo v2, "gotoBindAccount from Json fail is null"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5467
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto :goto_0

    .line 5394
    :cond_2
    :try_start_1
    const-string/jumbo v3, "orgId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5395
    const-string/jumbo v4, "mail"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 5396
    const-string/jumbo v5, "enterpriseName"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 5400
    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 5401
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 5410
    :goto_2
    instance-of v2, v4, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 5411
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object v8, v2

    .line 5416
    :goto_3
    cmp-long v2, v6, v10

    if-lez v2, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5417
    invoke-static {v6, v7}, Lafh;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 5420
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5421
    instance-of v3, v5, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 5422
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object v5, v2

    .line 5430
    :goto_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->c:Z

    .line 5432
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v9, "https://qr.dingtalk.com/mail/user_bind_confirm.html"

    .line 5434
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/lang/String;JLjava/lang/String;)V

    .line 5432
    invoke-interface {v2, v9, v10, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5454
    :catch_0
    move-exception v2

    .line 5455
    :try_start_2
    invoke-virtual {v2}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 5457
    sget v3, Laxo$i;->dt_mail_qr_token_format_error:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 5459
    const-string/jumbo v3, "gotoBindAccount"

    invoke-static {v3, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5467
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto/16 :goto_0

    .line 5402
    :cond_3
    :try_start_3
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 5403
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    goto :goto_2

    .line 5404
    :cond_4
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 5405
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_2

    :cond_5
    move-wide v6, v10

    .line 5407
    goto/16 :goto_2

    .line 5413
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    move-object v5, v2

    .line 5424
    goto :goto_4

    :cond_8
    move-object v5, v2

    .line 5427
    goto :goto_4

    .line 5448
    :cond_9
    sget v2, Laxo$i;->dt_mail_qr_token_format_error:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 5450
    const-string/jumbo v2, "gotoBindAccount orgId or email is empty"

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/gson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 5460
    :catch_1
    move-exception v2

    .line 5461
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 5463
    sget v3, Laxo$i;->dt_mail_qr_token_format_error:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 5465
    const-string/jumbo v3, "gotoBindAccount"

    invoke-static {v3, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5467
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    throw v2

    .line 5169
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->dismissLoadingDialog()V

    .line 5171
    sget v2, Laxo$i;->dt_mail_bind_account_not_my_phone_tips:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5174
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->dismissLoadingDialog()V

    .line 5176
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "unknown tag "

    aput-object v3, v2, v6

    iget-object v3, p1, Lzv;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    .line 5178
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2297
    const-string/jumbo v0, "mail_select_create_org"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "goto bind domain without orgId"

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 367
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/org_bind_confirm.html"

    .line 369
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V

    .line 367
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->c:Z

    .line 382
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    .line 383
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 185
    :try_start_0
    const-class v6, Ljava/util/HashMap;

    invoke-static {p0, v6}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 186
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 187
    const-string/jumbo v6, "localCheckMobileMatch parse data(JSON Format) is null"

    invoke-static {v6}, Lafg;->a(Ljava/lang/String;)V

    .line 207
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v5

    .line 190
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string/jumbo v6, "mobile"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 194
    .local v4, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 195
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    .line 197
    .local v3, "myPhone":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 195
    .end local v3    # "myPhone":Ljava/lang/String;
    :cond_1
    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "mobile":Ljava/lang/String;
    .end local v4    # "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const-string/jumbo v6, "localCheckMobileMatch parse data(JSON Format)"

    invoke-static {v6, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 472
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 474
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    sget v1, Laxo$i;->dt_mail_bind_warning_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 3230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 476
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 3275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 4239
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 481
    sget v1, Laxo$b;->mail_bind_warning_choose:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 488
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 495
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 496
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    .line 82
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->c:Z

    if-nez v0, :cond_0

    .line 83
    sget v0, Laxo$a;->pop_dialog_exit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->overridePendingTransition(II)V

    .line 85
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->d:Z

    if-nez v0, :cond_0

    .line 74
    sget v0, Laxo$i;->dt_mail_qr_bind_not_enable_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->f(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2088
    if-eqz v0, :cond_0

    .line 2090
    :try_start_0
    const-string/jumbo v1, "mail_qr_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->finish()V

    .line 2102
    :goto_1
    return-void

    .line 2091
    :catch_0
    move-exception v0

    .line 2092
    const-string/jumbo v1, "CMailQRBindOrgMailPortalActivity"

    const-string/jumbo v2, "handleIntent() "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    :cond_1
    invoke-static {}, Lacq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2110
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->showLoadingDialog()V

    .line 2112
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 2114
    new-instance v1, Lzw;

    invoke-direct {v1}, Lzw;-><init>()V

    .line 2115
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a:Ljava/lang/String;

    iput-object v2, v1, Lzw;->a:Ljava/lang/String;

    .line 2117
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "bind org mail start, qr token = "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->b(Ljava/lang/String;)I

    .line 2119
    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->checkQrCodeToken(Lzw;Liyv;)V

    goto :goto_1

    .line 2104
    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->d:Z

    goto :goto_1
.end method
