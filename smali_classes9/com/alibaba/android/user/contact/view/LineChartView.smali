.class public Lcom/alibaba/android/user/contact/view/LineChartView;
.super Landroid/view/View;
.source "LineChartView.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private final a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:[I

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->a:J

    .line 52
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    .line 54
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    .line 56
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    .line 58
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    .line 76
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    .line 78
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    .line 84
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    .line 98
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 102
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->a()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->a:J

    .line 52
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    .line 54
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    .line 56
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    .line 58
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    .line 76
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    .line 78
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    .line 84
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    .line 98
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 107
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->a()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->a:J

    .line 52
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    .line 54
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    .line 56
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    .line 58
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    .line 76
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    .line 78
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    .line 84
    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    .line 98
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 112
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->a()V

    .line 113
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x432f0000    # 175.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->g:I

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->b:I

    .line 133
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->b:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    .line 134
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 135
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->b()V

    .line 136
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    if-ge v1, v6, :cond_3

    .line 193
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    iget v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    mul-int/2addr v7, v1

    add-int v3, v6, v7

    .line 194
    .local v3, "startX":I
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    .line 195
    .local v4, "startY":I
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    iget v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    sub-int v5, v6, v7

    .line 197
    .local v5, "stopY":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 198
    .local v2, "path":Landroid/graphics/Path;
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 200
    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    if-ne v6, v1, :cond_1

    .line 202
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 214
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-object v6, v6, Lcom/alibaba/android/user/model/OrgTrendItemObject;->dayTime:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-object v0, v6, Lcom/alibaba/android/user/model/OrgTrendItemObject;->dayTime:Ljava/lang/String;

    .line 216
    .local v0, "dayTime":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x7

    sub-int v6, v3, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->g:I

    add-int/2addr v7, v4

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    .end local v0    # "dayTime":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 205
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->y:I

    if-nez v6, :cond_2

    .line 207
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 209
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    iget v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->y:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 220
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "startX":I
    .end local v4    # "startY":I
    .end local v5    # "stopY":I
    :cond_3
    return-void
.end method

.method private a(I)Z
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 361
    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    .line 362
    .local v0, "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    if-nez v0, :cond_1

    .line 379
    .end local v0    # "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    :cond_0
    :goto_0
    return v4

    .line 365
    .restart local v0    # "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    :cond_1
    iget-wide v2, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    .line 366
    .local v2, "scoreTotal":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 369
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    int-to-long v4, v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 370
    .local v1, "y":I
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    if-nez v4, :cond_2

    .line 371
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 372
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    .line 377
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 374
    :cond_2
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    mul-int/2addr v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    .line 375
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    goto :goto_1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    .line 142
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->b:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    .line 143
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->z:I

    if-lez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 261
    .local v8, "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->o:Landroid/graphics/Bitmap;

    .line 264
    .end local v8    # "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->p:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->A:I

    if-lez v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->A:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 266
    .restart local v8    # "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->p:Landroid/graphics/Bitmap;

    .line 269
    .end local v8    # "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 270
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    if-ge v6, v0, :cond_4

    .line 271
    invoke-direct {p0, v6}, Lcom/alibaba/android/user/contact/view/LineChartView;->a(I)Z

    move-result v7

    .line 272
    .local v7, "result":Z
    if-eqz v7, :cond_3

    .line 273
    if-lez v6, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    if-gt v0, v1, :cond_2

    .line 274
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    int-to-float v1, v0

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    int-to-float v2, v0

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    :cond_2
    if-lez v6, :cond_3

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    if-gt v0, v1, :cond_3

    .line 277
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 278
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    .line 270
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 282
    .end local v7    # "result":Z
    :cond_4
    return-void
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->x:I

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 164
    .local v0, "effects":Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 167
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->y:I

    if-nez v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$f;->uidic_global_text_size_s12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->k:Landroid/graphics/Paint;

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$f;->uidic_global_text_size_s12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->m:Landroid/graphics/Paint;

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->n:[I

    if-nez v1, :cond_0

    .line 184
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->line_area_down_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    iput-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->n:[I

    .line 188
    .end local v0    # "effects":Landroid/graphics/PathEffect;
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->x:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 172
    .restart local v0    # "effects":Landroid/graphics/PathEffect;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->y:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 163
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x41480000    # 12.5f

    .line 288
    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->o:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->z:I

    if-lez v3, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->z:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 290
    .local v2, "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->o:Landroid/graphics/Bitmap;

    .line 293
    .end local v2    # "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->p:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->A:I

    if-lez v3, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->A:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 295
    .restart local v2    # "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->p:Landroid/graphics/Bitmap;

    .line 298
    .end local v2    # "selectedBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iput v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    if-ge v0, v3, :cond_f

    .line 300
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/view/LineChartView;->a(I)Z

    move-result v1

    .line 301
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 302
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    if-gt v3, v5, :cond_2

    .line 303
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    if-ne v3, v0, :cond_c

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->o:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_c

    .line 304
    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->o:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    :goto_1
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    sub-int/2addr v3, v6

    int-to-float v6, v3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-nez v3, :cond_5

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    :goto_2
    iget v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 306
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getScoreShowBitmap()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v5

    .line 1322
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-nez v3, :cond_6

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41680000    # 14.5f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    sub-int v6, v3, v6

    .line 1323
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-nez v3, :cond_7

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v3, v7

    .line 1325
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v7, v6, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1326
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1327
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1329
    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    .line 1330
    if-eqz v3, :cond_2

    .line 1331
    iget-wide v6, v3, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1333
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 1334
    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 1335
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40200000    # 2.5f

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 1341
    :goto_5
    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-nez v5, :cond_a

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    :goto_6
    sub-int/2addr v5, v3

    .line 1342
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-nez v3, :cond_b

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    :goto_7
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v3, v7

    .line 1343
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1344
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->k:Landroid/graphics/Paint;

    .line 1343
    invoke-virtual {p1, v6, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    :cond_2
    :goto_8
    if-lez v0, :cond_3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    if-gt v3, v5, :cond_3

    .line 313
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    iput v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 314
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    iput v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    .line 299
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 304
    :cond_4
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    goto/16 :goto_1

    :cond_5
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    goto/16 :goto_2

    .line 1322
    :cond_6
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    goto/16 :goto_3

    .line 1323
    :cond_7
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    goto/16 :goto_4

    .line 1336
    :cond_8
    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    .line 1337
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40f00000    # 7.5f

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    goto :goto_5

    .line 1338
    :cond_9
    const/4 v5, 0x3

    if-ne v3, v5, :cond_10

    .line 1339
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    goto :goto_5

    .line 1341
    :cond_a
    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    goto :goto_6

    .line 1342
    :cond_b
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    goto :goto_7

    .line 307
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->p:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 308
    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->p:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-nez v3, :cond_d

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    :goto_9
    iget v6, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    sub-int/2addr v3, v6

    int-to-float v6, v3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-nez v3, :cond_e

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    :goto_a
    iget v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->w:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v7, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_d
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    goto :goto_9

    :cond_e
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    goto :goto_a

    .line 318
    .end local v1    # "result":Z
    :cond_f
    return-void

    .restart local v1    # "result":Z
    :cond_10
    move v3, v4

    goto/16 :goto_5
.end method

.method private getScoreShowBitmap()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->line_show_score:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 350
    .local v0, "selectedBitmap":Landroid/graphics/drawable/NinePatchDrawable;
    return-object v0
.end method


# virtual methods
.method public getXPoint()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    return v0
.end method

.method public getXScale()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 393
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 394
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 395
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->c()V

    .line 2224
    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 2225
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    move v2, v0

    .line 2227
    :goto_0
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    if-ge v0, v3, :cond_5

    .line 2228
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/view/LineChartView;->a(I)Z

    move-result v3

    .line 2229
    if-eqz v3, :cond_3

    .line 2230
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->B:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->B:I

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-le v3, v4, :cond_1

    .line 2231
    :cond_0
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    :goto_1
    iput v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->B:I

    .line 2233
    :cond_1
    if-nez v2, :cond_2

    .line 2234
    iget v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2236
    :cond_2
    const/4 v2, 0x1

    .line 2237
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    int-to-float v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2238
    if-lez v0, :cond_3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    if-lez v3, :cond_3

    .line 2239
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    iput v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    .line 2240
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->v:I

    iput v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    .line 2227
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2231
    :cond_4
    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->t:I

    goto :goto_1

    .line 2244
    :cond_5
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    int-to-float v0, v0

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->u:I

    int-to-float v3, v3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2245
    iget v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->s:I

    int-to-float v0, v0

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    int-to-float v3, v3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2246
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 2247
    if-eqz v2, :cond_6

    .line 2248
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->B:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->B:I

    add-int/2addr v3, v4

    int-to-float v4, v3

    iget-object v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->n:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 2249
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->m:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 397
    :cond_6
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/view/LineChartView;->a(Landroid/graphics/Canvas;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/view/LineChartView;->b(Landroid/graphics/Canvas;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/view/LineChartView;->c(Landroid/graphics/Canvas;)V

    .line 404
    :goto_2
    return-void

    .line 401
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->c()V

    .line 402
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/view/LineChartView;->a(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 385
    .local v0, "height":I
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 387
    iget v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    sub-int v1, v0, v2

    .line 388
    .local v1, "margin":I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 384
    .end local v0    # "height":I
    .end local v1    # "margin":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 409
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 411
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 413
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    if-ge v0, v4, :cond_0

    .line 414
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    mul-int/2addr v5, v0

    add-int v1, v4, v5

    .line 415
    .local v1, "startX":I
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 417
    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 418
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->invalidate()V

    goto :goto_0

    .line 413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "i":I
    .end local v1    # "startX":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->r:I

    if-ge v0, v4, :cond_0

    .line 427
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->d:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    mul-int/2addr v5, v0

    add-int v1, v4, v5

    .line 428
    .restart local v1    # "startX":I
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->c:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    :cond_2
    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->e:I

    iget v5, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->f:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 430
    :cond_3
    iput v0, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 431
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->invalidate()V

    goto :goto_0

    .line 426
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setAreaColors([I)V
    .locals 0
    .param p1, "areaColors"    # [I

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->n:[I

    .line 464
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I

    .prologue
    .line 443
    iput p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->x:I

    .line 444
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendItemObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgTrendItemObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->h:Ljava/util/List;

    .line 117
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "mScreenWidth"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->q:I

    .line 121
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/LineChartView;->b()V

    .line 122
    return-void
.end method

.method public setSelectDrawable(I)V
    .locals 0
    .param p1, "selectDrawable"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->z:I

    .line 468
    return-void
.end method

.method public setTouchPosition(I)V
    .locals 0
    .param p1, "mTouchPosition"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->C:I

    .line 460
    return-void
.end method

.method public setUnselectDrawable(I)V
    .locals 0
    .param p1, "unselectDrawable"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->A:I

    .line 472
    return-void
.end method

.method public setXFontColor(I)V
    .locals 0
    .param p1, "xFontColor"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/alibaba/android/user/contact/view/LineChartView;->y:I

    .line 448
    return-void
.end method
