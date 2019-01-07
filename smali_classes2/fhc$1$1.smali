.class final Lfhc$1$1;
.super Ljava/lang/Object;
.source "ContactSubDepartmentViewHolder.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhc$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhc$1;


# direct methods
.method constructor <init>(Lfhc$1;)V
    .locals 0
    .param p1, "this$1"    # Lfhc$1;

    .prologue
    .line 193
    iput-object p1, p0, Lfhc$1$1;->a:Lfhc$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 196
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 197
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    const-string/jumbo v1, "OrgContactFragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 198
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 199
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 200
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 201
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getOrgOperation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 202
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getAuthLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->k(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 204
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->canManage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->l(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 205
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->isRootDepartment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getUserRole()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 211
    :goto_0
    const-string/jumbo v1, "intent_key_contact_choose_request"

    .line 2053
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 211
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 212
    return-object p1

    .line 208
    :cond_0
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getDepartmentId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 209
    iget-object v1, p0, Lfhc$1$1;->a:Lfhc$1;

    iget-object v1, v1, Lfhc$1;->a:Lcom/alibaba/android/user/contact/homepage/DepartmentItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/DepartmentItem;->getNodeItem()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto :goto_0
.end method
