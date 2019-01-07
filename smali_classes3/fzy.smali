.class public final Lfzy;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfzy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 36
    if-nez p2, :cond_1

    .line 37
    new-instance v2, Lfzy$a;

    invoke-direct {v2, p0}, Lfzy$a;-><init>(Lfzy;)V

    .line 38
    .local v2, "viewHolder":Lfzy$a;
    iget-object v3, p0, Lfzy;->m:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lfzs$g;->cspace_group_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    sget v3, Lfzs$f;->img_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lfzy$a;->a:Landroid/widget/ImageView;

    .line 41
    sget v3, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lfzy$a;->b:Landroid/widget/TextView;

    .line 42
    sget v3, Lfzs$f;->tv_time:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lfzy$a;->c:Landroid/widget/TextView;

    .line 43
    sget v3, Lfzs$f;->tv_capacity:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lfzy$a;->d:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v3, p0, Lfzy;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;

    .line 51
    .local v0, "groupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    if-eqz v0, :cond_4

    .line 52
    iget-object v3, v2, Lfzy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getModifiedTime()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, v2, Lfzy$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getModifiedTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    iget-object v3, p0, Lfzy;->a:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lfzy;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    iget-object v3, p0, Lfzy;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgic;

    .line 60
    .local v1, "updateInfo":Lgic;
    if-eqz v1, :cond_0

    .line 61
    iget-object v3, v2, Lfzy$a;->d:Landroid/widget/TextView;

    iget-object v4, v1, Lgic;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v1    # "updateInfo":Lgic;
    :cond_0
    :goto_2
    return-object p2

    .line 47
    .end local v0    # "groupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    .end local v2    # "viewHolder":Lfzy$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfzy$a;

    .restart local v2    # "viewHolder":Lfzy$a;
    goto :goto_0

    .line 56
    .restart local v0    # "groupModel":Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;
    :cond_2
    iget-object v3, v2, Lfzy$a;->c:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_3
    iget-object v3, v2, Lfzy$a;->d:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 68
    :cond_4
    iget-object v3, v2, Lfzy$a;->b:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
