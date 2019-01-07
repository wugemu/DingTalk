.class public final Letn;
.super Lete;
.source "ExternalContactOrgSearchViewHolder.java"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    sget v0, Lemt$e;->tv_org_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letn;->e:Landroid/widget/TextView;

    .line 45
    sget v0, Lemt$e;->tv_org_des:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letn;->f:Landroid/widget/TextView;

    .line 46
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letn;->b:Landroid/view/View;

    .line 47
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    instance-of v2, p1, Lcom/alibaba/android/search/model/ExternalContactOrgModel;

    if-nez v2, :cond_0

    .line 65
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 55
    check-cast v1, Lcom/alibaba/android/search/model/ExternalContactOrgModel;

    .line 57
    .local v1, "tempModel":Lcom/alibaba/android/search/model/ExternalContactOrgModel;
    iget-object v2, p0, Letn;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->getOrgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->dt_search_external_contact_org_des_at3:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 60
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->getExternalMemberCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->getExternalItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 62
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/ExternalContactOrgModel;->getExternalLastModify()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 58
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "desString":Ljava/lang/String;
    iget-object v2, p0, Letn;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
