.class public Lcom/alibaba/lightapp/runtime/location/LocationActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;,
        Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;
    }
.end annotation


# instance fields
.field private A:Z

.field final a:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

.field private b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

.field private e:Lhku;

.field private f:I

.field private g:Lhku$a;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ListView;

.field private p:Z

.field private q:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

.field private r:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

.field private s:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:J

.field private x:Lcom/amap/api/services/core/PoiItem;

.field private y:Lcom/amap/api/services/core/PoiItem;

.field private z:Lcom/amap/api/services/core/PoiItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->d:Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

    .line 67
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    .line 81
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    .line 83
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    .line 104
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->u:Z

    .line 220
    new-instance v0, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    .line 460
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->A:Z

    .line 608
    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 548
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    if-eqz v2, :cond_2

    .line 549
    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const-class v3, Lcom/alibaba/lightapp/runtime/location/RegistrainGMapFragment;

    .line 551
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual {v2, p1, v3}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 553
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    if-nez v0, :cond_0

    .line 554
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/RegistrainGMapFragment;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 572
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_0
    :goto_0
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 573
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "SmartWork"

    const-string/jumbo v3, "google_map"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 575
    return-object v0

    .line 557
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    .end local v1    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/RegistrainGMapFragment;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    goto :goto_0

    .line 560
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_2
    if-eqz p1, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const-class v3, Lcom/alibaba/lightapp/runtime/location/GMapFragment;

    .line 562
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {v2, p1, v3}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 564
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    if-nez v0, :cond_0

    .line 568
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/GMapFragment;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Lcom/amap/api/services/core/PoiItem;)Lcom/amap/api/services/core/PoiItem;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->y:Lcom/amap/api/services/core/PoiItem;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Lhku$a;)Lhku$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # Lhku$a;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->g:Lhku$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 6242
    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    .line 6243
    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    .line 7431
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7432
    iput p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    .line 7433
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->d:Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;->notifyDataSetChanged()V

    .line 7435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    .line 7436
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/amap/api/services/core/PoiItem;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Lcom/amap/api/maps/model/LatLng;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    .line 57
    .line 6247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->u:Z

    .line 6248
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->m:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6249
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    .line 6250
    const-string/jumbo v1, ""

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v6, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->h:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    const/16 v8, 0xa

    const-string/jumbo v9, "\u516c\u53f8\u4f01\u4e1a|\u653f\u5e9c\u673a\u6784\u53ca\u793e\u4f1a\u56e2\u4f53|\u5546\u52a1\u4f4f\u5b85|\u79d1\u6559\u6587\u5316\u670d\u52a1|\u91d1\u878d\u4fdd\u9669\u670d\u52a1|\u533b\u7597\u4fdd\u5065\u670d\u52a1|\u751f\u6d3b\u670d\u52a1|\u4f53\u80b2\u4f11\u95f2\u670d\u52a1|\u8d2d\u7269\u670d\u52a1|\u4f4f\u5bbf\u670d\u52a1|\u98ce\u666f\u540d\u80dc|\u9910\u996e\u670d\u52a1|\u4ea4\u901a\u8bbe\u65bd\u670d\u52a1|\u9053\u8def\u9644\u5c5e\u8bbe\u65bd|\u5730\u540d\u5730\u5740\u4fe1\u606f|\u6c7d\u8f66\u670d\u52a1|\u6c7d\u8f66\u9500\u552e|\u6c7d\u8f66\u7ef4\u4fee|\u6469\u6258\u8f66\u670d\u52a1|\u516c\u5171\u8bbe\u65bd"

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l:Ljava/lang/String;

    new-instance v11, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    invoke-direct {v11, p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;I)V

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lhku;->a(Landroid/content/Context;Ljava/lang/String;DDIIILjava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Lhku;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->e:Lhku;

    .line 57
    return-void
.end method

.method private a(Lcom/amap/api/services/core/PoiItem;)V
    .locals 6
    .param p1, "poiItem"    # Lcom/amap/api/services/core/PoiItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->b(DD)V

    .line 442
    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->v:Ljava/lang/String;

    const-string/jumbo v1, "location_from_ding_meeting"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 581
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    if-eqz v1, :cond_2

    .line 582
    if-eqz p1, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;

    .line 584
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v1, p1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 586
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    if-nez v0, :cond_0

    .line 587
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 605
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_0
    :goto_0
    return-object v0

    .line 590
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/RegistrainMapFragment;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    goto :goto_0

    .line 593
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_2
    if-eqz p1, :cond_3

    .line 594
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/location/MapFragment;

    .line 595
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v1, p1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 597
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    if-nez v0, :cond_0

    .line 601
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->m:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/amap/api/services/core/PoiItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->y:Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/amap/api/services/core/PoiItem;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    const-wide v2, -0x3f70c00000000000L    # -1000.0

    .line 57
    .line 6362
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 6363
    new-instance v1, Lcom/amap/api/services/core/PoiItem;

    sget v2, Lhdn$k;->dt_lightapp_not_show_location:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lhdn$k;->dt_lightapp_not_show_location:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    .line 6367
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->x:Lcom/amap/api/services/core/PoiItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6368
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6369
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    .line 6370
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->x:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v2, v0}, Lcom/amap/api/services/core/PoiItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6371
    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    .line 6372
    :cond_0
    return-void

    .line 6368
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lhku;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->e:Lhku;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    .line 6701
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 57
    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->d:Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lhku$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->g:Lhku$a;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    return v0
.end method

.method static synthetic r(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    return v0
.end method

.method static synthetic s(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    return v0
.end method

.method static synthetic v(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 257
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "LocationActivity"

    const-string/jumbo v2, "onActivityResult RESULT_OK "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    const-string/jumbo v0, "poi_item_key"

    invoke-static {p3, v0}, Lcoy;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    .line 261
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "LocationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult poiItem Latitude = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    .line 264
    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&Longitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    .line 265
    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Lcom/amap/api/services/core/PoiItem;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    .line 5281
    iput v6, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    .line 5282
    iput v6, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    .line 5283
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->u:Z

    .line 5284
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5285
    iget v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    .line 5286
    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    iget v6, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->h:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->i:I

    const/16 v8, 0xa

    const-string/jumbo v9, "\u516c\u53f8\u4f01\u4e1a|\u653f\u5e9c\u673a\u6784\u53ca\u793e\u4f1a\u56e2\u4f53|\u5546\u52a1\u4f4f\u5b85|\u79d1\u6559\u6587\u5316\u670d\u52a1|\u91d1\u878d\u4fdd\u9669\u670d\u52a1|\u533b\u7597\u4fdd\u5065\u670d\u52a1|\u751f\u6d3b\u670d\u52a1|\u4f53\u80b2\u4f11\u95f2\u670d\u52a1|\u8d2d\u7269\u670d\u52a1|\u4f4f\u5bbf\u670d\u52a1|\u98ce\u666f\u540d\u80dc|\u9910\u996e\u670d\u52a1|\u4ea4\u901a\u8bbe\u65bd\u670d\u52a1|\u9053\u8def\u9644\u5c5e\u8bbe\u65bd|\u5730\u540d\u5730\u5740\u4fe1\u606f|\u6c7d\u8f66\u670d\u52a1|\u6c7d\u8f66\u9500\u552e|\u6c7d\u8f66\u7ef4\u4fee|\u6469\u6258\u8f66\u670d\u52a1|\u516c\u5171\u8bbe\u65bd"

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;

    iget v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->f:I

    invoke-direct {v11, p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$b;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;I)V

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lhku;->a(Landroid/content/Context;Ljava/lang/String;DDIIILjava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Lhku;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->e:Lhku;

    goto/16 :goto_0

    .line 273
    :cond_2
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "LocationActivity"

    const-string/jumbo v2, "onActivityResult RESULT_NOT_OK "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 447
    .local v0, "viewId":I
    sget v1, Lhdn$h;->menu_left:I

    if-ne v0, v1, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->onBackPressed()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget v1, Lhdn$h;->done:I

    if-ne v0, v1, :cond_8

    .line 5463
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->A:Z

    if-nez v1, :cond_0

    .line 5467
    const-string/jumbo v1, "com.workapp.action.poi_info"

    .line 5468
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5469
    const-string/jumbo v1, "com.workapp.action.poi_info_v2"

    .line 5471
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5472
    const-string/jumbo v1, "intent_key_seed"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->w:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5475
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 5476
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->k:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->j:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/PoiItem;

    .line 5477
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->y:Lcom/amap/api/services/core/PoiItem;

    if-ne v1, v3, :cond_3

    .line 5478
    const/4 v1, 0x0

    .line 5480
    :cond_3
    const-string/jumbo v3, "poi_info_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5481
    const-string/jumbo v1, "intent_key_location_from"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5489
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "return_location_image"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5490
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    if-eqz v1, :cond_0

    .line 5491
    iput-boolean v7, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->A:Z

    .line 5492
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v4, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$5;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;Landroid/content/Intent;)V

    const-class v2, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;

    invoke-interface {v1, v4, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;

    invoke-virtual {v3, v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$b;)V

    goto :goto_0

    .line 5483
    :cond_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    if-eqz v1, :cond_4

    .line 5484
    const-string/jumbo v1, "poi_info_key"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->z:Lcom/amap/api/services/core/PoiItem;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5485
    const-string/jumbo v1, "intent_key_location_from"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 5510
    :cond_6
    iput-boolean v7, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->A:Z

    .line 5512
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->f()Landroid/location/Location;

    move-result-object v1

    .line 5513
    if-eqz v1, :cond_7

    .line 5514
    const-string/jumbo v3, "map_latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 5515
    const-string/jumbo v3, "map_longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 5518
    :cond_7
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5519
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->finish()V

    goto/16 :goto_0

    .line 451
    :cond_8
    sget v1, Lhdn$h;->menu_search:I

    if-ne v0, v1, :cond_0

    .line 5524
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5525
    const-string/jumbo v2, "default_city_key"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5526
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    if-eqz v2, :cond_9

    .line 5527
    const-string/jumbo v2, "scope_key"

    iget v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->h:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5531
    :goto_2
    const-string/jumbo v2, "default_location_latitude"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->d()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 5532
    const-string/jumbo v2, "default_location_longitude"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->d()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 5534
    const/16 v2, 0x2711

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5529
    :cond_9
    const-string/jumbo v2, "scope_key"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sget v0, Lhdn$i;->activity_location_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->setContentView(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1127
    const-string/jumbo v0, "scope_key"

    const/16 v4, 0x7d0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->h:I

    .line 1128
    const-string/jumbo v0, "custom_location_key"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    .line 1129
    const-string/jumbo v0, "location_select_marker"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->q:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    .line 1130
    const-string/jumbo v0, "location_current_marker"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->r:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    .line 1131
    const-string/jumbo v0, "location_center_marker"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->s:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    .line 1132
    const-string/jumbo v0, "intent_key_location_from"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->v:Ljava/lang/String;

    .line 1133
    const-string/jumbo v0, "poi_info_key"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->x:Lcom/amap/api/services/core/PoiItem;

    .line 1134
    const-string/jumbo v0, "intent_key_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->w:J

    .line 1416
    sget v0, Lhdn$h;->menu_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1417
    sget v0, Lhdn$h;->done:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->c:Landroid/view/View;

    .line 1418
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1419
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    sget v0, Lhdn$h;->menu_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1422
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    sget v0, Lhdn$h;->title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1425
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->p:Z

    if-eqz v3, :cond_0

    .line 1426
    sget v3, Lhdn$k;->location_trimming:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_0
    sget v0, Lhdn$h;->progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->m:Landroid/widget/ProgressBar;

    .line 1383
    sget v0, Lhdn$h;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->o:Landroid/widget/ListView;

    .line 1384
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->o:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->d:Lcom/alibaba/lightapp/runtime/location/LocationActivity$a;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1386
    sget v0, Lhdn$h;->no_result_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->n:Landroid/view/View;

    .line 1388
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->o:Landroid/widget/ListView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/location/LocationActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1394
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->o:Landroid/widget/ListView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/location/LocationActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2139
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_sw_gmap_manager"

    .line 3083
    invoke-virtual {v0, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2139
    if-eqz v0, :cond_9

    .line 2140
    invoke-static {p0}, Lhdo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2143
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->restoreLocationCache(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    move-result-object v3

    .line 2144
    if-eqz v3, :cond_5

    .line 3693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    .line 2144
    :goto_0
    if-eqz v0, :cond_5

    move v0, v1

    .line 2145
    :goto_1
    if-nez v0, :cond_7

    .line 2146
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2147
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    .line 4181
    :goto_2
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/LocationActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 2162
    :goto_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->a(Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment$a;)V

    .line 2163
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->q:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    if-eqz v0, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->q:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v1, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->q:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v2, v2, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->q:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v3, v3, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->a(IFF)V

    .line 2166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->r:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    if-eqz v0, :cond_2

    .line 2167
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->r:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v1, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->r:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v2, v2, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->r:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v3, v3, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->b(IFF)V

    .line 2169
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->s:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    if-eqz v0, :cond_3

    .line 2170
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->s:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v1, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->s:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v2, v2, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->s:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v3, v3, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->c(IFF)V

    .line 2173
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_LATITUDE"

    invoke-virtual {v1, v2, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 2174
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "EXTRA_LONGITUDE"

    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 2173
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;->a(DD)V

    .line 2176
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lhdn$h;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 123
    return-void

    :cond_4
    move v0, v2

    .line 3693
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 2144
    goto/16 :goto_1

    .line 2149
    :cond_6
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    goto/16 :goto_2

    .line 4689
    :cond_7
    iget v0, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLatitude:F

    float-to-double v0, v0

    iget v2, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLongitude:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/location/CoordinateConverter;->isAMapDataAvailable(DD)Z

    move-result v0

    .line 2154
    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->a(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    move-result-object v0

    goto :goto_4

    .line 2158
    :cond_9
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationActivity;->b:Lcom/alibaba/lightapp/runtime/location/AbstractMapFragment;

    goto/16 :goto_3
.end method
