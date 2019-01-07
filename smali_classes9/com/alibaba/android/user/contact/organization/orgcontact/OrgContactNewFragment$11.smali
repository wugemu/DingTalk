.class final Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;
.super Ljava/lang/Object;
.source "OrgContactNewFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
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
        "Lcfi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 433
    check-cast p1, Lcfi;

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->d()V

    .line 1437
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v0, v1, v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;ZZ)V

    .line 1440
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcfi;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcfi;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1443
    :cond_1
    sget v0, Lezg$l;->add_2_group_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->d()V

    .line 455
    const-string/jumbo v0, "12115"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$11;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    sget v3, Lezg$l;->dt_common_i_know:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 450
    return-void
.end method
