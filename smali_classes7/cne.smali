.class public abstract Lcne;
.super Ljava/lang/Object;
.source "ListViewScrollDiffListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 15
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "diff":I
    if-eqz p1, :cond_3

    .line 29
    if-lez p3, :cond_c

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "newFirstItem":Landroid/view/View;
    if-eqz v8, :cond_c

    add-int/lit8 v12, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .local v9, "newLastItem":Landroid/view/View;
    if-eqz v9, :cond_c

    .line 31
    iget-object v12, p0, Lcne;->b:Landroid/view/View;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcne;->e:Landroid/view/View;

    if-eqz v12, :cond_2

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    .line 35
    .local v7, "listTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v13

    sub-int v6, v12, v13

    .line 36
    .local v6, "listBottom":I
    const/4 v11, 0x0

    .line 37
    .local v11, "oldValue":I
    const/4 v10, 0x0

    .line 40
    .local v10, "newValue":I
    iget v12, p0, Lcne;->a:I

    move/from16 v0, p2

    if-lt v12, v0, :cond_4

    iget v12, p0, Lcne;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v13

    if-gt v12, v13, :cond_4

    iget v12, p0, Lcne;->a:I

    sub-int v12, v12, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lcne;->b:Landroid/view/View;

    if-ne v12, v13, :cond_4

    const/4 v2, 0x1

    .line 41
    .local v2, "isFirstValid":Z
    :goto_0
    iget v12, p0, Lcne;->d:I

    move/from16 v0, p2

    if-lt v12, v0, :cond_5

    iget v12, p0, Lcne;->d:I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v13

    if-gt v12, v13, :cond_5

    iget v12, p0, Lcne;->d:I

    sub-int v12, v12, p2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lcne;->e:Landroid/view/View;

    if-ne v12, v13, :cond_5

    const/4 v3, 0x1

    .line 43
    .local v3, "isLastValid":Z
    :goto_1
    if-nez p2, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    if-lt v12, v7, :cond_6

    const/4 v5, 0x1

    .line 45
    .local v5, "isOnListTop":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v12

    add-int/lit8 v13, p4, -0x1

    if-ne v12, v13, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    if-gt v12, v6, :cond_7

    const/4 v4, 0x1

    .line 47
    .local v4, "isOnListBottom":Z
    :goto_3
    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    .line 49
    iget v12, p0, Lcne;->c:I

    iget-object v13, p0, Lcne;->b:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v11, v12, v13

    .line 50
    if-le v11, v7, :cond_0

    .line 51
    move v11, v7

    .line 53
    :cond_0
    move v10, v7

    .line 69
    :cond_1
    :goto_4
    sub-int v1, v10, v11

    .line 71
    .end local v2    # "isFirstValid":Z
    .end local v3    # "isLastValid":Z
    .end local v4    # "isOnListBottom":Z
    .end local v5    # "isOnListTop":Z
    .end local v6    # "listBottom":I
    .end local v7    # "listTop":I
    .end local v10    # "newValue":I
    .end local v11    # "oldValue":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v12

    iput v12, p0, Lcne;->a:I

    .line 72
    iput-object v8, p0, Lcne;->b:Landroid/view/View;

    .line 73
    iget-object v12, p0, Lcne;->b:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, p0, Lcne;->c:I

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v12

    iput v12, p0, Lcne;->d:I

    .line 75
    iput-object v9, p0, Lcne;->e:Landroid/view/View;

    .line 76
    iget-object v12, p0, Lcne;->e:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iput v12, p0, Lcne;->f:I

    .line 86
    .end local v8    # "newFirstItem":Landroid/view/View;
    .end local v9    # "newLastItem":Landroid/view/View;
    :cond_3
    :goto_5
    invoke-virtual {p0, v1}, Lcne;->a(I)V

    .line 87
    return-void

    .line 40
    .restart local v6    # "listBottom":I
    .restart local v7    # "listTop":I
    .restart local v8    # "newFirstItem":Landroid/view/View;
    .restart local v9    # "newLastItem":Landroid/view/View;
    .restart local v10    # "newValue":I
    .restart local v11    # "oldValue":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 41
    .restart local v2    # "isFirstValid":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 43
    .restart local v3    # "isLastValid":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 45
    .restart local v5    # "isOnListTop":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 55
    .restart local v4    # "isOnListBottom":Z
    :cond_8
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 57
    iget v12, p0, Lcne;->f:I

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v13

    iget-object v14, p0, Lcne;->e:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int/2addr v13, v14

    add-int v11, v12, v13

    .line 58
    if-ge v11, v6, :cond_9

    .line 59
    move v11, v6

    .line 61
    :cond_9
    move v10, v6

    goto :goto_4

    .line 62
    :cond_a
    if-eqz v2, :cond_b

    .line 63
    iget v11, p0, Lcne;->c:I

    .line 64
    iget-object v12, p0, Lcne;->b:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_4

    .line 65
    :cond_b
    if-eqz v3, :cond_1

    .line 66
    iget v11, p0, Lcne;->f:I

    .line 67
    iget-object v12, p0, Lcne;->e:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_4

    .line 78
    .end local v2    # "isFirstValid":Z
    .end local v3    # "isLastValid":Z
    .end local v4    # "isOnListBottom":Z
    .end local v5    # "isOnListTop":Z
    .end local v6    # "listBottom":I
    .end local v7    # "listTop":I
    .end local v8    # "newFirstItem":Landroid/view/View;
    .end local v9    # "newLastItem":Landroid/view/View;
    .end local v10    # "newValue":I
    .end local v11    # "oldValue":I
    :cond_c
    const/4 v12, 0x0

    iput v12, p0, Lcne;->a:I

    .line 79
    const/4 v12, 0x0

    iput-object v12, p0, Lcne;->b:Landroid/view/View;

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v12

    iput v12, p0, Lcne;->c:I

    .line 81
    const/4 v12, 0x0

    iput v12, p0, Lcne;->d:I

    .line 82
    const/4 v12, 0x0

    iput-object v12, p0, Lcne;->e:Landroid/view/View;

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getBottom()I

    move-result v12

    iput v12, p0, Lcne;->f:I

    goto :goto_5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 95
    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 97
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcne;->a:I

    .line 99
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcne;->b:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcne;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcne;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcne;->c:I

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iput v1, p0, Lcne;->d:I

    .line 104
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcne;->e:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcne;->e:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcne;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcne;->f:I

    .line 119
    .end local v0    # "count":I
    :cond_1
    :goto_0
    return-void

    .line 109
    .restart local v0    # "count":I
    :cond_2
    iput v2, p0, Lcne;->a:I

    .line 110
    iput-object v3, p0, Lcne;->b:Landroid/view/View;

    .line 111
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcne;->c:I

    .line 112
    iput v2, p0, Lcne;->d:I

    .line 113
    iput-object v3, p0, Lcne;->e:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getBottom()I

    move-result v1

    iput v1, p0, Lcne;->f:I

    goto :goto_0
.end method
