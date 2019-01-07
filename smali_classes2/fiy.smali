.class public final Lfiy;
.super Lfin;
.source "CrmContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfin",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lfin;-><init>(Landroid/app/Activity;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 37
    iget v0, p0, Lfiy;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->CRM:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_CRM_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0
.end method
