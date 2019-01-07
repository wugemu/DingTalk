.class final Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;
.super Ljava/lang/Object;
.source "SearchCustomerFragment.java"

# interfaces
.implements Lfmc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfmc",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .line 1124
    if-eqz p1, :cond_0

    .line 1127
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget-object v1, Lezh;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    const-string/jumbo v1, "&corpId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->b(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1129
    const-string/jumbo v1, "&staffId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->c(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1130
    const-string/jumbo v1, "&customId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1131
    const-string/jumbo v1, "&appId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->d(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1132
    const-string/jumbo v1, "&dd_nav_bgcolor=FF38adff"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1133
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;->a:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
