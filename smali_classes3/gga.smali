.class public final Lgga;
.super Landroid/widget/LinearLayout;
.source "SpaceRecentImageLayoutView.java"


# static fields
.field private static f:I


# instance fields
.field public final a:I

.field public b:Z

.field public c:I

.field public d:Landroid/view/View$OnClickListener;

.field public e:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    sput v0, Lgga;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v5, p0, Lgga;->b:Z

    .line 37
    iput v5, p0, Lgga;->c:I

    .line 38
    const/4 v4, 0x0

    iput-object v4, p0, Lgga;->g:Ljava/lang/String;

    .line 40
    iput v5, p0, Lgga;->e:I

    .line 44
    invoke-virtual {p0, v5}, Lgga;->setOrientation(I)V

    .line 45
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lgga;->a:I

    .line 46
    sget v4, Lgga;->f:I

    if-gtz v4, :cond_0

    .line 47
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    .line 48
    .local v3, "screenWdith":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 49
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lfzs$d;->cspace_recent_item_marginLeft:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 50
    .local v1, "parentMarginLeft":I
    iget v4, p0, Lgga;->a:I

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v3, v4

    mul-int/lit8 v5, v1, 0x2

    sub-int v0, v4, v5

    .line 51
    .local v0, "factWidth":I
    div-int/lit8 v4, v0, 0x4

    sput v4, Lgga;->f:I

    .line 53
    .end local v0    # "factWidth":I
    .end local v1    # "parentMarginLeft":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "screenWdith":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILandroid/widget/AbsListView;)V
    .locals 7
    .param p1, "fromIndex"    # I
    .param p2, "listView"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v6, 0x8

    .line 92
    invoke-virtual {p0}, Lgga;->getChildCount()I

    move-result v0

    .line 93
    .local v0, "count":I
    if-gt v0, p1, :cond_1

    .line 107
    :cond_0
    return-void

    .line 96
    :cond_1
    move v2, p1

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0, v2}, Lgga;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lgfz;

    .line 2108
    .local v1, "frameView":Lgfz;
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v3

    .line 2109
    if-eqz v3, :cond_3

    .line 2119
    iget-object v4, v3, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2109
    if-eqz v4, :cond_3

    .line 3119
    iget-object v3, v3, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2114
    :goto_1
    iget-object v4, v1, Lgfz;->f:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, p2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 100
    invoke-virtual {v1}, Lgfz;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 101
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lgfz;->setVisibility(I)V

    .line 96
    .end local v1    # "frameView":Lgfz;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2112
    .restart local v1    # "frameView":Lgfz;
    :cond_3
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "frameView":Lgfz;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;ILcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .param p4, "listView"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    iput-object p1, p0, Lgga;->g:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lgga;->getChildCount()I

    move-result v1

    .line 59
    .local v1, "count":I
    invoke-virtual {p0}, Lgga;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    if-gt v1, p2, :cond_4

    .line 62
    new-instance v2, Lgfz;

    sget v4, Lgga;->f:I

    sget v5, Lgga;->f:I

    invoke-direct {v2, v0, v4, v5}, Lgfz;-><init>(Landroid/content/Context;II)V

    .line 63
    .local v2, "frameLayout":Lgfz;
    iget-object v4, p0, Lgga;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lgfz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lgga;->f:I

    sget v5, Lgga;->f:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 66
    iget v4, p0, Lgga;->a:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 68
    :cond_0
    invoke-virtual {p0, v2, p2, v3}, Lgga;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v4, p0, Lgga;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, p3, p4}, Lgfz;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V

    .line 73
    iput p2, v2, Lgfz;->a:I

    .line 74
    iget v4, p0, Lgga;->e:I

    iput v4, v2, Lgfz;->b:I

    .line 75
    iget-boolean v4, p0, Lgga;->b:Z

    iput-boolean v4, v2, Lgfz;->c:Z

    .line 78
    iget-boolean v4, p0, Lgga;->b:Z

    if-eqz v4, :cond_6

    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    iget v4, p0, Lgga;->c:I

    if-lez v4, :cond_6

    .line 79
    iget v4, p0, Lgga;->c:I

    .line 1122
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    if-nez v5, :cond_1

    if-lez v4, :cond_1

    .line 1123
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Lgfz;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    .line 1124
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1125
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1126
    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1127
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1128
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1129
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    iget v6, v2, Lgfz;->d:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1130
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    iget v6, v2, Lgfz;->e:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 1131
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1132
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    const-string/jumbo v6, "itv"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1133
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v2, Lgfz;->d:I

    iget v7, v2, Lgfz;->e:I

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1134
    iget-object v6, v2, Lgfz;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Lgfz;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    :cond_1
    if-lez v4, :cond_5

    .line 1137
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 1138
    iget-object v5, v2, Lgfz;->g:Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "+"

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    invoke-static {v6}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v4, v2, Lgfz;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1140
    iget-object v4, v2, Lgfz;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lgfz;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v2, v8}, Lgfz;->setVisibility(I)V

    .line 86
    :cond_3
    return-void

    .line 70
    .end local v2    # "frameLayout":Lgfz;
    :cond_4
    invoke-virtual {p0, p2}, Lgga;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lgfz;

    .restart local v2    # "frameLayout":Lgfz;
    goto/16 :goto_0

    .line 1144
    :cond_5
    invoke-virtual {v2}, Lgfz;->a()V

    goto :goto_1

    .line 81
    :cond_6
    invoke-virtual {v2}, Lgfz;->a()V

    goto :goto_1
.end method
