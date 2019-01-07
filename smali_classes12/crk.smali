.class public final Lcrk;
.super Landroid/widget/BaseExpandableListAdapter;
.source "WrapperExpandableListAdapter.java"


# instance fields
.field protected final a:Landroid/widget/BaseExpandableListAdapter;

.field protected final b:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcrk;->b:Landroid/util/SparseBooleanArray;

    .line 17
    iput-object p0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseExpandableListAdapter;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcrk;->b:Landroid/util/SparseBooleanArray;

    .line 21
    iput-object p1, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v1, p0, Lcrk;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    .local v0, "expanded":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChildType(II)I

    move-result v0

    return v0
.end method

.method public final getChildTypeCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getChildTypeCount()I

    move-result v0

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/BaseExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public final getCombinedChildId(JJ)J
    .locals 3
    .param p1, "groupId"    # J
    .param p3, "childId"    # J

    .prologue
    .line 148
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCombinedGroupId(J)J
    .locals 3
    .param p1, "groupId"    # J

    .prologue
    .line 143
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGroupType(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupType(I)I

    move-result v0

    return v0
.end method

.method public final getGroupTypeCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupTypeCount()I

    move-result v0

    return v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    if-eqz p3, :cond_1

    .line 96
    sget v2, Lcig$f;->fgelv_tag_changed_visibility:I

    invoke-virtual {p3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 98
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 99
    .local v0, "changedVisibility":Z
    if-eqz v0, :cond_0

    .line 100
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .end local v0    # "changedVisibility":Z
    :cond_0
    sget v2, Lcig$f;->fgelv_tag_changed_visibility:I

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 105
    :cond_1
    iget-object v2, p0, Lcrk;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 106
    iget-object v2, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->isChildSelectable(II)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onGroupCollapsed(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcrk;->b:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 138
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 139
    return-void
.end method

.method public final onGroupExpanded(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcrk;->b:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 132
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 133
    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcrk;->a:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 36
    :cond_0
    return-void
.end method
