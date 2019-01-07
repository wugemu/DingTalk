.class public final Lfka;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "LabelViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfka;->j:Landroid/widget/TextView;

    .line 41
    sget v0, Lezg$h;->divider_outer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfka;->k:Landroid/view/View;

    .line 42
    sget v0, Lezg$g;->ui_common_transparent_cell_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 24
    move-object v6, p1

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1065
    if-eqz v6, :cond_1

    .line 1068
    iget-object v0, p0, Lfka;->d:Lfin;

    iget-object v0, v0, Lfin;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lfka;->d:Lfin;

    const-string/jumbo v1, "OrgContactFragment"

    iput-object v1, v0, Lfin;->d:Ljava/lang/String;

    .line 1071
    :cond_0
    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfka;->d:Lfin;

    instance-of v0, v0, Lfke;

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lfka;->d:Lfin;

    check-cast v0, Lfke;

    .line 2058
    iget-wide v4, v0, Lfke;->g:J

    .line 1073
    iget-object v0, p0, Lfka;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v0, :cond_1

    .line 1074
    iget-object v1, p0, Lfka;->a:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v0, p0, Lfka;->d:Lfin;

    iget-object v2, v0, Lfin;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 24
    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 24
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3047
    if-eqz p1, :cond_0

    .line 3050
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->labelObject:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 3051
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3052
    iget-object v1, p0, Lfka;->j:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3056
    :goto_0
    iget-boolean v0, p0, Lfka;->g:Z

    if-eqz v0, :cond_2

    .line 3057
    iget-object v0, p0, Lfka;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    .line 3054
    :cond_1
    iget-object v0, p0, Lfka;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3059
    :cond_2
    iget-object v0, p0, Lfka;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lezg$j;->item_org_label:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    return-object v0
.end method
