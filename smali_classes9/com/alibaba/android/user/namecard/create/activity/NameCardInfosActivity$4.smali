.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "NameCardInfosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-virtual {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->isDestroyed()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v13, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 358
    const-string/jumbo v13, "choose_picture_ids"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 360
    const-string/jumbo v13, "user"

    const-string/jumbo v14, "NameCardInfosActivity"

    const-string/jumbo v15, "upload user avatar path is empty"

    invoke-static {v13, v14, v15}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-virtual {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->showLoadingDialog()V

    .line 366
    invoke-static {}, Lify;->a()Lify;

    move-result-object v13

    new-instance v14, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;)V

    invoke-virtual {v13, v7, v14}, Lify;->a(Ljava/lang/String;Lifv;)V

    goto :goto_0

    .line 395
    .end local v7    # "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 396
    const-string/jumbo v13, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "flag":Ljava/lang/String;
    const-string/jumbo v13, "NameCardInfosPresenter"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 399
    const-string/jumbo v13, "recognize_card_result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 400
    .local v10, "result":Ljava/lang/String;
    const-string/jumbo v13, "media_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "mediaId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13, v10, v4}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v3    # "flag":Ljava/lang/String;
    .end local v4    # "mediaId":Ljava/lang/String;
    .end local v10    # "result":Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "action_name_card_select_company"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 404
    const-string/jumbo v13, "org_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "org":Ljava/lang/String;
    const-string/jumbo v13, "org_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 406
    .local v8, "orgId":J
    const-string/jumbo v13, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 407
    .local v11, "title":Ljava/lang/String;
    const-string/jumbo v13, "intent_key_org_authed"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 408
    .local v6, "orgAuthed":Z
    const-string/jumbo v13, "intent_key_title_authed"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 409
    .local v12, "titleAuthed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v13, :cond_5

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 412
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v5, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-wide v8, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgId:J

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v11, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-nez v13, :cond_6

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    .line 418
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iput-boolean v6, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthed:Z

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v13

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iput-boolean v12, v13, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->titleAuthed:Z

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    goto/16 :goto_0
.end method
