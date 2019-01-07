.class final Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;
.super Ljava/lang/Object;
.source "DeptMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.choose.people.from.dept"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v3, "choose_user_identities"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v2, "activity_identify"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 149
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->finish()V

    .line 150
    return-void
.end method
