.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "afterTextChanged, Editable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->m(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->l(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->m(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->l(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "beforeTextChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onTextChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", before "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a(Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->k(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    .line 347
    :cond_1
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
