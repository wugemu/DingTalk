.class final Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;
.super Ljava/lang/Object;
.source "ManagerRoleGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .line 103
    .local v0, "managerRoleObject":Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;Z)Z

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/sub_manager_role_edit.html"

    new-instance v3, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 113
    .end local v0    # "managerRoleObject":Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    :cond_0
    return-void
.end method
