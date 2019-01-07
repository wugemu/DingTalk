.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$4;
.super Ljava/lang/Object;
.source "LocalContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$4;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

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
    .line 314
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$4;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->o()V

    .line 315
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_contact_setting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 316
    return-void
.end method
