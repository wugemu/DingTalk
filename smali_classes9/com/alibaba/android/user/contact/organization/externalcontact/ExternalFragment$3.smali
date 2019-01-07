.class final Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;
.super Ljava/lang/Object;
.source "ExternalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;->a:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;->a:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->d(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;->a:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->d(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment$3;->a:Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;->c(Lcom/alibaba/android/user/contact/organization/externalcontact/ExternalFragment;)V

    .line 150
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
