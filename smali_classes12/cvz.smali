.class public final Lcvz;
.super Lcqr;
.source "GroupCooperativeOrgSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcvz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 1033
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 40
    new-instance v1, Lcvz$a;

    invoke-direct {v1, p0}, Lcvz$a;-><init>(Lcvz;)V

    .line 41
    .local v1, "viewHolder":Lcvz$a;
    iget-object v2, p0, Lcvz;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->item_group_cooperative_org_select:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 42
    sget v2, Lctk$f;->img_select:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcvz$a;->b:Landroid/widget/ImageView;

    .line 43
    sget v2, Lctk$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcvz$a;->a:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_0
    iget-object v2, p0, Lcvz;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 50
    .local v0, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v0, :cond_0

    .line 51
    iget-object v2, v1, Lcvz$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-boolean v2, p0, Lcvz;->d:Z

    if-eqz v2, :cond_3

    .line 53
    iget-object v3, v1, Lcvz$a;->b:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    if-eqz v2, :cond_2

    sget v2, Lctk$e;->checkbox_pressed:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :cond_0
    :goto_2
    return-object p2

    .line 46
    .end local v0    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    .end local v1    # "viewHolder":Lcvz$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcvz$a;

    .restart local v1    # "viewHolder":Lcvz$a;
    goto :goto_0

    .line 53
    .restart local v0    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_2
    sget v2, Lctk$e;->checkbox_normal:I

    goto :goto_1

    .line 55
    :cond_3
    iget-object v2, v1, Lcvz$a;->b:Landroid/widget/ImageView;

    sget v3, Lctk$e;->checkbox_unable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
