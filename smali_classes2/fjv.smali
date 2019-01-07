.class public final Lfjv;
.super Ljava/lang/Object;
.source "CheckAllHandler.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    instance-of v0, p1, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    const-class v1, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iput-object v0, p0, Lfjv;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 45
    check-cast p1, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iput-object v0, p0, Lfjv;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ZI)V
    .locals 6
    .param p2, "isCheckAll"    # Z
    .param p3, "chooseMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;ZI)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 51
    .local p1, "mDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    iget-object v4, p0, Lfjv;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lfjv;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v4, :cond_6

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 54
    .local v2, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v2, :cond_2

    .line 58
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    :cond_0
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v4, v5, :cond_4

    if-eqz p3, :cond_1

    const/4 v4, 0x5

    if-ne p3, v4, :cond_4

    .line 63
    :cond_1
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 64
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz p2, :cond_3

    .line 65
    iget-object v4, p0, Lfjv;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 52
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .restart local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    iget-object v4, p0, Lfjv;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v4, v5, :cond_2

    .line 70
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 71
    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 72
    .local v3, "nodeIdentity":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p2, :cond_5

    .line 73
    iget-object v4, p0, Lfjv;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_5
    iget-object v4, p0, Lfjv;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v1    # "i":I
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v3    # "nodeIdentity":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_6
    return-void
.end method
