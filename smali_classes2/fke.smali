.class public final Lfke;
.super Lfin;
.source "OrgContactNewAdapter.java"


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

.field g:J

.field private j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
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
.method public constructor <init>(Landroid/app/Activity;IJ)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I
    .param p3, "orgId"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lfin;-><init>(Landroid/app/Activity;I)V

    .line 50
    instance-of v0, p1, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    const-class v1, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iput-object v0, p0, Lfke;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 52
    check-cast p1, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->a(Ljava/lang/Class;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iput-object v0, p0, Lfke;->k:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 54
    :cond_0
    iput-wide p3, p0, Lfke;->g:J

    .line 55
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 63
    iget-object v3, p0, Lfke;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 64
    .local v0, "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 65
    .local v1, "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->LABEL:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_0

    .line 66
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LABEL:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    move-object v2, v1

    .line 111
    .end local v1    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .local v2, "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    :goto_0
    return-object v2

    .line 69
    .end local v2    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .restart local v1    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    :cond_0
    iget v3, p0, Lfke;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 70
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_2

    .line 71
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    :cond_1
    :goto_1
    move-object v2, v1

    .line 111
    .end local v1    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .restart local v2    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    goto :goto_0

    .line 73
    .end local v2    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .restart local v1    # "type":Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    :cond_2
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 75
    :cond_3
    iget v3, p0, Lfke;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 76
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_4

    .line 77
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 79
    :cond_4
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 81
    :cond_5
    iget v3, p0, Lfke;->b:I

    if-nez v3, :cond_8

    .line 82
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_6

    .line 83
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 84
    :cond_6
    iget-boolean v3, p0, Lfke;->f:Z

    if-eqz v3, :cond_7

    .line 85
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 87
    :cond_7
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 89
    :cond_8
    iget v3, p0, Lfke;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 90
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_9

    .line 91
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 93
    :cond_9
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 95
    :cond_a
    iget v3, p0, Lfke;->b:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 96
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_b

    .line 97
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 98
    :cond_b
    iget-boolean v3, p0, Lfke;->f:Z

    if-eqz v3, :cond_c

    .line 99
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 101
    :cond_c
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 103
    :cond_d
    iget v3, p0, Lfke;->b:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 104
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_e

    .line 105
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1

    .line 107
    :cond_e
    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_1
.end method
