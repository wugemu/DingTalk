.class public final Lbbo;
.super Ljava/lang/Object;
.source "DingDataCenter.java"


# instance fields
.field a:Z

.field final b:Lbbq;

.field final c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

.field final d:Lbhf;

.field final e:Lbhh;

.field f:Lbgp;

.field g:Lbgq;

.field h:Lbbk;

.field i:Lbgn;

.field j:Lbhb;

.field k:Lbhd;


# direct methods
.method public constructor <init>(Lbbq;)V
    .locals 2
    .param p1, "notifier"    # Lbbq;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lbbo;->b:Lbbq;

    .line 164
    new-instance v0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lbbq;)V

    iput-object v0, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 165
    new-instance v0, Lbhf;

    invoke-direct {v0}, Lbhf;-><init>()V

    iput-object v0, p0, Lbbo;->d:Lbhf;

    .line 166
    new-instance v0, Lbhh;

    invoke-direct {v0}, Lbhh;-><init>()V

    iput-object v0, p0, Lbbo;->e:Lbhh;

    .line 168
    new-instance v0, Lbgu;

    invoke-direct {v0}, Lbgu;-><init>()V

    iput-object v0, p0, Lbbo;->f:Lbgp;

    .line 169
    new-instance v0, Lbgr;

    invoke-direct {v0}, Lbgr;-><init>()V

    iput-object v0, p0, Lbbo;->g:Lbgq;

    .line 170
    new-instance v0, Lbgo;

    invoke-direct {v0}, Lbgo;-><init>()V

    iput-object v0, p0, Lbbo;->i:Lbgn;

    .line 171
    new-instance v0, Lbhc;

    invoke-direct {v0}, Lbhc;-><init>()V

    iput-object v0, p0, Lbbo;->j:Lbhb;

    .line 172
    new-instance v0, Lbhe;

    invoke-direct {v0}, Lbhe;-><init>()V

    iput-object v0, p0, Lbbo;->k:Lbhd;

    .line 173
    new-instance v0, Lbbk;

    invoke-direct {v0}, Lbbk;-><init>()V

    iput-object v0, p0, Lbbo;->h:Lbbk;

    .line 174
    return-void
.end method

.method private static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;IZ)Ljava/util/List;
    .locals 5
    .param p0, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "pageSize"    # I
    .param p3, "isBackwards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2840
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x0

    .line 2841
    .local v1, "index":I
    if-eqz p0, :cond_1

    .line 2842
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 2848
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 2849
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-ltz v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2850
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2851
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz p3, :cond_2

    .line 2852
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2853
    .local v2, "max":I
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 2854
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2853
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2844
    .end local v0    # "i":I
    .end local v2    # "max":I
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_1
    if-nez p3, :cond_0

    .line 2845
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 2857
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_2
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2858
    .restart local v2    # "max":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 2859
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2858
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2863
    .end local v0    # "i":I
    .end local v2    # "max":I
    :cond_3
    return-object v3
.end method

.method static synthetic a(Lbbo;ILcma;)V
    .locals 7
    .param p0, "x0"    # Lbbo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcma;

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 139
    .line 21137
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "makeup1000dings"

    aput-object v1, v0, v5

    const-string/jumbo v1, "remainAllDingsCount:"

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 21138
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "makeup1000dings, remainAllDingsCount:"

    aput-object v1, v0, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 21139
    iget-object v0, p0, Lbbo;->d:Lbhf;

    invoke-virtual {v0}, Lbhf;->a()Lbhf$a;

    move-result-object v0

    .line 21140
    if-lez p1, :cond_2

    .line 22064
    const-string/jumbo v1, "pref_key_has_no_more_all_dings"

    invoke-static {v1, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 21140
    if-nez v1, :cond_2

    .line 21141
    if-gt p1, v4, :cond_1

    .line 21142
    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, v0, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v3, v0, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v6, Lbbj;

    new-instance v0, Lbbo$26;

    invoke-direct {v0, p0, p2}, Lbbo$26;-><init>(Lbbo;Lcma;)V

    invoke-direct {v6, v0}, Lbbj;-><init>(Lcma;)V

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    .line 21174
    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, v0, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v3, v0, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v6, Lbbj;

    new-instance v0, Lbbo$27;

    invoke-direct {v0, p0, p1, p2}, Lbbo$27;-><init>(Lbbo;ILcma;)V

    invoke-direct {v6, v0}, Lbbj;-><init>(Lcma;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    goto :goto_0

    .line 21199
    :cond_2
    invoke-virtual {p0}, Lbbo;->f()V

    .line 21200
    if-eqz p2, :cond_0

    .line 21201
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lbbo;Ljava/util/List;Z)V
    .locals 3
    .param p0, "x0"    # Lbbo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 139
    .line 20523
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20524
    :cond_0
    :goto_0
    return-void

    .line 20528
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 20529
    iget-object v1, p0, Lbbo;->f:Lbgp;

    invoke-interface {v1, p1}, Lbgp;->a(Ljava/util/List;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 20528
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20534
    :cond_2
    invoke-static {p1}, Lbjs;->a(Ljava/util/Collection;)V

    .line 20535
    iget-object v0, p0, Lbbo;->d:Lbhf;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-virtual {v0, v1, p1}, Lbhf;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;)V

    .line 20538
    if-eqz p2, :cond_3

    .line 20540
    iget-object v0, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20544
    :cond_3
    invoke-virtual {p0}, Lbbo;->d()V

    .line 20547
    invoke-virtual {p0}, Lbbo;->b()V

    goto :goto_0
.end method

.method static a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/lang/Iterable;)V
    .locals 8
    .param p0, "dataSetType"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3269
    .local p1, "data":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-nez p1, :cond_1

    .line 3290
    :cond_0
    return-void

    .line 3272
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3273
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_2

    .line 3274
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    .line 3275
    .local v2, "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    const-string/jumbo v0, ""

    .line 3276
    .local v0, "content":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3277
    instance-of v3, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 3278
    .end local v2    # "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 3281
    :cond_3
    :goto_1
    const/4 v3, 0x6

    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v3, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne v3, p0, :cond_5

    const-string/jumbo v3, "all dings"

    :goto_2
    aput-object v3, v5, v6

    const/4 v3, 0x1

    .line 3283
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v6, ": "

    aput-object v6, v5, v3

    const/4 v3, 0x3

    .line 3285
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcog;->q(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    const-string/jumbo v6, ": "

    aput-object v6, v5, v3

    const/4 v3, 0x5

    aput-object v0, v5, v3

    goto :goto_0

    .line 3278
    .restart local v2    # "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_4
    const-string/jumbo v0, "[audio]"

    goto :goto_1

    .line 3281
    .end local v2    # "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_5
    const-string/jumbo v3, "deleted ding:"

    goto :goto_2
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZZLcma;)V
    .locals 9
    .param p1, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "size"    # I
    .param p3, "backwards"    # Z
    .param p4, "updateCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2867
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2868
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v0, "ding_load"

    const-string/jumbo v1, "ding_load_rpc"

    invoke-interface {v2, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    iget-object v8, p0, Lbbo;->h:Lbbk;

    new-instance v0, Lbbo$20;

    move-object v1, p0

    move v3, p2

    move v4, p4

    move-object v5, p5

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lbbo$20;-><init>(Lbbo;Lcom/alibaba/doraemon/statistics/Statistics;IZLcma;ZLcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v8, p1, p2, p3, v0}, Lbbk;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)V

    .line 2930
    return-void
.end method

.method static synthetic b(Lbbo;Ljava/util/List;Z)V
    .locals 3
    .param p0, "x0"    # Lbbo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 139
    .line 20554
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20555
    :cond_0
    :goto_0
    return-void

    .line 20559
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 20560
    iget-object v1, p0, Lbbo;->f:Lbgp;

    invoke-interface {v1, p1}, Lbgp;->a(Ljava/util/List;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 20561
    invoke-static {p1}, Lbjs;->a(Ljava/util/Collection;)V

    .line 20562
    iget-object v0, p0, Lbbo;->d:Lbhf;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-virtual {v0, v1, p1}, Lbhf;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;)V

    .line 20568
    :cond_2
    if-eqz p2, :cond_0

    .line 20570
    iget-object v0, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    goto :goto_0

    .line 20559
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZZLcma;)V
    .locals 8
    .param p1, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "size"    # I
    .param p3, "backwards"    # Z
    .param p4, "updateCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2933
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v7, p0, Lbbo;->h:Lbbk;

    new-instance v0, Lbbo$21;

    move-object v1, p0

    move v2, p2

    move-object v3, p5

    move v4, p3

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lbbo$21;-><init>(Lbbo;ILcma;ZZLcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v7, p1, p2, p3, v0}, Lbbk;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)V

    .line 2989
    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1908
    iget-object v1, p0, Lbbo;->f:Lbgp;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, v3, v3}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 1909
    .local v0, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1910
    :cond_0
    const/4 v1, 0x0

    .line 1912
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1916
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1917
    const/4 v1, 0x0

    .line 1939
    :cond_0
    return-object v1

    .line 1920
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v0, 0x0

    .line 1923
    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1924
    add-int/lit16 v3, v0, 0x1c2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1926
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lbbo;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1927
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v2, :cond_2

    .line 1928
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1937
    :cond_2
    :goto_1
    add-int/lit16 v0, v0, 0x1c2

    goto :goto_0

    .line 1932
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_3
    add-int/lit16 v3, v0, 0x1c2

    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lbbo;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1933
    .restart local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v2, :cond_2

    .line 1934
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1943
    iget-object v0, p0, Lbbo;->f:Lbgp;

    invoke-interface {v0, p1, v1, v1}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private g()I
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 2353
    iget-object v8, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2354
    :cond_0
    iget-object v8, p0, Lbbo;->f:Lbgp;

    invoke-interface {v8}, Lbgp;->e()I

    move-result v7

    .line 2393
    :cond_1
    return v7

    .line 2358
    :cond_2
    iget-object v8, p0, Lbbo;->f:Lbgp;

    invoke-interface {v8}, Lbgp;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    .line 2359
    .local v3, "lastUnconfirmedDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v3, :cond_1

    .line 2360
    iget-object v8, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    iget-object v9, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2361
    .local v1, "cacheLast":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_5

    .line 2362
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 2363
    iget-object v8, p0, Lbbo;->f:Lbgp;

    invoke-interface {v8, v1, v3}, Lbgp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/util/List;

    move-result-object v0

    .line 2364
    .local v0, "appendDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2365
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2366
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2368
    .local v6, "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2369
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2373
    .end local v6    # "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_4
    iget-object v8, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v8, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    .line 2377
    .end local v0    # "appendDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_5
    iget-object v8, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v5

    .line 2378
    .local v5, "objectDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2381
    const/4 v7, 0x0

    .line 2382
    .local v7, "unconfirmedCount":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2383
    .local v4, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v4, :cond_6

    .line 2384
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2385
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2386
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v9

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v9, v10, :cond_6

    .line 2387
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1836
    invoke-virtual {p0, p1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1839
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-nez v0, :cond_0

    .line 1840
    invoke-direct {p0, p1}, Lbbo;->d(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1841
    if-eqz v0, :cond_0

    .line 1842
    iget-object v1, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1846
    :cond_0
    invoke-virtual {p0, p1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    return-object v1
.end method

.method public final a(J)Ljava/util/List;
    .locals 7
    .param p1, "parentDingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3837
    invoke-static {p1, p2}, Lbkh;->a(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3838
    sget v3, Laxp$i;->unknown_error:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 3839
    const/4 v2, 0x0

    .line 3855
    :goto_0
    return-object v2

    .line 3842
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3845
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v3, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v1

    .line 3846
    .local v1, "orderlyAndOrderlessDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3847
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3848
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_1

    .line 15828
    iget-wide v4, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 3848
    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 3849
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3853
    .end local v0    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_2
    sget-object v3, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;
    .locals 12
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "cursor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p4, "pageSize"    # I
    .param p5, "updateCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2586
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "getDingsBackward, anchor:"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    if-nez p2, :cond_8

    const-string/jumbo v2, "null"

    .line 2588
    :goto_0
    aput-object v2, v3, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "; cursor:"

    aput-object v4, v3, v2

    const/4 v4, 0x3

    if-nez p3, :cond_9

    const-string/jumbo v2, "null"

    .line 2590
    :goto_1
    aput-object v2, v3, v4

    .line 2591
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "get ding list backwards: type"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 2592
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; anchor time:"

    aput-object v3, v4, v2

    const/4 v5, 0x3

    if-eqz p2, :cond_a

    .line 2594
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x4

    const-string/jumbo v3, "; cursor time:"

    aput-object v3, v4, v2

    const/4 v5, 0x5

    if-eqz p3, :cond_b

    .line 2596
    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x6

    const-string/jumbo v3, ";"

    aput-object v3, v4, v2

    .line 2591
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 2599
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2602
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v8, 0x0

    .line 2603
    .local v8, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne p1, v2, :cond_c

    .line 2604
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lbbs;->a(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v8

    .line 2608
    :cond_0
    :goto_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2609
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2610
    .local v9, "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 2611
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p4

    invoke-static {p2, v8, v0, v2}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v11

    .line 2612
    .local v11, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "cache result:"

    aput-object v4, v2, v3

    .line 2613
    invoke-static {p1, v11}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/lang/Iterable;)V

    .line 2614
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2615
    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2619
    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_2
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "cache last time:"

    aput-object v3, v4, v2

    const/4 v5, 0x1

    if-eqz v9, :cond_d

    .line 2621
    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    :goto_5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ";"

    aput-object v3, v4, v2

    .line 2623
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "cache last time:"

    aput-object v3, v4, v2

    const/4 v5, 0x1

    if-eqz v9, :cond_e

    .line 2624
    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    :goto_6
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ";"

    aput-object v3, v4, v2

    .line 2623
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 2627
    .end local v9    # "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from cache size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2629
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2631
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from cache size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2632
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2631
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2636
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p4

    if-ge v2, v0, :cond_4

    .line 2638
    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne p1, v2, :cond_10

    .line 2639
    iget-object v3, p0, Lbbo;->f:Lbgp;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2642
    .end local p2    # "anchor":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    .line 2639
    invoke-interface {v3, p2, v2, v4}, Lbgp;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)Ljava/util/List;

    move-result-object v11

    .line 2644
    .restart local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "db result:"

    aput-object v4, v2, v3

    .line 2645
    invoke-static {p1, v11}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/lang/Iterable;)V

    .line 2646
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2647
    iget-object v2, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v2, v11}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2648
    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2650
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from db size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2652
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2654
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from db size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2655
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2654
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2681
    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_4
    :goto_8
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from local size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2683
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2685
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from local size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2686
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2685
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2690
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p4

    if-lt v2, v0, :cond_6

    .line 2691
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    :cond_5
    if-nez p3, :cond_13

    .line 2693
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "start get from rpc;"

    aput-object v4, v2, v3

    .line 2695
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "start get from rpc;"

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2696
    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne p1, v2, :cond_12

    .line 2697
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int v4, p4, v2

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZZLcma;)V

    .line 2707
    :cond_7
    :goto_9
    return-object v10

    .line 2588
    .end local v8    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local p2    # "anchor":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_8
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ah()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2590
    :cond_9
    invoke-virtual {p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ah()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 2594
    :cond_a
    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 2596
    :cond_b
    const-wide/16 v2, 0x0

    goto/16 :goto_3

    .line 2605
    .restart local v8    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_c
    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne p1, v2, :cond_0

    .line 2606
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    iget-object v3, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v2, v3}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_4

    .line 2621
    .restart local v9    # "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_d
    const-wide/16 v2, 0x0

    goto/16 :goto_5

    .line 2624
    :cond_e
    const-wide/16 v2, 0x0

    goto/16 :goto_6

    .line 2641
    .end local v9    # "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object p2, v2

    goto/16 :goto_7

    .line 2658
    :cond_10
    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne p1, v2, :cond_4

    .line 2659
    iget-object v3, p0, Lbbo;->f:Lbgp;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2662
    .end local p2    # "anchor":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :goto_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    .line 2659
    invoke-interface {v3, p2, v2, v4}, Lbgp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)Ljava/util/List;

    move-result-object v11

    .line 2664
    .restart local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "db result:"

    aput-object v4, v2, v3

    .line 2665
    invoke-static {p1, v11}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/lang/Iterable;)V

    .line 2666
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2667
    iget-object v2, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v2, v11}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    .line 2668
    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2670
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from db size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2672
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2674
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "get from db size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 2675
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    .line 2674
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2661
    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local p2    # "anchor":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object p2, v2

    goto :goto_a

    .line 2698
    .end local p2    # "anchor":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_12
    sget-object v2, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    if-ne p1, v2, :cond_7

    .line 2699
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int v4, p4, v2

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lbbo;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZZLcma;)V

    goto/16 :goto_9

    .line 2702
    :cond_13
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "success get from local;"

    aput-object v4, v2, v3

    .line 2703
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "success get from local;"

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2704
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method a(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1887
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1888
    :cond_0
    const/4 v2, 0x0

    .line 1904
    :cond_1
    return-object v2

    .line 1891
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1895
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1898
    invoke-virtual {p0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1899
    .local v0, "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_3

    .line 1900
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1853
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1854
    const/4 v1, 0x0

    .line 1883
    :cond_0
    :goto_0
    return-object v1

    .line 1857
    :cond_1
    invoke-virtual {p0, p1}, Lbbo;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1859
    .local v1, "dingsInCache":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1863
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1864
    .local v3, "notInCacheIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 1865
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1866
    .local v0, "dingInCache":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_3

    .line 1869
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1873
    .end local v0    # "dingInCache":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1878
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lbbo;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1879
    .local v2, "dingsInDb":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1880
    iget-object v4, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    .line 1883
    :cond_5
    invoke-virtual {p0, p1}, Lbbo;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lbbo;->f:Lbgp;

    invoke-interface {v1}, Lbgp;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DingDataCenter init failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(ILjava/util/List;Lcma;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2048
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-ltz p1, :cond_0

    if-nez p2, :cond_2

    .line 2049
    :cond_0
    if-eqz p3, :cond_1

    .line 2050
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :cond_1
    :goto_0
    return-void

    .line 2054
    :cond_2
    mul-int/lit16 v1, p1, 0xc8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    .line 2055
    if-eqz p3, :cond_1

    .line 2056
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2060
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2061
    .local v0, "batchIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    add-int/lit8 v1, p1, 0x1

    mul-int/lit16 v1, v1, 0xc8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 2062
    mul-int/lit16 v1, p1, 0xc8

    add-int/lit8 v2, p1, 0x1

    mul-int/lit16 v2, v2, 0xc8

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2067
    :goto_1
    iget-object v1, p0, Lbbo;->h:Lbbk;

    new-instance v2, Lbbo$14;

    invoke-direct {v2, p0, p1, p2, p3}, Lbbo$14;-><init>(Lbbo;ILjava/util/List;Lcma;)V

    invoke-virtual {v1, v0, v2}, Lbbk;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 2064
    :cond_4
    mul-int/lit16 v1, p1, 0xc8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final a(JI)V
    .locals 7
    .param p1, "dingId"    # J
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2264
    iget-object v2, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findInOrderlyAndOrderless(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 2265
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-nez v1, :cond_0

    .line 2266
    iget-object v2, p0, Lbbo;->f:Lbgp;

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3, v5, v6}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 2267
    .local v0, "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2268
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2272
    .end local v0    # "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local v1    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_0
    if-eqz v1, :cond_1

    .line 2273
    invoke-virtual {v1, p3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(I)V

    .line 2274
    iget-object v2, p0, Lbbo;->f:Lbgp;

    invoke-interface {v2, p1, p2, p3}, Lbgp;->b(JI)I

    .line 2275
    invoke-static {v1}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2277
    :cond_1
    return-void
.end method

.method a(Lbes;Lcma;)V
    .locals 6
    .param p1, "detailQueryObject"    # Lbes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbes;",
            "Lcma",
            "<",
            "Lbfm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3747
    .local p2, "listener":Lcma;, "Lcma<Lbfm;>;"
    if-nez p1, :cond_0

    .line 3748
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 14188
    :goto_0
    return-void

    .line 3752
    :cond_0
    iget-object v1, p0, Lbbo;->h:Lbbk;

    new-instance v0, Lbbo$45;

    invoke-direct {v0, p0, p2}, Lbbo$45;-><init>(Lbbo;Lcma;)V

    .line 14183
    if-nez p1, :cond_1

    .line 14185
    const-string/jumbo v1, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 14187
    const-string/jumbo v0, "getDingWrapperModel failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "detailQueryObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14191
    :cond_1
    new-instance v2, Lbbk$60;

    invoke-direct {v2, v1, v0}, Lbbk$60;-><init>(Lbbk;Lcma;)V

    .line 14209
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] getDingWrapperModel."

    aput-object v4, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 14210
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 15043
    new-instance v3, Lbcl;

    invoke-direct {v3}, Lbcl;-><init>()V

    .line 15044
    iget-wide v4, p1, Lbes;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lbcl;->a:Ljava/lang/Long;

    .line 15045
    iget v4, p1, Lbes;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lbcl;->b:Ljava/lang/Integer;

    .line 15046
    iget-object v4, p1, Lbes;->c:Ljava/lang/String;

    iput-object v4, v3, Lbcl;->c:Ljava/lang/String;

    .line 15047
    iget v4, p1, Lbes;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lbcl;->d:Ljava/lang/Integer;

    .line 15048
    iget-object v4, p1, Lbes;->e:Ljava/lang/String;

    iput-object v4, v3, Lbcl;->e:Ljava/lang/String;

    .line 14211
    new-instance v4, Lbbk$61;

    invoke-direct {v4, v1, v2}, Lbbk$61;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v3, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->getDingWrapperModel(Lbcl;Liyv;)V

    goto :goto_0
.end method

.method a(Lcma;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcma",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3293
    .local p1, "apiEventListener":Lcma;, "Lcma<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbbo;->b:Lbbq;

    if-nez v0, :cond_1

    .line 3302
    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    iget-object v0, p0, Lbbo;->b:Lbbq;

    new-instance v1, Lbbo$28;

    invoke-direct {v1, p0, p1, p2}, Lbbo$28;-><init>(Lbbo;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcma",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3305
    .local p1, "apiEventListener":Lcma;, "Lcma<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbbo;->b:Lbbq;

    if-nez v0, :cond_1

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3308
    :cond_1
    iget-object v0, p0, Lbbo;->b:Lbbq;

    new-instance v1, Lbbo$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lbbo$29;-><init>(Lbbo;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V
    .locals 6
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/16 v5, 0x32

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1001
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "refreshDingList start."

    aput-object v2, v1, v4

    .line 1002
    iget-object v1, p0, Lbbo;->d:Lbhf;

    invoke-virtual {v1}, Lbhf;->a()Lbhf$a;

    move-result-object v0

    .line 1003
    .local v0, "cursor":Lbhf$a;
    sget-object v1, Lbbo$68;->b:[I

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1097
    :goto_0
    return-void

    .line 1005
    :pswitch_0
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "type all"

    aput-object v2, v1, v4

    .line 1006
    iget-object v1, p0, Lbbo;->h:Lbbk;

    iget-object v2, v0, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v3, Lbbo$34;

    invoke-direct {v3, p0, p1, p2, v0}, Lbbo$34;-><init>(Lbbo;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;Lbhf$a;)V

    invoke-virtual {v1, v2, v5, v4, v3}, Lbbk;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)V

    goto :goto_0

    .line 1050
    :pswitch_1
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "type deleted"

    aput-object v2, v1, v4

    .line 1051
    iget-object v1, p0, Lbbo;->h:Lbbk;

    iget-object v2, v0, Lbhf$a;->d:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v3, Lbbo$44;

    invoke-direct {v3, p0, p1, p2, v0}, Lbbo$44;-><init>(Lbbo;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;Lbhf$a;)V

    invoke-virtual {v1, v2, v5, v4, v3}, Lbbk;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)V

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 4828
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 272
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 5828
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 275
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 276
    .local v0, "parentDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->p()I

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(I)V

    goto :goto_0
.end method

.method final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcma;)V
    .locals 10
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4140
    if-nez p1, :cond_0

    .line 4141
    const-string/jumbo v3, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxp$i;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    :goto_0
    return-void

    .line 4145
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lbbo;->d(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 4146
    .local v0, "dingInDb":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-nez v0, :cond_1

    .line 4147
    const-string/jumbo v3, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxp$i;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4153
    :cond_1
    invoke-static {p1}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4154
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 4155
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v6

    if-eq v5, v6, :cond_3

    :cond_2
    move v2, v4

    .line 4156
    .local v2, "shouldChangeFinishStatusRemote":Z
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    if-ne v5, v6, :cond_4

    move v1, v4

    .line 4165
    .local v1, "isFinalFinished":Z
    :goto_2
    if-eqz v2, :cond_13

    .line 16072
    if-nez p1, :cond_b

    .line 16073
    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "object ding is null."

    invoke-virtual {p0, p2, v3, v4}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "isFinalFinished":Z
    .end local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_3
    move v2, v3

    .line 4155
    goto :goto_1

    .restart local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_4
    move v1, v3

    .line 4156
    goto :goto_2

    .line 4157
    .end local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_5
    invoke-static {p1}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4158
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v6

    if-eq v5, v6, :cond_6

    move v2, v4

    .line 4159
    .restart local v2    # "shouldChangeFinishStatusRemote":Z
    :goto_3
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    if-ne v5, v6, :cond_7

    move v1, v4

    .restart local v1    # "isFinalFinished":Z
    :goto_4
    goto :goto_2

    .end local v1    # "isFinalFinished":Z
    .end local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_6
    move v2, v3

    .line 4158
    goto :goto_3

    .restart local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_7
    move v1, v3

    .line 4159
    goto :goto_4

    .line 4161
    .end local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v6

    if-eq v5, v6, :cond_9

    move v2, v4

    .line 4162
    .restart local v2    # "shouldChangeFinishStatusRemote":Z
    :goto_5
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    if-ne v5, v6, :cond_a

    move v1, v4

    .restart local v1    # "isFinalFinished":Z
    :goto_6
    goto :goto_2

    .end local v1    # "isFinalFinished":Z
    .end local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_9
    move v2, v3

    .line 4161
    goto :goto_5

    .restart local v2    # "shouldChangeFinishStatusRemote":Z
    :cond_a
    move v1, v3

    .line 4162
    goto :goto_6

    .line 16077
    .restart local v1    # "isFinalFinished":Z
    :cond_b
    invoke-static {p1}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 16078
    if-eqz v1, :cond_c

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_7
    invoke-virtual {p1, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 16079
    if-eqz v1, :cond_d

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_8
    invoke-virtual {p1, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 16086
    :goto_9
    iget-object v5, p0, Lbbo;->h:Lbbk;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    .line 17109
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 16086
    new-instance v8, Lbbo$52;

    invoke-direct {v8, p0, p2, p1, v1}, Lbbo$52;-><init>(Lbbo;Lcma;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 17440
    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v9

    if-nez v9, :cond_12

    .line 17442
    const-string/jumbo v3, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Laxp$i;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 17444
    const-string/jumbo v3, "changeDingFinishStatus failed"

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "invalidate dingId"

    invoke-static {v3, v4, v5}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16078
    :cond_c
    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_7

    .line 16079
    :cond_d
    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_8

    .line 16080
    :cond_e
    invoke-static {p1}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 16081
    if-eqz v1, :cond_f

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_a
    invoke-virtual {p1, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    goto :goto_9

    :cond_f
    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_a

    .line 16083
    :cond_10
    if-eqz v1, :cond_11

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_b
    invoke-virtual {p1, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    goto :goto_9

    :cond_11
    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_b

    .line 17448
    :cond_12
    new-instance v9, Lbbk$75;

    invoke-direct {v9, v5, v8}, Lbbk$75;-><init>(Lbbk;Lcma;)V

    .line 17464
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "[DataSourceRemote] changeDingFinishStatus dingId:"

    aput-object v8, v5, v3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string/jumbo v4, ", isFinish:"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 17465
    const-class v3, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 17466
    new-instance v4, Lbbx;

    invoke-direct {v4, v9}, Lbbx;-><init>(Lcmi;)V

    invoke-interface {v3, v6, v7, v1, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->changeDingFinishStatus(JZLiyv;)V

    goto/16 :goto_0

    .line 4168
    :cond_13
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3317
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbbo;->b:Lbbq;

    if-nez v0, :cond_1

    .line 3326
    :cond_0
    :goto_0
    return-void

    .line 3320
    :cond_1
    iget-object v0, p0, Lbbo;->b:Lbbq;

    new-instance v1, Lbbo$30;

    invoke-direct {v1, p0, p1, p2}, Lbbo$30;-><init>(Lbbo;Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3329
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbbo;->b:Lbbq;

    if-nez v0, :cond_1

    .line 3338
    :cond_0
    :goto_0
    return-void

    .line 3332
    :cond_1
    iget-object v0, p0, Lbbo;->b:Lbbq;

    new-instance v1, Lbbo$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lbbo$31;-><init>(Lbbo;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2516
    iget-object v0, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findInOrderlyAndOrderless(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2403
    invoke-static {}, Lbju;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2404
    invoke-static {}, Lbhl;->a()Lbhl;

    move-result-object v3

    .line 8077
    invoke-virtual {v3}, Lbhl;->b()V

    .line 8078
    iget-object v4, v3, Lbhl;->b:Lbfb;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lbhl;->b:Lbfb;

    .line 9041
    iget v4, v3, Lbfb;->a:I

    iget v3, v3, Lbfb;->b:I

    add-int v1, v4, v3

    .line 2410
    .local v1, "count":I
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[DingDataCenter] refreshHomeTabRedCount count="

    aput-object v4, v3, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 2411
    iget-object v2, p0, Lbbo;->b:Lbbq;

    .line 9081
    new-instance v3, Lbbq$1;

    invoke-direct {v3, v2, v1}, Lbbq$1;-><init>(Lbbq;I)V

    invoke-virtual {v2, v3}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 2412
    return-void

    .end local v1    # "count":I
    :cond_0
    move v1, v2

    .line 8078
    goto :goto_0

    .line 2406
    :cond_1
    iget-object v3, p0, Lbbo;->g:Lbgq;

    invoke-interface {v3}, Lbgq;->b()I

    move-result v0

    .line 2407
    .local v0, "commentRemindCount":I
    invoke-direct {p0}, Lbbo;->g()I

    move-result v3

    add-int v1, v3, v0

    .restart local v1    # "count":I
    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 6
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 789
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 772
    .local v1, "localObjectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    .line 6713
    iget-object v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I:Ljava/util/Map;

    .line 774
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/util/Map;)V

    .line 775
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(Ljava/util/List;)V

    .line 778
    :cond_1
    invoke-static {p1}, Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 781
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 782
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_2

    .line 783
    iget-object v3, p0, Lbbo;->f:Lbgp;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lbgp;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_2
    iget-object v2, p0, Lbbo;->f:Lbgp;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 7109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7713
    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I:Ljava/util/Map;

    .line 785
    invoke-interface {v2, v4, v5, v3}, Lbgp;->a(JLjava/util/Map;)I

    .line 786
    iget-object v2, p0, Lbbo;->f:Lbgp;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lbgp;->a(Ljava/lang/String;Ljava/util/Collection;)I

    .line 788
    invoke-virtual {p0}, Lbbo;->e()V

    goto :goto_0
.end method

.method b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4224
    .local p1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4243
    :cond_0
    :goto_0
    return-void

    .line 4229
    :cond_1
    iget-object v0, p0, Lbbo;->f:Lbgp;

    invoke-interface {v0, p1}, Lbgp;->b(Ljava/util/List;)I

    .line 4232
    iget-object v0, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->removeFromOrderlyAndOrderless(Ljava/util/Collection;)Z

    .line 4235
    iget-object v0, p0, Lbbo;->g:Lbgq;

    invoke-interface {v0, p1}, Lbgq;->a(Ljava/util/List;)I

    .line 4238
    invoke-virtual {p0}, Lbbo;->c()V

    .line 4240
    invoke-virtual {p0}, Lbbo;->d()V

    .line 4242
    invoke-virtual {p0}, Lbbo;->e()V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2420
    invoke-static {}, Lbju;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2421
    invoke-static {}, Lbhl;->a()Lbhl;

    move-result-object v2

    .line 10087
    invoke-virtual {v2}, Lbhl;->b()V

    .line 10088
    iget-object v3, v2, Lbhl;->b:Lbfb;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lbhl;->b:Lbfb;

    .line 11021
    iget v0, v2, Lbfb;->b:I

    .line 2426
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DingDataCenter] refreshCommentRemindCount count="

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2427
    iget-object v1, p0, Lbbo;->b:Lbbq;

    .line 11101
    new-instance v2, Lbbq$4;

    invoke-direct {v2, v1, v0}, Lbbq$4;-><init>(Lbbq;I)V

    invoke-virtual {v1, v2}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 2428
    return-void

    .end local v0    # "count":I
    :cond_0
    move v0, v1

    .line 10088
    goto :goto_0

    .line 2423
    :cond_1
    iget-object v2, p0, Lbbo;->g:Lbgq;

    invoke-interface {v2}, Lbgq;->b()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method public final c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 3
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 2090
    if-eqz p1, :cond_0

    .line 2091
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(J)V

    .line 2092
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(J)V

    .line 2093
    const-string/jumbo v0, "ding.extension.comment.at"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e(Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lbbo;->f:Lbgp;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbgp;->a(Ljava/lang/String;Ljava/util/Map;)I

    .line 2096
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0, p1}, Layv;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2098
    :cond_0
    return-void
.end method

.method c(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3223
    :cond_0
    :goto_0
    return v2

    .line 3214
    :cond_1
    iget-object v4, p0, Lbbo;->f:Lbgp;

    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5, v2, v2}, Lbgp;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 3215
    .local v0, "found":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3217
    .local v1, "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_2

    .line 3218
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 3219
    goto :goto_0
.end method

.method c(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbfb;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "unReadCountList":Ljava/util/List;, "Ljava/util/List<Lbfb;>;"
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 4778
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4798
    :cond_0
    :goto_0
    return v2

    .line 4782
    :cond_1
    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v3, "[DingDataCenter] dealWithDingRedDotEvent totalSize:"

    aput-object v3, v1, v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 4783
    invoke-static {}, Lbhl;->a()Lbhl;

    move-result-object v3

    .line 18047
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    .line 4785
    .local v0, "isResult":Z
    :goto_1
    invoke-static {}, Lbju;->u()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4786
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DingDataCenter] dealWithDingRedDotEvent dingRedDotFlag not open, not save data. "

    aput-object v3, v1, v10

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 18051
    .end local v0    # "isResult":Z
    :cond_3
    invoke-virtual {v3}, Lbhl;->b()V

    .line 18052
    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v4, "[DingUnReadCountManager] save dingUnreadCountList.size="

    aput-object v4, v1, v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 18053
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfb;

    .line 18054
    if-eqz v1, :cond_4

    .line 18058
    iget-object v5, v3, Lbhl;->b:Lbfb;

    if-eqz v5, :cond_5

    .line 19025
    iget-wide v6, v1, Lbfb;->c:J

    .line 18058
    iget-object v5, v3, Lbhl;->b:Lbfb;

    .line 20025
    iget-wide v8, v5, Lbfb;->c:J

    .line 18058
    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 18059
    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[DingUnReadCountManager] save. server data version is less than local version. local dingUnreadCountObject="

    aput-object v5, v1, v10

    iget-object v5, v3, Lbhl;->b:Lbfb;

    invoke-virtual {v5}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 18063
    :cond_5
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "[DingUnReadCountManager] save unreadCountObject="

    aput-object v6, v5, v10

    invoke-virtual {v1}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 18064
    iput-object v1, v3, Lbhl;->b:Lbfb;

    goto :goto_2

    .line 18066
    :cond_6
    iget-object v1, v3, Lbhl;->a:Lbgv;

    iget-object v3, v3, Lbhl;->b:Lbfb;

    invoke-interface {v1, v3}, Lbgv;->a(Lbfb;)Z

    move-result v0

    goto :goto_1

    .line 4790
    .restart local v0    # "isResult":Z
    :cond_7
    if-eqz v0, :cond_8

    .line 4792
    invoke-virtual {p0}, Lbbo;->b()V

    .line 4794
    invoke-virtual {p0}, Lbbo;->d()V

    .line 4796
    invoke-virtual {p0}, Lbbo;->c()V

    :cond_8
    move v2, v0

    .line 4798
    goto/16 :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2435
    invoke-static {}, Lbju;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2436
    invoke-static {}, Lbhl;->a()Lbhl;

    move-result-object v2

    .line 12082
    invoke-virtual {v2}, Lbhl;->b()V

    .line 12083
    iget-object v3, v2, Lbhl;->b:Lbfb;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lbhl;->b:Lbfb;

    .line 13017
    iget v0, v2, Lbfb;->a:I

    .line 2441
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DingDataCenter] refreshUnconfirmedCount count="

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2442
    iget-object v1, p0, Lbbo;->b:Lbbq;

    .line 13147
    new-instance v2, Lbbq$6;

    invoke-direct {v2, v1, v0}, Lbbq$6;-><init>(Lbbq;I)V

    invoke-virtual {v1, v2}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 2443
    return-void

    .end local v0    # "count":I
    :cond_0
    move v0, v1

    .line 12083
    goto :goto_0

    .line 2438
    :cond_1
    invoke-direct {p0}, Lbbo;->g()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method public final d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 3
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2101
    if-eqz p1, :cond_0

    .line 2102
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(J)V

    .line 2103
    const-string/jumbo v0, "ding.extension.comment.at"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e(Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lbbo;->f:Lbgp;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbgp;->b(Ljava/lang/String;Ljava/util/Map;)I

    .line 2106
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2485
    iget-object v0, p0, Lbbo;->b:Lbbq;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderless()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbq;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;Ljava/util/List;)V

    .line 2486
    invoke-virtual {p0}, Lbbo;->b()V

    .line 2487
    return-void
.end method

.method f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3207
    const/4 v0, 0x0

    .line 14068
    const-string/jumbo v1, "pref_key_has_no_more_all_dings"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3208
    return-void
.end method
