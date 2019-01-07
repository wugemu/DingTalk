.class public final Lgxs;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lgyk;


# instance fields
.field protected final a:[Ljava/lang/Enum;

.field protected final b:[Ljava/lang/Enum;

.field protected c:[J

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgxs;->d:Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Enum;

    check-cast v7, [Ljava/lang/Enum;

    iput-object v7, p0, Lgxs;->b:[Ljava/lang/Enum;

    .line 24
    iget-object v7, p0, Lgxs;->b:[Ljava/lang/Enum;

    array-length v7, v7

    new-array v1, v7, [J

    .line 25
    .local v1, "enumNameHashCodes":[J
    iget-object v7, p0, Lgxs;->b:[Ljava/lang/Enum;

    array-length v7, v7

    new-array v7, v7, [J

    iput-object v7, p0, Lgxs;->c:[J

    .line 26
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lgxs;->b:[Ljava/lang/Enum;

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 27
    iget-object v7, p0, Lgxs;->b:[Ljava/lang/Enum;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "name":Ljava/lang/String;
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 29
    .local v2, "hash":J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 30
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 31
    .local v0, "ch":C
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 32
    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    .line 29
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 34
    .end local v0    # "ch":C
    :cond_0
    aput-wide v2, v1, v4

    .line 35
    iget-object v7, p0, Lgxs;->c:[J

    aput-wide v2, v7, v4

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    .end local v2    # "hash":J
    .end local v5    # "j":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lgxs;->c:[J

    invoke-static {v7}, Ljava/util/Arrays;->sort([J)V

    .line 40
    iget-object v7, p0, Lgxs;->b:[Ljava/lang/Enum;

    array-length v7, v7

    new-array v7, v7, [Ljava/lang/Enum;

    iput-object v7, p0, Lgxs;->a:[Ljava/lang/Enum;

    .line 41
    const/4 v4, 0x0

    :goto_2
    iget-object v7, p0, Lgxs;->c:[J

    array-length v7, v7

    if-ge v4, v7, :cond_4

    .line 42
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 43
    iget-object v7, p0, Lgxs;->c:[J

    aget-wide v8, v7, v4

    aget-wide v10, v1, v5

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 44
    iget-object v7, p0, Lgxs;->a:[Ljava/lang/Enum;

    iget-object v8, p0, Lgxs;->b:[Ljava/lang/Enum;

    aget-object v8, v8, v5

    aput-object v8, v7, v4

    .line 41
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 42
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 49
    .end local v5    # "j":I
    :cond_4
    return-void
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    :try_start_0
    iget-object v7, p1, Lgxr;->e:Lgxt;

    .line 56
    .local v7, "lexer":Lgxt;
    iget v9, v7, Lgxt;->a:I

    .line 57
    .local v9, "token":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 58
    invoke-virtual {v7}, Lgxt;->i()I

    move-result v3

    .line 59
    .local v3, "intValue":I
    const/16 v11, 0x10

    invoke-virtual {v7, v11}, Lgxt;->a(I)V

    .line 61
    if-ltz v3, :cond_0

    iget-object v11, p0, Lgxs;->b:[Ljava/lang/Enum;

    array-length v11, v11

    if-le v3, v11, :cond_1

    .line 62
    :cond_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "parse enum "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lgxs;->d:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " error, value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v3    # "intValue":I
    .end local v7    # "lexer":Lgxt;
    .end local v9    # "token":I
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    throw v1

    .line 65
    .end local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v3    # "intValue":I
    .restart local v7    # "lexer":Lgxt;
    .restart local v9    # "token":I
    :cond_1
    :try_start_1
    iget-object v11, p0, Lgxs;->b:[Ljava/lang/Enum;

    aget-object v11, v11, v3

    .line 91
    .end local v3    # "intValue":I
    :goto_0
    return-object v11

    .line 66
    :cond_2
    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    .line 67
    invoke-virtual {v7}, Lgxt;->k()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "name":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-virtual {v7, v11}, Lgxt;->a(I)V

    .line 70
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 71
    const/4 v11, 0x0

    goto :goto_0

    .line 74
    :cond_3
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 75
    .local v4, "hash":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 76
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "ch":C
    int-to-long v12, v0

    xor-long/2addr v4, v12

    .line 78
    const-wide v12, 0x100000001b3L

    mul-long/2addr v4, v12

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "ch":C
    :cond_4
    iget-object v11, p0, Lgxs;->c:[J

    invoke-static {v11, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 82
    .local v2, "enumIndex":I
    if-gez v2, :cond_5

    .line 83
    const/4 v11, 0x0

    goto :goto_0

    .line 86
    :cond_5
    iget-object v11, p0, Lgxs;->a:[Ljava/lang/Enum;

    aget-object v11, v11, v2

    goto :goto_0

    .line 87
    .end local v2    # "enumIndex":I
    .end local v4    # "hash":J
    .end local v6    # "j":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_6
    const/16 v11, 0x8

    if-ne v9, v11, :cond_7

    .line 89
    const/16 v11, 0x10

    invoke-virtual {v7, v11}, Lgxt;->a(I)V

    .line 91
    const/4 v11, 0x0

    goto :goto_0

    .line 2362
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 96
    .local v10, "value":Ljava/lang/Object;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "parse enum "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lgxs;->d:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " error, value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .end local v7    # "lexer":Lgxt;
    .end local v9    # "token":I
    .end local v10    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method
