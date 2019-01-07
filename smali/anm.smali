.class public Lanm;
.super Ljava/lang/Object;
.source "AdsManager.java"


# static fields
.field private static final f:Ljava/lang/String;

.field private static g:Lanm;


# instance fields
.field public a:Z

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lblc;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lanm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanm;->f:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lanm;->g:Lanm;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanm;->h:J

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanm;->a:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->b:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->i:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->j:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->k:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->l:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->m:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanm;->c:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanm;->d:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanm;->e:Ljava/util/Map;

    .line 140
    return-void
.end method

.method public static declared-synchronized a()Lanm;
    .locals 2

    .prologue
    .line 132
    const-class v1, Lanm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanm;->g:Lanm;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lanm;

    invoke-direct {v0}, Lanm;-><init>()V

    sput-object v0, Lanm;->g:Lanm;

    .line 136
    :cond_0
    sget-object v0, Lanm;->g:Lanm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcry;
    .locals 1
    .param p0, "x0"    # Lanm;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lanm;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcry;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcry;
    .locals 7
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 719
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-nez v1, :cond_1

    .line 720
    :cond_0
    const/4 v0, 0x0

    .line 738
    :goto_0
    return-object v0

    .line 723
    :cond_1
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    .line 724
    .local v0, "viewObject":Lcry;
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 3047
    iput v1, v0, Lcry;->a:I

    .line 725
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    .line 3071
    iput-object v1, v0, Lcry;->d:Ljava/lang/String;

    .line 726
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    .line 4055
    iput-boolean v1, v0, Lcry;->b:Z

    .line 4063
    iput-boolean v2, v0, Lcry;->c:Z

    .line 728
    iget-object v1, p0, Lanm;->c:Ljava/util/List;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lanm;->c(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 5055
    :goto_1
    iput-boolean v1, v0, Lcry;->b:Z

    .line 729
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->mediaId:Ljava/lang/String;

    .line 5079
    iput-object v1, v0, Lcry;->e:Ljava/lang/String;

    .line 730
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actUrl:Ljava/lang/String;

    .line 5095
    iput-object v1, v0, Lcry;->g:Ljava/lang/String;

    .line 731
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actText:Ljava/lang/String;

    .line 6087
    iput-object v1, v0, Lcry;->f:Ljava/lang/String;

    .line 732
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->number:I

    .line 6111
    iput v1, v0, Lcry;->i:I

    .line 734
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 6743
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7051
    iget-boolean v4, v0, Lcry;->b:Z

    .line 6747
    if-eqz v4, :cond_4

    .line 7059
    iget-boolean v4, v0, Lcry;->c:Z

    .line 6747
    if-eqz v4, :cond_4

    .line 6748
    iget-object v4, p0, Lanm;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6749
    iget-object v4, p0, Lanm;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_2
    :goto_2
    const-string/jumbo v1, "mgr"

    const-string/jumbo v4, "getViewObject type=%d,text=%s,redPoint=%b,isShow=%b"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    aput-object v3, v5, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->redPoint:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    .line 8051
    iget-boolean v3, v0, Lcry;->b:Z

    .line 736
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 728
    goto :goto_1

    .line 6752
    :cond_4
    iget-object v4, p0, Lanm;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6753
    iget-object v4, p0, Lanm;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic a(Lanm;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lanm;

    .prologue
    .line 67
    iget-object v0, p0, Lanm;->l:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ads/model/ConfigModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 247
    .local p1, "configModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ads/model/ConfigModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 295
    :cond_0
    return-void

    .line 252
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ads/model/ConfigModel;

    .line 255
    .local v2, "configModel":Lcom/alibaba/android/ads/model/ConfigModel;
    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v11, v9

    const/4 v12, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, ""

    :goto_1
    aput-object v9, v11, v12

    const/4 v9, 0x2

    iget-object v12, v2, Lcom/alibaba/android/ads/model/ConfigModel;->widget_id:Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "newPath":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "widgetIds":[Ljava/lang/String;
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 260
    iget-object v9, p0, Lanm;->i:Ljava/util/Map;

    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 261
    .local v7, "widgetIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_2

    .line 262
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 264
    :cond_2
    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 265
    iget-object v9, p0, Lanm;->i:Ljava/util/Map;

    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-interface {v9, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v7    # "widgetIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v9, v8

    if-ge v3, v9, :cond_7

    .line 271
    iget-object v9, p0, Lanm;->b:Ljava/util/Map;

    aget-object v11, v8, v3

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 272
    .local v0, "adsPositionIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_4

    .line 273
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 275
    :cond_4
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 276
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_5
    iget-object v9, p0, Lanm;->b:Ljava/util/Map;

    aget-object v11, v8, v3

    invoke-interface {v9, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 255
    .end local v0    # "adsPositionIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "newPath":Ljava/lang/String;
    .end local v8    # "widgetIds":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, ","

    goto :goto_1

    .line 282
    .restart local v3    # "i":I
    .restart local v5    # "newPath":Ljava/lang/String;
    .restart local v8    # "widgetIds":[Ljava/lang/String;
    :cond_7
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-boolean v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->local:Z

    if-eqz v9, :cond_8

    .line 2695
    new-instance v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;-><init>()V

    .line 2697
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    iput-object v9, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 2698
    iget v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->priority:I

    iput v9, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    .line 2700
    new-instance v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;-><init>()V

    .line 2701
    iget v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->type:I

    iput v11, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    .line 2702
    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->text:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 2703
    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->text:Ljava/lang/String;

    iput-object v11, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    .line 2707
    :goto_3
    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->media_id:Ljava/lang/String;

    iput-object v11, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->mediaId:Ljava/lang/String;

    .line 2708
    iput-object v9, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    .line 2710
    new-instance v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;-><init>()V

    .line 2711
    const/4 v11, 0x1

    iput v11, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    .line 2712
    iput-object v9, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    .line 284
    .local v1, "adsPositionObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-static {v9}, Lanm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "key":Ljava/lang/String;
    iget-boolean v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->default_hide:Z

    invoke-static {v4, v9}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 286
    .local v6, "value":Z
    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 287
    invoke-static {}, Lanp;->a()Lanp;

    move-result-object v9

    invoke-virtual {v9}, Lanp;->b()Lanq;

    move-result-object v9

    invoke-interface {v9, v1}, Lanq;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)I

    move-result v9

    if-lez v9, :cond_8

    .line 288
    iget-object v9, p0, Lanm;->j:Ljava/util/Map;

    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->ads_id:Ljava/lang/String;

    invoke-interface {v9, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v1    # "adsPositionObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Z
    :cond_8
    iget-object v9, v2, Lcom/alibaba/android/ads/model/ConfigModel;->sub:Ljava/util/List;

    invoke-direct {p0, v9, v5}, Lanm;->a(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2705
    :cond_9
    iget-object v11, v2, Lcom/alibaba/android/ads/model/ConfigModel;->textResId:Ljava/lang/String;

    invoke-static {v11}, Lano;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    goto :goto_3
.end method

.method private static a(II)Z
    .locals 3
    .param p0, "value"    # I
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 833
    shl-int v2, v1, p1

    and-int v0, p0, v2

    .line 835
    .local v0, "result":I
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lblg;
    .locals 1
    .param p0, "x0"    # Lanm;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    .line 67
    invoke-static {p1}, Lanm;->b(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lblg;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lblg;
    .locals 6
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    .line 766
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-nez v1, :cond_1

    .line 767
    :cond_0
    const/4 v0, 0x0

    .line 779
    :goto_0
    return-object v0

    .line 770
    :cond_1
    new-instance v0, Lblg;

    invoke-direct {v0}, Lblg;-><init>()V

    .line 771
    .local v0, "tipsObject":Lblg;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->cid:Ljava/lang/String;

    .line 9039
    iput-object v1, v0, Lblg;->a:Ljava/lang/String;

    .line 772
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->text:Ljava/lang/String;

    .line 9047
    iput-object v1, v0, Lblg;->b:Ljava/lang/String;

    .line 773
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actText:Ljava/lang/String;

    .line 9055
    iput-object v1, v0, Lblg;->c:Ljava/lang/String;

    .line 774
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->actUrl:Ljava/lang/String;

    .line 9063
    iput-object v1, v0, Lblg;->d:Ljava/lang/String;

    .line 775
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->isPersistent:Z

    .line 9071
    iput-boolean v1, v0, Lblg;->e:Z

    .line 777
    const-string/jumbo v1, "mgr"

    const-string/jumbo v2, "parseTipsData cid=%s,per=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->cid:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->isPersistent:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 839
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ads_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lanm;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lanm;

    .prologue
    .line 67
    iget-object v0, p0, Lanm;->m:Ljava/util/Map;

    return-object v0
.end method

.method private static c()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ads/model/ConfigModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 201
    const/4 v2, 0x0

    .line 203
    .local v2, "configModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ads/model/ConfigModel;>;"
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string/jumbo v13, "reddot.json"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 204
    .local v5, "in":Ljava/io/InputStream;
    if-nez v5, :cond_0

    move-object v2, v11

    .line 235
    .end local v5    # "in":Ljava/io/InputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 208
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 209
    .local v9, "len":I
    new-array v1, v9, [B

    .line 210
    .local v1, "buffer":[B
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 211
    const-string/jumbo v12, "utf-8"

    invoke-static {v1, v12}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "configStr":Ljava/lang/String;
    invoke-static {v3}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 213
    .local v7, "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    if-nez v7, :cond_1

    move-object v2, v11

    .line 214
    goto :goto_0

    .line 217
    :cond_1
    const-string/jumbo v12, "content"

    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 218
    .local v10, "object":Ljava/lang/Object;
    instance-of v12, v10, Lcom/alibaba/fastjson/JSONArray;

    if-nez v12, :cond_2

    move-object v2, v11

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v6, v0

    .line 223
    .local v6, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-nez v6, :cond_3

    move-object v2, v11

    .line 224
    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "jsonStr2":Ljava/lang/String;
    const-class v11, Lcom/alibaba/android/ads/model/ConfigModel;

    invoke-static {v8, v11}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 229
    .end local v1    # "buffer":[B
    .end local v3    # "configStr":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "jsonObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "jsonStr2":Ljava/lang/String;
    .end local v9    # "len":I
    .end local v10    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 230
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 232
    .local v4, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lanm;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lanm;

    .prologue
    .line 67
    iget-object v0, p0, Lanm;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lanm;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z
    .locals 1
    .param p0, "x0"    # Lanm;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lanm;->c(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z
    .locals 8
    .param p1, "adsPositionObject"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 784
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 821
    :cond_1
    :goto_0
    return v2

    .line 788
    :cond_2
    const/4 v2, 0x1

    .line 790
    .local v2, "isShow":Z
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    sget-object v5, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v5

    invoke-static {v4, v5}, Lanm;->a(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 791
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-static {v4}, Lanm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 792
    const/4 v2, 0x0

    .line 797
    :cond_3
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    sget-object v4, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_TIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v4

    invoke-static {v3, v4}, Lanm;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 799
    .local v0, "currentTime":J
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->startTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->endTime:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->startTime:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_4

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->endTime:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_5

    .line 801
    :cond_4
    const/4 v2, 0x0

    .line 806
    .end local v0    # "currentTime":J
    :cond_5
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->lifecycle:I

    sget-object v4, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_UPGRADE:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->getValue()I

    move-result v4

    invoke-static {v3, v4}, Lanm;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->lifecycle:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionLifecycleObject;->ver:Ljava/lang/String;

    invoke-static {v3}, Lanm;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 808
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 10
    .param p0, "ver"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 844
    const/4 v9, 0x0

    invoke-static {v9}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "currentVer":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 874
    :cond_1
    :goto_0
    return v7

    .line 850
    :cond_2
    const-string/jumbo v9, "\\."

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "currentVers":[Ljava/lang/String;
    const-string/jumbo v9, "\\."

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 854
    .local v6, "vers":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    array-length v9, v6

    if-ge v4, v9, :cond_5

    .line 855
    aget-object v9, v6, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 856
    .local v1, "bitVer":I
    array-length v9, v3

    if-gt v9, v4, :cond_4

    .line 857
    if-gtz v1, :cond_1

    .line 854
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 864
    :cond_4
    aget-object v9, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 865
    .local v0, "bitCurrentVer":I
    if-lt v0, v1, :cond_1

    .line 867
    if-le v0, v1, :cond_3

    move v7, v8

    .line 868
    goto :goto_0

    .line 871
    .end local v0    # "bitCurrentVer":I
    .end local v1    # "bitVer":I
    :catch_0
    move-exception v5

    .line 872
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    move v7, v8

    .line 874
    goto :goto_0
.end method

.method static synthetic d(Lanm;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lanm;

    .prologue
    .line 67
    iget-object v0, p0, Lanm;->c:Ljava/util/List;

    return-object v0
.end method

.method private static d(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z
    .locals 3
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .prologue
    const/4 v0, 0x0

    .line 879
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-nez v1, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TIPS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_POPUP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 884
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_SPLASH:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 885
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_FRONT_PAGE_H5:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 886
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 887
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V
    .locals 10
    .param p1, "adsPositionsObject"    # Lcom/alibaba/android/ads/model/AdsPositionsObject;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 402
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    .line 403
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 404
    :cond_0
    const-string/jumbo v2, "mgr"

    const-string/jumbo v3, "ads size=%d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_1
    return-void

    .line 408
    :cond_2
    const-string/jumbo v2, "mgr"

    const-string/jumbo v3, "ads size=%d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object v2, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .line 411
    .local v1, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-eqz v3, :cond_3

    .line 415
    const-string/jumbo v3, "mgr"

    const-string/jumbo v4, "ads id=%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    const-string/jumbo v3, "mgr"

    const-string/jumbo v4, "ads type=%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v3, p0, Lanm;->j:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .line 419
    .local v0, "cache":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    if-eqz v0, :cond_4

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->ver:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 420
    :cond_4
    iget-object v3, p0, Lanm;->j:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v3, "mgr"

    const-string/jumbo v4, "ads map size=%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lanm;->j:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-static {v1}, Lanm;->d(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 423
    const-string/jumbo v3, "mgr"

    const-string/jumbo v4, "ads db merge"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    invoke-static {}, Lanp;->a()Lanp;

    move-result-object v3

    invoke-virtual {v3}, Lanp;->b()Lanq;

    move-result-object v3

    invoke-interface {v3, v1}, Lanq;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)I

    .line 426
    :cond_5
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lanm;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "adsPositionId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 538
    const-string/jumbo v2, "mgr"

    const-string/jumbo v3, "update start"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    :cond_0
    return-void

    .line 544
    :cond_1
    iget-object v2, p0, Lanm;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 545
    .local v1, "widgetIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 548
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    .local v0, "widgetId":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Lanm;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "listener"    # Lblc;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 328
    new-instance v0, Lanm$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lanm$1;-><init>(Lanm;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Landroid/view/View;Lblc;)V

    invoke-static {v0}, Lano;->a(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 14
    .param p1, "widgetId"    # Ljava/lang/String;
    .param p2, "isFromRegister"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const-string/jumbo v0, "mgr"

    const-string/jumbo v1, "update widgetId is empty"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lanm;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 562
    .local v8, "adsPostionIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    iget-object v0, p0, Lanm;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lblc;

    .line 568
    .local v5, "adsListener":Lblc;
    iget-object v0, p0, Lanm;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 569
    .local v2, "adsView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    iget-object v0, p0, Lanm;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 572
    .local v4, "parentView":Landroid/view/View;
    const/4 v10, 0x0

    .line 573
    .local v10, "tempAdsPositionObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 575
    .local v7, "adsPositionId":Ljava/lang/String;
    iget-object v1, p0, Lanm;->j:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .line 576
    .local v9, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    if-eqz v9, :cond_2

    iget-object v1, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->style:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionStyleObject;

    if-eqz v1, :cond_2

    .line 580
    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v9}, Lanm;->d(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 581
    iget-object v1, p0, Lanm;->j:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string/jumbo v1, "mgr"

    const-string/jumbo v6, "remove onetime ads, id=%s, map size=%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lanm;->j:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v1, v6, v11}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    :cond_4
    if-eqz v10, :cond_6

    .line 586
    invoke-direct {p0, v10}, Lanm;->c(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v10, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    iget v6, v9, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->priority:I

    if-ge v1, v6, :cond_5

    .line 587
    invoke-direct {p0, v9}, Lanm;->c(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lanm;->c:Ljava/util/List;

    iget-object v6, v10, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    .line 588
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    :cond_6
    move-object v10, v9

    goto :goto_1

    .line 593
    .end local v7    # "adsPositionId":Ljava/lang/String;
    .end local v9    # "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    :cond_7
    move-object v3, v10

    .line 594
    .local v3, "currentObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    new-instance v0, Lanm$3;

    move-object v1, p0

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lanm$3;-><init>(Lanm;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;Landroid/view/View;Lblc;Z)V

    invoke-virtual {v11, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 144
    iget-boolean v1, p0, Lanm;->a:Z

    if-nez v1, :cond_0

    .line 147
    invoke-static {}, Lanm;->c()Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "configModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ads/model/ConfigModel;>;"
    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lanm;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 152
    iput-boolean v9, p0, Lanm;->a:Z

    .line 1160
    .end local v0    # "configModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ads/model/ConfigModel;>;"
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1161
    iget-wide v4, p0, Lanm;->h:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 1171
    iget-object v1, p0, Lanm;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1172
    iget-object v1, p0, Lanm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1173
    iget-object v1, p0, Lanm;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1302
    invoke-static {}, Lanp;->a()Lanp;

    move-result-object v1

    invoke-virtual {v1}, Lanp;->b()Lanq;

    move-result-object v1

    invoke-interface {v1}, Lanq;->a()Ljava/util/List;

    move-result-object v1

    .line 1303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1306
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 1307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .line 1308
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1311
    iget-object v6, p0, Lanm;->j:Ljava/util/Map;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1313
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 1315
    :cond_2
    const-string/jumbo v1, "mgr"

    const-string/jumbo v5, "load db, ids=%s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v1, v5, v6}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    :cond_3
    iput-wide v2, p0, Lanm;->h:J

    .line 1471
    iget-boolean v1, p0, Lanm;->a:Z

    if-eqz v1, :cond_7

    .line 1475
    iget-object v1, p0, Lanm;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1476
    iget-object v2, p0, Lanm;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1477
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1480
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1481
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1484
    invoke-static {v2}, Lanm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lanm;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v5, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1487
    :cond_6
    iget-object v1, p0, Lanm;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2385
    :cond_7
    const-string/jumbo v1, "mgr"

    const-string/jumbo v2, "updateAllRegister"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lann;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2386
    iget-object v1, p0, Lanm;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2387
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2390
    invoke-virtual {p0, v1, v8}, Lanm;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2392
    :cond_9
    iget-object v1, p0, Lanm;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2393
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2396
    invoke-virtual {p0, v1, v8}, Lanm;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 156
    :cond_b
    return-void
.end method

.method public final b(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V
    .locals 4
    .param p1, "adsPositionsObject"    # Lcom/alibaba/android/ads/model/AdsPositionsObject;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 433
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    .line 434
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 444
    :cond_0
    return-void

    .line 438
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/ads/model/AdsPositionsObject;->adsPositionObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    .line 439
    .local v0, "object":Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 442
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;->id:Ljava/lang/String;

    invoke-static {v2}, Lanm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
