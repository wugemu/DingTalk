.class public Lcom/amap/api/mapcore/util/es;
.super Landroid/view/ViewGroup;
.source "MapOverlayViewGroup.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/es$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:Lcom/amap/api/mapcore/util/l;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/mapcore/util/eu;

.field private f:Lcom/amap/api/mapcore/util/er;

.field private g:Lcom/amap/api/mapcore/util/ep;

.field private h:Lcom/amap/api/mapcore/util/et;

.field private i:Lcom/amap/api/mapcore/util/eo;

.field private j:Lcom/amap/api/mapcore/util/eq;

.field private k:Lcom/amap/api/mapcore/util/ev;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/amap/api/mapcore/util/cr;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

.field private s:Z

.field private t:Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/es;->s:Z

    .line 63
    new-instance v0, Lcom/amap/api/mapcore/util/es$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/es$1;-><init>(Lcom/amap/api/mapcore/util/es;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->t:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 536
    iput v1, p0, Lcom/amap/api/mapcore/util/es;->a:I

    .line 537
    iput v1, p0, Lcom/amap/api/mapcore/util/es;->b:I

    .line 111
    :try_start_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    .line 112
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->d:Landroid/content/Context;

    .line 113
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/es;->setBackgroundColor(I)V

    .line 114
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/es;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/es;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/es;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/es;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->m:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/es;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->n:Landroid/widget/TextView;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x2

    .line 121
    new-instance v0, Lcom/amap/api/mapcore/util/eu;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/eu;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    .line 122
    new-instance v0, Lcom/amap/api/mapcore/util/et;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/et;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    .line 123
    new-instance v0, Lcom/amap/api/mapcore/util/eo;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/eo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->i:Lcom/amap/api/mapcore/util/eo;

    .line 124
    new-instance v0, Lcom/amap/api/mapcore/util/eq;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/eq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->j:Lcom/amap/api/mapcore/util/eq;

    .line 125
    new-instance v0, Lcom/amap/api/mapcore/util/ev;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/ev;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    .line 126
    new-instance v0, Lcom/amap/api/mapcore/util/er;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/er;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    .line 127
    new-instance v0, Lcom/amap/api/mapcore/util/ep;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/ep;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->g:Lcom/amap/api/mapcore/util/ep;

    .line 129
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->z()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->i:Lcom/amap/api/mapcore/util/eo;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 139
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->j:Lcom/amap/api/mapcore/util/eq;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Lcom/amap/api/mapcore/util/es$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 144
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v0, Lcom/amap/api/mapcore/util/es$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x53

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 151
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v0, Lcom/amap/api/mapcore/util/es$a;

    new-instance v3, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v3, v7, v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>(FF)V

    const/16 v6, 0x33

    move v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 156
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->g:Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->g:Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore/util/ep;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->t:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->m()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isMyLocationButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "locationView gone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x2

    .line 621
    if-nez p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 630
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/es;->removeView(Landroid/view/View;)V

    .line 633
    :cond_2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    .line 635
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 637
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 640
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->h()Landroid/graphics/Rect;

    .line 644
    if-eqz v0, :cond_3

    .line 645
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 646
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 648
    :goto_1
    new-instance v0, Lcom/amap/api/mapcore/util/es$a;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    .line 649
    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cr;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    const/16 v6, 0x51

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es$a;-><init>(IILcom/autonavi/amap/mapcore/FPoint;III)V

    .line 652
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/mapcore/util/es;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 720
    and-int/lit8 v0, p6, 0x7

    .line 721
    and-int/lit8 v1, p6, 0x70

    .line 723
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 724
    sub-int/2addr p4, p2

    .line 729
    :cond_0
    :goto_0
    const/16 v0, 0x50

    if-ne v1, v0, :cond_3

    .line 730
    sub-int/2addr p5, p3

    .line 736
    :cond_1
    :goto_1
    add-int v0, p4, p2

    add-int v1, p5, p3

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 737
    return-void

    .line 725
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 726
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    goto :goto_0

    .line 731
    :cond_3
    const/16 v0, 0x11

    if-ne v1, v0, :cond_4

    .line 732
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p5, v0

    goto :goto_1

    .line 733
    :cond_4
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 734
    div-int/lit8 v0, p5, 0x2

    div-int/lit8 v1, p3, 0x2

    sub-int p5, v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/View;II[I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 688
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 690
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, p4, v2

    .line 692
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p4, v3

    .line 695
    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 696
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 698
    :cond_2
    if-ne p2, v4, :cond_3

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    aput v0, p4, v2

    .line 706
    :goto_0
    if-ne p3, v4, :cond_5

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    aput v0, p4, v3

    .line 714
    :goto_1
    return-void

    .line 700
    :cond_3
    if-ne p2, v5, :cond_4

    .line 701
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->getMeasuredWidth()I

    move-result v0

    aput v0, p4, v2

    goto :goto_0

    .line 703
    :cond_4
    aput p2, p4, v2

    goto :goto_0

    .line 708
    :cond_5
    if-ne p3, v5, :cond_6

    .line 709
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->getMeasuredHeight()I

    move-result v0

    aput v0, p4, v3

    goto :goto_1

    .line 711
    :cond_6
    aput p3, p4, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x33

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 439
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 440
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;II[I)V

    .line 441
    instance-of v1, p1, Lcom/amap/api/mapcore/util/eq;

    if-eqz v1, :cond_0

    .line 442
    aget v2, v0, v4

    aget v3, v0, v5

    const/16 v4, 0x14

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    .line 443
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->q()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x50

    aget v0, v0, v5

    sub-int v5, v1, v0

    move-object v0, p0

    move-object v1, p1

    .line 442
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;IIIII)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    aget v2, v0, v4

    aget v3, v0, v5

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;IIIII)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/amap/api/mapcore/util/es$a;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 451
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 452
    iget v1, p2, Lcom/amap/api/mapcore/util/es$a;->width:I

    iget v2, p2, Lcom/amap/api/mapcore/util/es$a;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;II[I)V

    .line 453
    instance-of v1, p1, Lcom/amap/api/mapcore/util/ev;

    if-eqz v1, :cond_1

    .line 454
    aget v2, v0, v4

    aget v3, v0, v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->getWidth()I

    move-result v1

    aget v0, v0, v4

    sub-int v4, v1, v0

    .line 455
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->getHeight()I

    move-result v5

    iget v6, p2, Lcom/amap/api/mapcore/util/es$a;->d:I

    move-object v0, p0

    move-object v1, p1

    .line 454
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;IIIII)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    instance-of v1, p1, Lcom/amap/api/mapcore/util/er;

    if-eqz v1, :cond_2

    .line 457
    aget v2, v0, v4

    aget v3, v0, v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->getWidth()I

    move-result v1

    aget v4, v0, v4

    sub-int v4, v1, v4

    aget v5, v0, v6

    iget v6, p2, Lcom/amap/api/mapcore/util/es$a;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 459
    :cond_2
    instance-of v1, p1, Lcom/amap/api/mapcore/util/ep;

    if-eqz v1, :cond_3

    .line 460
    aget v2, v0, v4

    aget v3, v0, v6

    iget v6, p2, Lcom/amap/api/mapcore/util/es$a;->d:I

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v1, p2, Lcom/amap/api/mapcore/util/es$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v1, :cond_0

    .line 462
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 463
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v2

    iget-object v3, p2, Lcom/amap/api/mapcore/util/es$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v5, p2, Lcom/amap/api/mapcore/util/es$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v3, v5, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 464
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, p2, Lcom/amap/api/mapcore/util/es$a;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 465
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, p2, Lcom/amap/api/mapcore/util/es$a;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 466
    aget v2, v0, v4

    aget v3, v0, v6

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p2, Lcom/amap/api/mapcore/util/es$a;->d:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;IIIII)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/es;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/amap/api/mapcore/util/cr;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 498
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v2, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->d:Landroid/content/Context;

    const-string/jumbo v1, "infowindow_bg.9.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ei;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 514
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v2}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 516
    if-nez v1, :cond_1

    .line 517
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v2}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    .line 520
    :cond_1
    if-nez v1, :cond_3

    .line 521
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->t:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    invoke-interface {v0, v2}, Lcom/amap/api/maps/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 524
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 525
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 532
    :cond_2
    :goto_2
    return-object v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    const-string/jumbo v1, "MapOverlayViewGroup"

    const-string/jumbo v3, "showInfoWindow decodeDrawableFromAsset"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 527
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 528
    :goto_3
    const-string/jumbo v2, "MapOverlayViewGroup"

    const-string/jumbo v3, "getInfoWindow or getInfoContents"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 527
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/es;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->o:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/es;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/es;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    .line 238
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/et;->invalidate()V

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eu;->b()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ev;->a(F)V

    .line 217
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ev;->a(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/eu;->a(IF)V

    .line 268
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/es;->l()V

    .line 270
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 774
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_0

    .line 777
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 778
    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 779
    int-to-float v1, v1

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 782
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cr;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    if-nez p1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/cr;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->d()V

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_0

    .line 486
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    .line 487
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/cr;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->t:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    sget v0, Lcom/amap/api/mapcore/util/g;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 326
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ek;->a(DD)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eu;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->A()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eu;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->j:Lcom/amap/api/mapcore/util/eq;

    if-eqz v0, :cond_0

    .line 174
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->j:Lcom/amap/api/mapcore/util/eq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 750
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    if-nez v1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    .line 754
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/amap/api/mapcore/util/et;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->a(I)V

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eu;->invalidate()V

    .line 229
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/es;->l()V

    .line 231
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->k:Lcom/amap/api/mapcore/util/ev;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ev;->a(Z)V

    goto :goto_0
.end method

.method public c()Lcom/amap/api/mapcore/util/eo;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->i:Lcom/amap/api/mapcore/util/eo;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->b(I)V

    .line 246
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/es;->l()V

    .line 248
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/er;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 664
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/es;->removeView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/drawable/Drawable;)V

    .line 668
    iput-object v2, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/cr;->a(Z)V

    .line 674
    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    .line 676
    iput-object v2, p0, Lcom/amap/api/mapcore/util/es;->m:Landroid/view/View;

    .line 677
    iput-object v2, p0, Lcom/amap/api/mapcore/util/es;->n:Landroid/widget/TextView;

    .line 678
    iput-object v2, p0, Lcom/amap/api/mapcore/util/es;->o:Landroid/widget/TextView;

    .line 680
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->c(I)V

    .line 253
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/es;->l()V

    .line 255
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->g:Lcom/amap/api/mapcore/util/ep;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->g:Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ep;->a(Z)V

    goto :goto_0
.end method

.method public e(I)F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/es;->l()V

    .line 260
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eu;->d(I)F

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x8

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 551
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/es;->s:Z

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    .line 556
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->c()I

    move-result v1

    add-int v6, v0, v1

    .line 557
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->f()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    .line 558
    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->d()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x2

    .line 562
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/es;->a:I

    if-ne v6, v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/es;->b:I

    if-eq v7, v0, :cond_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/es;->b(Lcom/amap/api/mapcore/util/cr;)Landroid/view/View;

    move-result-object v0

    .line 569
    invoke-direct {p0, v0, v6, v7}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;II)V

    .line 572
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cr;->h()Landroid/graphics/Rect;

    .line 574
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/es$a;

    .line 575
    if-eqz v0, :cond_3

    .line 576
    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->a()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/es$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 577
    iput v6, v0, Lcom/amap/api/mapcore/util/es$a;->b:I

    .line 578
    iput v7, v0, Lcom/amap/api/mapcore/util/es$a;->c:I

    .line 580
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore/util/es;->onLayout(ZIIII)V

    .line 585
    iput v6, p0, Lcom/amap/api/mapcore/util/es;->a:I

    .line 586
    iput v7, p0, Lcom/amap/api/mapcore/util/es;->b:I

    .line 588
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->r:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->t:Lcom/amap/api/maps/AMap$InfoWindowAdapter;

    if-ne v0, v1, :cond_5

    .line 590
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 594
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/es;->p:Lcom/amap/api/mapcore/util/cr;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cr;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 599
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    const-string/jumbo v1, "MapOverlayViewGroup"

    const-string/jumbo v2, "redrawInfoWindow"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 603
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->h:Lcom/amap/api/mapcore/util/et;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/et;->a(Z)V

    goto :goto_0
.end method

.method public f()Lcom/amap/api/mapcore/util/eq;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->j:Lcom/amap/api/mapcore/util/eq;

    return-object v0
.end method

.method public f(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eu;->a(Z)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eu;->a(Z)V

    goto :goto_0
.end method

.method public g()Lcom/amap/api/mapcore/util/er;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->f:Lcom/amap/api/mapcore/util/er;

    return-object v0
.end method

.method public h()Lcom/amap/api/mapcore/util/ep;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->g:Lcom/amap/api/mapcore/util/ep;

    return-object v0
.end method

.method public i()Lcom/amap/api/mapcore/util/eu;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    return-object v0
.end method

.method public j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->d()V

    .line 741
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/drawable/Drawable;)V

    .line 742
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->removeAllViews()V

    .line 744
    iput-object v1, p0, Lcom/amap/api/mapcore/util/es;->n:Landroid/widget/TextView;

    .line 745
    iput-object v1, p0, Lcom/amap/api/mapcore/util/es;->o:Landroid/widget/TextView;

    .line 746
    iput-object v1, p0, Lcom/amap/api/mapcore/util/es;->m:Landroid/view/View;

    .line 747
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 786
    iput v0, p0, Lcom/amap/api/mapcore/util/es;->a:I

    .line 787
    iput v0, p0, Lcom/amap/api/mapcore/util/es;->b:I

    .line 788
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/es;->getChildCount()I

    move-result v2

    .line 416
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 417
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/es;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 418
    if-eqz v3, :cond_0

    .line 421
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/api/mapcore/util/es$a;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/es$a;

    .line 424
    invoke-direct {p0, v3, v0}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;Lcom/amap/api/mapcore/util/es$a;)V

    .line 416
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/amap/api/mapcore/util/es;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 435
    :goto_2
    return-void

    .line 431
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/es;->e:Lcom/amap/api/mapcore/util/eu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eu;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
