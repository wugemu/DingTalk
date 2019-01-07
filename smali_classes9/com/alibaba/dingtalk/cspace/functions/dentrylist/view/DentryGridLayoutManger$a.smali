.class public final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "DentryGridLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/GridLayoutManager;

.field private b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayoutManager;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V
    .locals 0
    .param p1, "layoutManager"    # Landroid/support/v7/widget/GridLayoutManager;
    .param p2, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->a:Landroid/support/v7/widget/GridLayoutManager;

    .line 64
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 65
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 72
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->a:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 98
    :cond_1
    :goto_0
    return v4

    .line 76
    :cond_2
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 77
    .local v4, "spanCount":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b()I

    move-result v6

    sub-int v2, p1, v6

    .line 82
    .local v2, "positionInBodyList":I
    if-ltz v2, :cond_3

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v2, v6, :cond_4

    :cond_3
    move v4, v5

    .line 83
    goto :goto_0

    .line 86
    :cond_4
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeh;

    .line 87
    .local v0, "currItem":Lgeh;
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryGridLayoutManger$a;->b:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeh;

    .line 88
    .local v1, "nextItem":Lgeh;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1026
    iget-object v6, v0, Lgeh;->b:Ljava/lang/String;

    .line 2026
    iget-object v7, v1, Lgeh;->b:Ljava/lang/String;

    .line 88
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v4, v5

    .line 89
    goto :goto_0

    .line 2034
    :cond_6
    iget v6, v0, Lgeh;->c:I

    .line 92
    add-int/lit8 v6, v6, 0x1

    rem-int v3, v6, v4

    .line 93
    .local v3, "positionInRow":I
    if-nez v3, :cond_7

    .line 94
    move v3, v4

    .line 97
    :cond_7
    sub-int v6, v4, v3

    add-int/lit8 v5, v6, 0x1

    .local v5, "spanSize":I
    move v4, v5

    .line 98
    goto :goto_0
.end method
