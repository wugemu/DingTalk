.class final Laki$a;
.super Ljava/lang/Object;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/util/Random;


# instance fields
.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Laki$a;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Laki$a;->b:I

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laki$a;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(I)Z
    .locals 4
    .param p0, "aNumber"    # I

    .prologue
    const/4 v1, 0x0

    .line 221
    if-nez p0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    sget-object v2, Laki$a;->a:Ljava/util/Random;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 225
    .local v0, "aRandomNumber":I
    if-ge v0, p0, :cond_0

    .line 226
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Laki$a;
    .locals 8
    .param p0, "aJsonStr"    # Ljava/lang/String;

    .prologue
    .line 234
    :try_start_0
    new-instance v6, Laki$a;

    invoke-direct {v6}, Laki$a;-><init>()V

    .line 235
    .local v6, "lSampleItem":Laki$a;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, "lDataJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "cp"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 237
    const-string/jumbo v7, "cp"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Laki$a;->b:I

    .line 240
    :cond_0
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v1, "lArg1CP":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 243
    .local v3, "lJsonArg1":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 245
    .local v5, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 247
    .local v4, "lKey":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v1    # "lArg1CP":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "lDataJson":Lorg/json/JSONObject;
    .end local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v5    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lSampleItem":Laki$a;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v6

    .line 250
    .restart local v1    # "lArg1CP":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "lDataJson":Lorg/json/JSONObject;
    .restart local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .restart local v6    # "lSampleItem":Laki$a;
    :cond_2
    :try_start_1
    iput-object v1, v6, Laki$a;->c:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "lArg1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    if-eqz p1, :cond_4

    .line 192
    :try_start_0
    iget-object v3, p0, Laki$a;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 193
    .local v2, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "lKey":Ljava/lang/String;
    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "lContent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Laki$a;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laki$a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 217
    .end local v0    # "lContent":Ljava/lang/String;
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return v3

    .restart local v0    # "lContent":Ljava/lang/String;
    .restart local v1    # "lKey":Ljava/lang/String;
    .restart local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    move v3, v5

    .line 201
    goto :goto_0

    .line 205
    .end local v0    # "lContent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Laki$a;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laki$a;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 207
    goto :goto_0

    :cond_3
    move v3, v5

    .line 209
    goto :goto_0

    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 217
    :cond_4
    iget v3, p0, Laki$a;->b:I

    invoke-static {v3}, Laki$a;->a(I)Z

    move-result v3

    goto :goto_0
.end method
