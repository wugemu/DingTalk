.class final Lcom/alibaba/android/rimet/RimetDDContext$8;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/HealthWarner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initDoraemon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->b:Lcom/alibaba/android/rimet/RimetDDContext;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final robotAlarm(ILjava/util/Map;)V
    .locals 0
    .param p1, "warnCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1895
    .local p2, "alarmInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public final varargs warn(I[Ljava/lang/Object;)V
    .locals 12
    .param p1, "code"    # I
    .param p2, "value"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v11, 0x7f091f88

    const v10, 0x7f091f86

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1817
    sparse-switch p1, :sswitch_data_0

    .line 1890
    :goto_0
    return-void

    .line 1819
    :sswitch_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1820
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    const-string/jumbo v6, "description"

    iget-object v7, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    const v8, 0x7f092223

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    new-instance v5, Lhzu;

    invoke-direct {v5}, Lhzu;-><init>()V

    .line 1823
    .local v5, "wkAlarm":Lhzu;
    const-string/jumbo v6, "power"

    iput-object v6, v5, Lhzu;->a:Ljava/lang/String;

    .line 1824
    const/16 v6, 0x132

    iput v6, v5, Lhzu;->c:I

    .line 1825
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lhzu;->d:Ljava/lang/String;

    .line 1826
    iput-object v1, v5, Lhzu;->b:Ljava/util/Map;

    .line 1827
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v6

    .line 2081
    invoke-virtual {v6, v5}, Lhzr;->a(Lhzu;)V

    goto :goto_0

    .line 1830
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "wkAlarm":Lhzu;
    :sswitch_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1831
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    const-string/jumbo v6, "description"

    iget-object v7, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    const v8, 0x7f092222

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    new-instance v5, Lhzu;

    invoke-direct {v5}, Lhzu;-><init>()V

    .line 1834
    .restart local v5    # "wkAlarm":Lhzu;
    const-string/jumbo v6, "power"

    iput-object v6, v5, Lhzu;->a:Ljava/lang/String;

    .line 1835
    const/16 v6, 0x133

    iput v6, v5, Lhzu;->c:I

    .line 1836
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lhzu;->d:Ljava/lang/String;

    .line 1837
    iput-object v1, v5, Lhzu;->b:Ljava/util/Map;

    .line 1838
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v6

    .line 3081
    invoke-virtual {v6, v5}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_0

    .line 1841
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "wkAlarm":Lhzu;
    :sswitch_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1842
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v6, p2, v8

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1843
    .local v2, "trafficValue":F
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$500()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1

    .line 1844
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$500()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v2, v6

    .line 1845
    .local v4, "valueMB":F
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    .end local v4    # "valueMB":F
    :goto_1
    const-string/jumbo v6, "description"

    iget-object v7, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    const v8, 0x7f091f89

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    array-length v6, p2

    if-le v6, v9, :cond_0

    .line 1853
    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/String;

    .line 1854
    .local v0, "logs":Ljava/lang/String;
    const-string/jumbo v6, "logs"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    .end local v0    # "logs":Ljava/lang/String;
    :cond_0
    new-instance v5, Lhzu;

    invoke-direct {v5}, Lhzu;-><init>()V

    .line 1858
    .restart local v5    # "wkAlarm":Lhzu;
    const-string/jumbo v6, "traffic"

    iput-object v6, v5, Lhzu;->a:Ljava/lang/String;

    .line 1859
    const/16 v6, 0x12e

    iput v6, v5, Lhzu;->c:I

    .line 1860
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lhzu;->d:Ljava/lang/String;

    .line 1861
    iput-object v1, v5, Lhzu;->b:Ljava/util/Map;

    .line 1862
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v6

    .line 4081
    invoke-virtual {v6, v5}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_0

    .line 1847
    .end local v5    # "wkAlarm":Lhzu;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$600()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v2, v6

    .line 1848
    .local v3, "valueKB":F
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1865
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "trafficValue":F
    .end local v3    # "valueKB":F
    :sswitch_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1866
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v6, p2, v8

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1867
    .restart local v2    # "trafficValue":F
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$500()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    .line 1868
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$500()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v2, v6

    .line 1869
    .restart local v4    # "valueMB":F
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    .end local v4    # "valueMB":F
    :goto_2
    const-string/jumbo v6, "description"

    iget-object v7, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    const v8, 0x7f091f87

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    array-length v6, p2

    if-le v6, v9, :cond_2

    .line 1877
    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/String;

    .line 1878
    .restart local v0    # "logs":Ljava/lang/String;
    const-string/jumbo v6, "logs"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    .end local v0    # "logs":Ljava/lang/String;
    :cond_2
    new-instance v5, Lhzu;

    invoke-direct {v5}, Lhzu;-><init>()V

    .line 1881
    .restart local v5    # "wkAlarm":Lhzu;
    const-string/jumbo v6, "traffic"

    iput-object v6, v5, Lhzu;->a:Ljava/lang/String;

    .line 1882
    const/16 v6, 0x12f

    iput v6, v5, Lhzu;->c:I

    .line 1883
    iget-object v6, p0, Lcom/alibaba/android/rimet/RimetDDContext$8;->a:Landroid/content/res/Resources;

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lhzu;->d:Ljava/lang/String;

    .line 1884
    iput-object v1, v5, Lhzu;->b:Ljava/util/Map;

    .line 1885
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v6

    .line 5081
    invoke-virtual {v6, v5}, Lhzr;->a(Lhzu;)V

    goto/16 :goto_0

    .line 1871
    .end local v5    # "wkAlarm":Lhzu;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/rimet/RimetDDContext;->access$600()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v2, v6

    .line 1872
    .restart local v3    # "valueKB":F
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1817
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method
