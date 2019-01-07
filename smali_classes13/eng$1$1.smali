.class final Leng$1$1;
.super Ljava/lang/Object;
.source "AssureSyncHandler.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leng$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leng$1;


# direct methods
.method constructor <init>(Leng$1;)V
    .locals 0
    .param p1, "this$1"    # Leng$1;

    .prologue
    .line 40
    iput-object p1, p0, Leng$1$1;->a:Leng$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    check-cast p1, Ljava/util/List;

    .line 1043
    iget-object v0, p0, Leng$1$1;->a:Leng$1;

    iget-object v3, v0, Leng$1;->c:Leng;

    iget-object v0, p0, Leng$1$1;->a:Leng$1;

    iget-object v0, v0, Leng$1;->a:Ljava/util/List;

    iget-object v1, p0, Leng$1$1;->a:Leng$1;

    iget-object v4, v1, Leng$1;->b:Lcou;

    .line 2051
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2052
    invoke-static {v0}, Leng;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2053
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2054
    invoke-virtual {v3, v0, v4}, Leng;->a(Ljava/util/List;Lcou;)V

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2055
    :cond_1
    if-eqz v4, :cond_0

    .line 2056
    invoke-interface {v4}, Lcou;->a()V

    goto :goto_0

    .line 3018
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4018
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5018
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2067
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 2068
    if-eqz v0, :cond_3

    .line 5163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 5164
    if-eqz v1, :cond_4

    .line 5166
    iget-object v9, v0, Leot;->f:Ljava/lang/String;

    iget-object v10, v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->keyword:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Leot;->e:Ljava/lang/String;

    iget-object v10, v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->searchId:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2072
    :goto_2
    if-eqz v1, :cond_7

    .line 2073
    iget-object v8, v0, Leot;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2074
    iget-object v8, v0, Leot;->f:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5170
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 2080
    :cond_7
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6113
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .line 6115
    invoke-static {v8}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 6117
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-ge v2, v8, :cond_a

    .line 6118
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 6119
    if-eqz v0, :cond_9

    .line 6123
    iget-object v1, v0, Leot;->f:Ljava/lang/String;

    .line 6124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 6125
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .line 6126
    if-eqz v1, :cond_9

    .line 6128
    iget-object v0, v0, Leot;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->clickAtMills:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->clickAtMills:J

    .line 6130
    invoke-static {v1}, Lenk;->a(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v0

    .line 6133
    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel;->parseBaseModel()V

    .line 6135
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6117
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 2083
    :cond_a
    invoke-static {v6}, Leng;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6155
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 6156
    invoke-static {v1}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 6157
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6158
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2085
    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2086
    invoke-virtual {v3, v1, v4}, Leng;->a(Ljava/util/List;Lcou;)V

    goto/16 :goto_0

    .line 2088
    :cond_b
    if-eqz v4, :cond_0

    .line 2089
    invoke-interface {v4}, Lcou;->a()V

    goto/16 :goto_0
.end method
