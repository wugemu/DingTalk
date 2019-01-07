.class final Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$13;
.super Ljava/lang/Object;
.source "OrgContactNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$13;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

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
    .line 591
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "contact_dept_invite_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 595
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$13;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->d(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V

    .line 596
    return-void
.end method
