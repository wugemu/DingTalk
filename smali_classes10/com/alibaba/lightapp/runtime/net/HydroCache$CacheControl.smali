.class public final Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;
.super Ljava/lang/Object;
.source "HydroCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/net/HydroCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    sget-object v8, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 266
    iput-wide v12, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J

    .line 270
    :try_start_0
    const-string/jumbo v8, "Pragma"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 271
    .local v7, "pragma":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "no-cache"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 272
    sget-object v8, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->REVALIDATE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 315
    .end local v7    # "pragma":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v7    # "pragma":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "Cache-Control"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "cacheControl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 278
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "policies":[Ljava/lang/String;
    array-length v9, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_6

    aget-object v6, v5, v8

    .line 280
    .local v6, "policy":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "p":Ljava/lang/String;
    const-string/jumbo v10, "no-store"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 282
    sget-object v8, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->NO_STORE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "cacheControl":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "policies":[Ljava/lang/String;
    .end local v6    # "policy":Ljava/lang/String;
    .end local v7    # "pragma":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cacheControl":Ljava/lang/String;
    .restart local v4    # "p":Ljava/lang/String;
    .restart local v5    # "policies":[Ljava/lang/String;
    .restart local v6    # "policy":Ljava/lang/String;
    .restart local v7    # "pragma":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v10, "must-revalidate"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 286
    sget-object v10, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->REVALIDATE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 288
    :cond_3
    const-string/jumbo v10, "no-cache"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 289
    sget-object v10, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->REVALIDATE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    .line 291
    :cond_4
    const-string/jumbo v10, "max-age"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 292
    const/16 v10, 0x3d

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 293
    .local v2, "equal":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_5

    .line 294
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 296
    .local v3, "maxAgeStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v2    # "equal":I
    .end local v3    # "maxAgeStr":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 298
    .restart local v2    # "equal":I
    .restart local v3    # "maxAgeStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 306
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "equal":I
    .end local v3    # "maxAgeStr":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "policies":[Ljava/lang/String;
    .end local v6    # "policy":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    sget-object v9, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;->NO_STORE:Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl$TYPE;

    if-eq v8, v9, :cond_0

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J

    cmp-long v8, v12, v8

    if-nez v8, :cond_0

    .line 309
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/alibaba/lightapp/runtime/net/HydroCache$CacheControl;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
