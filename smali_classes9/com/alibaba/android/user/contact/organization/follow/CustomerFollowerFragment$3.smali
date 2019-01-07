.class final Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;
.super Ljava/lang/Object;
.source "CustomerFollowerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

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
    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->e(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->e(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment$3;->a:Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;->d(Lcom/alibaba/android/user/contact/organization/follow/CustomerFollowerFragment;)V

    .line 186
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
