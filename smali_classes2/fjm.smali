.class public final Lfjm;
.super Lfin;
.source "LocalContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfin",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseType"    # I
    .param p3, "source"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lfin;-><init>(Landroid/app/Activity;II)V

    .line 36
    iput-object v0, p0, Lfjm;->e:Ljava/util/HashMap;

    .line 38
    iput-object v0, p0, Lfjm;->f:Ljava/util/HashMap;

    .line 44
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
    .line 48
    iget v0, p0, Lfjm;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfjm;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lfjm;->b:I

    if-ne v0, v1, :cond_1

    .line 51
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 53
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    goto :goto_0
.end method

.method public final a(J)Lfrz;
    .locals 5
    .param p1, "uid"    # J

    .prologue
    const/4 v0, 0x0

    .line 62
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lfjm;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lfjm;->e:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrz;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
