.class public final Lfgj;
.super Landroid/widget/BaseAdapter;
.source "DepartmentHlvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgj$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lfgj;->a:Landroid/app/Activity;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfgj;->b:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 6
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lfgj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 59
    .local v0, "nodeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 60
    iget-object v1, p0, Lfgj;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    .end local v0    # "nodeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_1
    invoke-virtual {p0}, Lfgj;->notifyDataSetChanged()V

    .line 66
    :cond_2
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lfgj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lfgj;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 86
    if-nez p2, :cond_1

    .line 87
    iget-object v2, p0, Lfgj;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->department_item_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v1, Lfgj$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfgj$a;-><init>(Lfgj;B)V

    .line 89
    .local v1, "viewHolder":Lfgj$a;
    sget v2, Lezg$h;->tv_depart_txt:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfgj$a;->a:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v2, p0, Lfgj;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 95
    .local v0, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, v1, Lfgj$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-object p2

    .line 92
    .end local v0    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v1    # "viewHolder":Lfgj$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfgj$a;

    .restart local v1    # "viewHolder":Lfgj$a;
    goto :goto_0
.end method
