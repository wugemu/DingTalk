.class public final Lcwa;
.super Lcqr;
.source "GroupOrgSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcwa$a;
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
.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 1039
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
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-instance v1, Lcwa$a;

    invoke-direct {v1, p0}, Lcwa$a;-><init>(Lcwa;)V

    .line 47
    .local v1, "viewHolder":Lcwa$a;
    iget-object v2, p0, Lcwa;->b:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lctk$g;->item_group_org_select:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    sget v2, Lctk$f;->img_select:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcwa$a;->b:Landroid/widget/ImageView;

    .line 49
    sget v2, Lctk$f;->tv_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcwa$a;->a:Landroid/widget/TextView;

    .line 50
    sget v2, Lctk$f;->icon_select:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcwa$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    iget-object v2, p0, Lcwa;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 57
    .local v0, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v0, :cond_0

    .line 58
    iget-object v2, v1, Lcwa$a;->a:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-boolean v2, p0, Lcwa;->e:Z

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, v1, Lcwa$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 61
    iget-object v2, v1, Lcwa$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :cond_0
    :goto_1
    return-object p2

    .line 53
    .end local v0    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    .end local v1    # "viewHolder":Lcwa$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcwa$a;

    .restart local v1    # "viewHolder":Lcwa$a;
    goto :goto_0

    .line 63
    .restart local v0    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_2
    iget-object v2, v1, Lcwa$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v5, v1, Lcwa$a;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    if-nez v2, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    iget-wide v8, p0, Lcwa;->d:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_4

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method
