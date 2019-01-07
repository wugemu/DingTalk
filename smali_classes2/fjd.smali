.class public final Lfjd;
.super Lfin;
.source "CustomerFollowerAdapter.java"


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


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lfin;-><init>(Landroid/app/Activity;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 41
    iget-object v2, p0, Lfjd;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 42
    .local v0, "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 43
    .local v1, "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    iget v2, p0, Lfjd;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 44
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_1

    .line 45
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 68
    :cond_0
    :goto_0
    return-object v1

    .line 47
    :cond_1
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0

    .line 49
    :cond_2
    iget v2, p0, Lfjd;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 50
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_3

    .line 51
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0

    .line 53
    :cond_3
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0

    .line 55
    :cond_4
    iget v2, p0, Lfjd;->b:I

    if-nez v2, :cond_6

    .line 56
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_5

    .line 57
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0

    .line 59
    :cond_5
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0

    .line 61
    :cond_6
    iget v2, p0, Lfjd;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 62
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_7

    .line 63
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0

    .line 65
    :cond_7
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0
.end method
