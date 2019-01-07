.class final Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;
.super Ljava/lang/Object;
.source "ContactSearchFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/ContactSearchFragment;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 199
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lcom/alibaba/android/search/fragment/ContactSearchFragment;Z)Z

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->t()V

    .line 1211
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    sget v1, Lemt$g;->search_user_not_exist_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 1214
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/profile.html"

    new-instance v2, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2$1;-><init>(Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 234
    const-string/jumbo v1, "searchMobileOrDingtalkIDContacts"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "faild code:"

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lcom/alibaba/android/search/fragment/ContactSearchFragment;Z)Z

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 242
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->t()V

    .line 244
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lemt$g;->search_user_not_exist_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    sget v2, Lemt$g;->search_user_format_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "reason":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 248
    sget v1, Lemt$g;->sure:I

    new-instance v2, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2$2;-><init>(Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 229
    return-void
.end method
