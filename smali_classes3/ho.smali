.class public final Lho;
.super Lhi;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ListView;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lhi;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Lho;->f:Landroid/widget/ListView;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "deltaY"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lho;->f:Landroid/widget/ListView;

    .line 1036
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 1038
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1042
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1046
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1047
    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    .line 1052
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 10
    .param p1, "direction"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 48
    iget-object v6, p0, Lho;->f:Landroid/widget/ListView;

    .line 49
    .local v6, "target":Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 50
    .local v3, "itemCount":I
    if-nez v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v7

    .line 54
    :cond_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 55
    .local v0, "childCount":I
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 56
    .local v1, "firstPosition":I
    add-int v4, v1, v0

    .line 58
    .local v4, "lastPosition":I
    if-lez p1, :cond_3

    .line 60
    if-lt v4, v3, :cond_2

    .line 61
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 62
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 80
    .end local v5    # "lastView":Landroid/view/View;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 66
    :cond_3
    if-gez p1, :cond_0

    .line 68
    if-gtz v1, :cond_2

    .line 69
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "firstView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    if-ltz v8, :cond_2

    goto :goto_0
.end method
