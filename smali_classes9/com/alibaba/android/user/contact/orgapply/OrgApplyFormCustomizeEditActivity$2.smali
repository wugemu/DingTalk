.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizeEditActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;Z)Z

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Landroid/view/MenuItem;Z)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setChecked(Z)V

    .line 118
    :cond_0
    return-void
.end method
