.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 3573
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 3573
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 4576
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ai(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J

    move-result-wide v6

    invoke-static {v0, v2, v6, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4577
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lctk$i;->conversation_enterprise_prompt_add_member:I

    .line 4578
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;Ljava/util/List;)V

    .line 4579
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;)V

    .line 4585
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 4591
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    :goto_0
    return-void

    .line 4593
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;Ljava/util/List;ZJ)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3603
    const-string/jumbo v0, "130000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3604
    sget v0, Lctk$i;->conversation_only_owner_modify_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3608
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 3609
    return-void

    .line 3606
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 3599
    return-void
.end method
