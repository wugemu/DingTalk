.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->checkTemplateMatch(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;

.field final synthetic val$conversation:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic val$dingtalkActivity:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$dingtalkActivity:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$conversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showTipDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 614
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$dingtalkActivity:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 615
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 616
    sget v1, Lhdn$k;->dt_common_i_know:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 618
    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)V
    .locals 4
    .param p1, "botTemplateModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 594
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$dingtalkActivity:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 595
    if-nez p1, :cond_0

    .line 596
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->showTipDialog(Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$conversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)I

    move-result v0

    .line 600
    .local v0, "status":I
    if-eqz v0, :cond_3

    .line 601
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 602
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->dt_im_bot_inner_disable_add:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->showTipDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 604
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->dt_im_bot_outter_disable_add:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->showTipDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->showTipDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$dingtalkActivity:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$conversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;->access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 591
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->onDataReceived(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector$1;->val$dingtalkActivity:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 628
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 623
    return-void
.end method
