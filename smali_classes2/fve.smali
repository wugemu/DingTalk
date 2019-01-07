.class public final Lfve;
.super Ljava/lang/Object;
.source "UserBusinessProfilePresenter.java"


# instance fields
.field a:Lfvd$a;


# direct methods
.method public constructor <init>(Lfvd$a;)V
    .locals 0
    .param p1, "viewContract"    # Lfvd$a;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lfve;->a:Lfvd$a;

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;[DLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "poi"    # [D
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "location_longitude"

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 289
    const-string/jumbo v2, "location_latitude"

    aget-wide v4, p1, v7

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 290
    const-string/jumbo v2, "location_text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "location_hide_right_menu"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 293
    .local v1, "selectMarker":Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;
    sget v2, Lezg$g;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 294
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 295
    iput v6, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 296
    const-string/jumbo v2, "location_select_marker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 297
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 298
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUserProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v9, 0x0

    .line 305
    .local v9, "mTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v12, -0x1

    .line 306
    .local v12, "uid":J
    const-string/jumbo v11, ""

    .line 307
    .local v11, "remark":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 309
    .local v10, "picUrl":Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tags:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 310
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tags:Ljava/util/List;

    .line 312
    :cond_0
    if-eqz p2, :cond_1

    .line 313
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 316
    :cond_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v2, :cond_3

    .line 317
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->remark:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 318
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v11, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->remark:Ljava/lang/String;

    .line 320
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->picUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->picUrl:Ljava/lang/String;

    .line 325
    :cond_3
    invoke-static/range {p2 .. p2}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, "alias":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 327
    move-object/from16 v8, p3

    .line 329
    :cond_4
    const-string/jumbo v6, "type=SINGLE&tags=%s&alias=%s&remark=%s&uid=%s&picUrl=%s"

    const/4 v2, 0x5

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    if-nez v9, :cond_6

    const-string/jumbo v2, ""

    :cond_5
    :goto_0
    aput-object v2, v7, v14

    const/4 v2, 0x1

    aput-object v8, v7, v2

    const/4 v2, 0x2

    aput-object v11, v7, v2

    const/4 v2, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x4

    aput-object v10, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "queryParams":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    const-string/jumbo v4, "2018112662280156"

    const-string/jumbo v6, "pages/notelabel/notelabel"

    const-string/jumbo v7, "push"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void

    .line 1338
    .end local v5    # "queryParams":Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1339
    :cond_7
    const-string/jumbo v2, ""

    goto :goto_0

    .line 1341
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1342
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    .line 1343
    const/4 v3, 0x1

    if-le v15, v3, :cond_5

    .line 1344
    const/4 v3, 0x1

    move v4, v3

    move-object v3, v2

    :goto_1
    if-ge v4, v15, :cond_9

    .line 1345
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1346
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/4 v3, 0x1

    const-string/jumbo v17, ","

    aput-object v17, v16, v3

    const/4 v3, 0x2

    aput-object v2, v16, v3

    invoke-static/range {v16 .. v16}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1344
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_9
    move-object v2, v3

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "warnMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->dt_contact_profile_get_mobile_alert:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 276
    sget v1, Lezg$l;->dt_common_i_know:I

    new-instance v2, Lfve$2;

    invoke-direct {v2, p0, v0}, Lfve$2;-><init>(Lfve;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;JILjava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;
    .param p2, "uid"    # J
    .param p4, "comingSource"    # I
    .param p5, "mSourceTitle"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/page/sendfriendrequest"

    new-instance v0, Lfve$9;

    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lfve$9;-><init>(Lfve;JILjava/lang/String;Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 236
    return-void
.end method
