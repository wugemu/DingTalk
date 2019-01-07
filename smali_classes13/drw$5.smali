.class final Ldrw$5;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/MenuInputView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrw;


# direct methods
.method constructor <init>(Ldrw;)V
    .locals 0
    .param p1, "this$0"    # Ldrw;

    .prologue
    .line 298
    iput-object p1, p0, Ldrw$5;->a:Ldrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V
    .locals 10
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;
    .param p2, "menuInputView"    # Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 301
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 302
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 325
    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    .line 8430
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v5, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8431
    sget v5, Lctk$i;->version_low:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lctk$i;->sure:I

    new-instance v7, Ldrw$9;

    invoke-direct {v7, v1}, Ldrw$9;-><init>(Ldrw;)V

    .line 8432
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lctk$i;->cancel:I

    new-instance v7, Ldrw$8;

    invoke-direct {v7, v1}, Ldrw$8;-><init>(Ldrw;)V

    .line 8438
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8444
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 329
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/views/MenuInputView;->a()V

    .line 331
    :cond_1
    return-void

    .line 308
    :pswitch_1
    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    .line 1337
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->actionData:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1338
    iget-object v4, v1, Ldrw;->f:Ldrw$b;

    if-eqz v4, :cond_2

    .line 1339
    iget-object v4, v1, Ldrw;->f:Ldrw$b;

    .line 1490
    iput-object v6, v4, Ldrw$b;->a:Lcma;

    .line 1340
    iput-object v6, v1, Ldrw;->f:Ldrw$b;

    .line 1342
    :cond_2
    new-instance v4, Ldrw$b;

    new-instance v5, Ldrw$6;

    invoke-direct {v5, v1}, Ldrw$6;-><init>(Ldrw;)V

    invoke-direct {v4, v5}, Ldrw$b;-><init>(Lcma;)V

    iput-object v4, v1, Ldrw;->f:Ldrw$b;

    .line 1358
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v4

    invoke-virtual {v4}, Ldyn;->d()Ldyj;

    move-result-object v4

    iget-object v5, v1, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->actionData:Ljava/lang/String;

    iget-object v7, v1, Ldrw;->f:Ldrw$b;

    invoke-interface {v4, v5, v6, v7}, Ldyj;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1359
    iget-object v1, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->showLoadingDialog()V

    goto :goto_0

    .line 311
    :pswitch_2
    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    .line 2420
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->actionData:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2421
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v4

    iget-object v1, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->actionData:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    .line 3049
    iget-object v1, v1, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 314
    if-eqz v1, :cond_0

    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    .line 4049
    iget-object v1, v1, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 314
    const-string/jumbo v4, "id"

    invoke-interface {v1, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    .line 5049
    iget-object v1, v1, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 316
    const-string/jumbo v4, "id"

    invoke-interface {v1, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 317
    .local v2, "orgId":J
    iget-object v1, p0, Ldrw$5;->a:Ldrw;

    iget-object v4, p0, Ldrw$5;->a:Ldrw;

    .line 6049
    iget-object v4, v4, Ldrw;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 317
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomButtonModel;->actionData:Ljava/lang/String;

    .line 7364
    iget-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v6, :cond_3

    iget-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7365
    iget-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 7367
    :cond_3
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v7, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 7368
    iget-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 7369
    iget-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v7, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    sget v8, Lctk$i;->processing:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7370
    iget-object v6, v1, Ldrw;->g:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 7371
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v7

    .line 7372
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v8

    new-instance v9, Ldrw$7;

    invoke-direct {v9, v1, v5}, Ldrw$7;-><init>(Ldrw;Ljava/lang/String;)V

    const-class v5, Lcma;

    iget-object v1, v1, Ldrw;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 7373
    invoke-interface {v8, v9, v5, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 7371
    invoke-virtual {v6, v7, v4, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v2    # "orgId":J
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
