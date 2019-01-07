.class final Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;
.super Ljava/lang/Object;
.source "ConversationCreateGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lctk$f;->create_enterprise:I

    if-ne v2, v3, :cond_3

    .line 50
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 51
    .local v1, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 52
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    sget v3, Lctk$i;->enterprise_conv_create_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 54
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    sget v3, Lctk$i;->enterprise_conv_create_msg:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 55
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    sget v3, Lctk$i;->create_enterprise:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    sget v3, Lctk$i;->cancel:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 75
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_1
    :goto_0
    return-void

    .line 68
    .restart local v1    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V

    goto :goto_0

    .line 70
    .end local v1    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lctk$f;->create_normal:I

    if-ne v2, v3, :cond_4

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lctk$f;->create_burn_chat:I

    if-ne v2, v3, :cond_1

    .line 73
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;)V

    goto :goto_0
.end method
