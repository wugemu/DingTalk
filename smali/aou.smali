.class public final Laou;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 4
    .param p0, "rotation"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    .line 211
    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p0, v1

    .line 213
    cmpl-float v1, p0, v3

    if-ltz v1, :cond_1

    .line 214
    cmpl-float v1, p0, v3

    if-ltz v1, :cond_0

    cmpg-float v1, p0, v2

    if-gtz v1, :cond_0

    .line 215
    move v0, p0

    .line 226
    .local v0, "normalizedRotation":F
    :goto_0
    return v0

    .line 217
    .end local v0    # "normalizedRotation":F
    :cond_0
    rem-float v1, p0, v2

    sub-float v0, v1, v2

    .restart local v0    # "normalizedRotation":F
    goto :goto_0

    .line 220
    .end local v0    # "normalizedRotation":F
    :cond_1
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_2

    cmpg-float v1, p0, v3

    if-gez v1, :cond_2

    .line 221
    move v0, p0

    .restart local v0    # "normalizedRotation":F
    goto :goto_0

    .line 223
    .end local v0    # "normalizedRotation":F
    :cond_2
    rem-float v1, p0, v2

    add-float v0, v2, v1

    .restart local v0    # "normalizedRotation":F
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "raw"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static a(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x20

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-object v6

    .line 241
    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 242
    .local v0, "firstSpace":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 243
    move v1, v0

    .line 244
    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 245
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_2

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_0

    .line 251
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "y":Ljava/lang/String;
    const-string/jumbo v6, "left"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    const/4 v2, 0x0

    .line 265
    .local v2, "pivotX":F
    :goto_2
    const-string/jumbo v6, "top"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 266
    const/4 v3, 0x0

    .line 275
    .local v3, "pivotY":F
    :goto_3
    new-instance v6, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_3
    const-string/jumbo v6, "right"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v2, v6

    .restart local v2    # "pivotX":F
    goto :goto_2

    .line 259
    .end local v2    # "pivotX":F
    :cond_4
    const-string/jumbo v6, "center"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .restart local v2    # "pivotX":F
    goto :goto_2

    .line 267
    :cond_5
    const-string/jumbo v6, "bottom"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v3, v6

    .restart local v3    # "pivotY":F
    goto :goto_3

    .line 269
    .end local v3    # "pivotY":F
    :cond_6
    const-string/jumbo v6, "center"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .restart local v3    # "pivotY":F
    goto :goto_3
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 70
    const/4 p0, 0x0

    .line 1059
    .end local p0    # "json":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 71
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 72
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "json":Ljava/lang/Object;
    invoke-static {p0}, Laou;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 73
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Lorg/json/JSONArray;

    .line 1058
    .end local p0    # "json":Ljava/lang/Object;
    if-nez p0, :cond_3

    .line 1059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 1061
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1063
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Laou;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v1

    .line 74
    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 90
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 195
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 196
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 197
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 97
    const-string/jumbo v2, "props"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 104
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    if-nez p0, :cond_1

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 54
    :cond_0
    return-object v2

    .line 48
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Laou;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Laok;
    .locals 9
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Laok;"
        }
    .end annotation

    .prologue
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 163
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 164
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 189
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v7

    .line 166
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 168
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v7, v6}, Laok;->a(Ljava/lang/String;Ljava/lang/String;)Laok;

    move-result-object v7

    goto :goto_0

    .line 169
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v8, v6, Ljava/util/Map;

    if-eqz v8, :cond_0

    move-object v3, v6

    .line 170
    check-cast v3, Ljava/util/Map;

    .line 171
    .local v3, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .line 173
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 177
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v1, :cond_3

    .line 178
    invoke-static {v7, v7}, Laok;->a(Ljava/lang/String;Ljava/lang/String;)Laok;

    move-result-object v7

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "unexpected json parse error."

    invoke-static {v8, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const-string/jumbo v8, "origin"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "origin":Ljava/lang/String;
    const-string/jumbo v8, "transformed"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "transformed":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 183
    invoke-static {v7, v7}, Laok;->a(Ljava/lang/String;Ljava/lang/String;)Laok;

    move-result-object v7

    goto :goto_0

    .line 186
    :cond_4
    invoke-static {v4, v5}, Laok;->a(Ljava/lang/String;Ljava/lang/String;)Laok;

    move-result-object v7

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laok;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "interceptors"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 137
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v7, v6, Ljava/util/Map;

    if-nez v7, :cond_2

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 158
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1

    .line 140
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/16 v7, 0x8

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 141
    .local v1, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laok;>;"
    check-cast v6, Ljava/util/Map;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 142
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 145
    .local v5, "v":Ljava/lang/Object;
    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_3

    instance-of v8, v5, Ljava/util/Map;

    if-eqz v8, :cond_3

    .line 147
    const/4 v3, 0x0

    .line 149
    .local v3, "pair":Laok;
    :try_start_0
    check-cast v5, Ljava/util/Map;

    .end local v5    # "v":Ljava/lang/Object;
    const-string/jumbo v8, "expression"

    invoke-static {v5, v8}, Laou;->b(Ljava/util/Map;Ljava/lang/String;)Laok;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 153
    :goto_1
    if-eqz v3, :cond_3

    .line 154
    check-cast v2, Ljava/lang/String;

    .end local v2    # "k":Ljava/lang/Object;
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local v2    # "k":Ljava/lang/Object;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
