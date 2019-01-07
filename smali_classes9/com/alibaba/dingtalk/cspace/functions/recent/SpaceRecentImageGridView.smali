.class public Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;
.super Landroid/widget/GridView;
.source "SpaceRecentImageGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;
    }
.end annotation


# static fields
.field public static d:I


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView$RecentImageGridAdapter;

.field public b:I

.field public c:I

.field public e:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field public f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x40400000    # 3.0f

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->b:I

    .line 43
    iput v6, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->c:I

    .line 44
    iput v6, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->g:I

    .line 47
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->f:I

    .line 59
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->b:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setNumColumns(I)V

    .line 60
    invoke-static {p1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->c:I

    .line 61
    invoke-static {p1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->g:I

    .line 62
    sget v4, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->d:I

    if-gtz v4, :cond_0

    .line 63
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    .line 64
    .local v3, "screenWdith":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lfzs$d;->cspace_recent_item_marginLeft:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 66
    .local v1, "parentMarginLeft":I
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->b:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->g:I

    mul-int/2addr v4, v5

    sub-int v4, v3, v4

    mul-int/lit8 v5, v1, 0x2

    sub-int v0, v4, v5

    .line 67
    .local v0, "factWidth":I
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->b:I

    div-int v4, v0, v4

    sput v4, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->d:I

    .line 69
    .end local v0    # "factWidth":I
    .end local v1    # "parentMarginLeft":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "screenWdith":I
    :cond_0
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->c:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setVerticalSpacing(I)V

    .line 70
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->g:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setHorizontalSpacing(I)V

    .line 71
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->setStretchMode(I)V

    .line 72
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentImageGridView;->d:I

    return v0
.end method
