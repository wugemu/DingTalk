.class final Lajz$b;
.super Ljava/lang/Object;
.source "SystemConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lajz$b;->a:I

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajz$b;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lajz$b;
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    new-instance v5, Lajz$b;

    invoke-direct {v5}, Lajz$b;-><init>()V

    .line 288
    .local v5, "sampleItem":Lajz$b;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, "dataJson":Lorg/json/JSONObject;
    const-string/jumbo v6, "all_d"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    const-string/jumbo v6, "all_d"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lajz$b;->a:I

    .line 293
    :cond_0
    const-string/jumbo v6, "arg1"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "arg1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "arg1"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 296
    .local v4, "jsonArg1":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 297
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 298
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "i":I
    :cond_1
    iput-object v0, v5, Lajz$b;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0    # "arg1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "jsonArg1":Lorg/json/JSONArray;
    .end local v5    # "sampleItem":Lajz$b;
    :cond_2
    :goto_1
    return-object v5

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method b(Ljava/lang/String;)Z
    .locals 6
    .param p1, "arg1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lajz$b;->b:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lajz$b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 325
    iget-object v4, p0, Lajz$b;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 335
    .restart local v1    # "i":I
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
