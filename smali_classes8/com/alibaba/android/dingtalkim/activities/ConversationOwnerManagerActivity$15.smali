.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1021
    if-nez p2, :cond_2

    .line 1022
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1023
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    const-string/jumbo v3, "android.intent.action.SEND"

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1032
    :cond_1
    return-void

    .line 1025
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$15;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    sget v4, Lctk$i;->chat_copy_is_success:I

    .line 1027
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0
.end method
