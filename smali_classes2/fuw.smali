.class public final Lfuw;
.super Ljava/lang/Object;
.source "RegionImpl.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "limitLevel"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lfuw;->b:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lfuw;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfuw;->b:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x1964

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lfuw;->a:Ljava/util/Map;

    .line 47
    iput p2, p0, Lfuw;->c:I

    .line 48
    invoke-direct {p0}, Lfuw;->c()V

    .line 49
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "regionV2List":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/presenter/region/RegionV2;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/presenter/region/RegionV2;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v4, "regionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/user/presenter/region/RegionV2;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "regionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/presenter/region/RegionV2;

    .line 101
    .local v1, "region":Lcom/alibaba/android/user/presenter/region/RegionV2;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v1    # "region":Lcom/alibaba/android/user/presenter/region/RegionV2;
    :cond_1
    invoke-static {}, Lcms;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    sget-object v6, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 115
    .local v0, "arabicCollator":Ljava/text/Collator;
    :goto_1
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 118
    .local v5, "str":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    .end local v0    # "arabicCollator":Ljava/text/Collator;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .restart local v0    # "arabicCollator":Ljava/text/Collator;
    goto :goto_1

    .line 121
    :cond_3
    return-object v3
.end method

.method private a(Lcom/alibaba/android/user/presenter/region/RegionV2;)Ljava/util/Stack;
    .locals 3
    .param p1, "region"    # Lcom/alibaba/android/user/presenter/region/RegionV2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ")",
            "Ljava/util/Stack",
            "<",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 173
    if-nez p1, :cond_1

    .line 174
    const/4 v0, 0x0

    .line 183
    :cond_0
    return-object v0

    .line 177
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 178
    .local v0, "regions":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/alibaba/android/user/presenter/region/RegionV2;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lfuw;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getParentCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "region":Lcom/alibaba/android/user/presenter/region/RegionV2;
    check-cast p1, Lcom/alibaba/android/user/presenter/region/RegionV2;

    .restart local p1    # "region":Lcom/alibaba/android/user/presenter/region/RegionV2;
    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/presenter/region/RegionV2;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "regionV2s":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/presenter/region/RegionV2;>;"
    const/4 v3, 0x0

    .line 214
    if-nez p1, :cond_1

    move-object v2, v3

    .line 226
    :cond_0
    return-object v2

    .line 218
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/presenter/region/RegionV2;

    .line 1231
    .local v1, "regionV2":Lcom/alibaba/android/user/presenter/region/RegionV2;
    if-nez v1, :cond_4

    move-object v0, v3

    .line 221
    .local v0, "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :cond_3
    :goto_1
    if-eqz v0, :cond_2

    .line 222
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1235
    .end local v0    # "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;-><init>()V

    .line 1236
    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->code:Ljava/lang/String;

    .line 1237
    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    .line 1238
    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    .line 1239
    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getSubRegionList()Ljava/util/List;

    move-result-object v5

    .line 1241
    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->getLevel()I

    move-result v6

    iget v7, p0, Lfuw;->c:I

    if-ge v6, v7, :cond_3

    .line 1242
    invoke-direct {p0, v5}, Lfuw;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    goto :goto_1
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_create_org_region_town_enable"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 252
    .local v0, "isEnable":Z
    return v0
.end method

.method private c()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 187
    iget-object v11, p0, Lfuw;->a:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 189
    iget-object v11, p0, Lfuw;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lezg$k;->regions_v2:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 190
    .local v4, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 194
    const-string/jumbo v11, "\\|"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "parts":[Ljava/lang/String;
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 199
    const/4 v11, 0x0

    aget-object v5, v8, v11

    .line 200
    .local v5, "key":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v1, v8, v11

    .line 201
    .local v1, "code":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v7, v8, v11

    .line 202
    .local v7, "parentCode":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v2, v8, v11

    .line 203
    .local v2, "displayName":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/android/user/presenter/region/RegionV2;

    invoke-direct {v9, v5, v1, v7, v2}, Lcom/alibaba/android/user/presenter/region/RegionV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v9, "region":Lcom/alibaba/android/user/presenter/region/RegionV2;
    iget-object v11, p0, Lfuw;->a:Ljava/util/Map;

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 206
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "parentCode":Ljava/lang/String;
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v9    # "region":Lcom/alibaba/android/user/presenter/region/RegionV2;
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 208
    :catch_1
    move-exception v10

    .line 209
    .local v10, "tr":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;-><init>()V

    .line 1064
    .local v0, "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    iget-object v1, p0, Lfuw;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/presenter/region/RegionV2;

    .line 1066
    if-eqz v1, :cond_0

    .line 1070
    invoke-direct {p0, v1}, Lfuw;->a(Lcom/alibaba/android/user/presenter/region/RegionV2;)Ljava/util/Stack;

    move-result-object v5

    .line 1071
    if-eqz v5, :cond_0

    .line 1072
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1073
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/presenter/region/RegionV2;->setLevel(I)V

    goto :goto_0

    .line 1075
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/presenter/region/RegionV2;

    .line 1076
    if-eqz v2, :cond_1

    .line 1077
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/presenter/region/RegionV2;->addSubRegion(Lcom/alibaba/android/user/presenter/region/RegionV2;)V

    goto :goto_1

    .line 1085
    :cond_3
    invoke-static {v3}, Lfuw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 54
    invoke-direct {p0, v1}, Lfuw;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    .line 55
    return-object v0
.end method
