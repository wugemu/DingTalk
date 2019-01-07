.class final Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;
.super Ljava/lang/Object;
.source "SelectorDepartmentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

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
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lfgj;

    move-result-object v1

    invoke-virtual {v1}, Lfgj;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lfgj;

    move-result-object v1

    invoke-virtual {v1, p3}, Lfgj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 128
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lfgj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfgj;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Ljava/util/List;Z)V

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->d(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Ljava/util/List;)V

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->e(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    .line 135
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_0
    return-void
.end method
