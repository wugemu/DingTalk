.class public final Lfjt;
.super Lfin;
.source "ManageOrgMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfin",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lfin;-><init>(Landroid/app/Activity;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 41
    iget-object v1, p0, Lfjt;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 42
    .local v0, "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v1, v2, :cond_0

    .line 43
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDIT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 45
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0
.end method
