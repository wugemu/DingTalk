.class public final Ldu;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldu$b;,
        Ldu$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 172
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    .line 184
    .end local v0    # "c":C
    :cond_1
    return p1

    .line 182
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 6
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 74
    .local v2, "path":Landroid/graphics/Path;
    invoke-static {p0}, Ldu;->b(Ljava/lang/String;)[Ldu$b;

    move-result-object v1

    .line 75
    .local v1, "nodes":[Ldu$b;
    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-static {v1, v2}, Ldu$b;->a([Ldu$b;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_0
    return-object v2

    .line 78
    .restart local v2    # "path":Landroid/graphics/Path;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error in parsing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 83
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;C[F)V
    .locals 1
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldu$b;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldu$b;>;"
    new-instance v0, Ldu$b;

    invoke-direct {v0, p1, p2}, Ldu$b;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public static a([Ldu$b;[Ldu$b;)Z
    .locals 4
    .param p0, "nodesFrom"    # [Ldu$b;
    .param p1, "nodesTo"    # [Ldu$b;

    .prologue
    const/4 v1, 0x0

    .line 136
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 145
    aget-object v2, p0, v0

    iget-char v2, v2, Ldu$b;->a:C

    aget-object v3, p1, v0

    iget-char v3, v3, Ldu$b;->a:C

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v0

    iget-object v2, v2, Ldu$b;->b:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Ldu$b;->b:[F

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static a([FII)[F
    .locals 6
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 54
    if-gez p2, :cond_0

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 57
    :cond_0
    array-length v1, p0

    .line 58
    .local v1, "originalLength":I
    if-gez v1, :cond_1

    .line 59
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 61
    :cond_1
    add-int/lit8 v3, p2, 0x0

    .line 62
    .local v3, "resultLength":I
    add-int/lit8 v4, v1, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 64
    .local v2, "result":[F
    invoke-static {p0, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v2
.end method

.method public static a([Ldu$b;)[Ldu$b;
    .locals 4
    .param p0, "source"    # [Ldu$b;

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 127
    :cond_0
    return-object v0

    .line 123
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Ldu$b;

    .line 124
    .local v0, "copy":[Ldu$b;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 125
    new-instance v2, Ldu$b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ldu$b;-><init>(Ldu$b;)V

    aput-object v2, v0, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[Ldu$b;
    .locals 8
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v5, 0x0

    .line 112
    :goto_0
    return-object v5

    .line 94
    :cond_0
    const/4 v3, 0x0

    .line 95
    .local v3, "start":I
    const/4 v0, 0x1

    .line 97
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldu$b;>;"
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 99
    invoke-static {p0, v0}, Ldu;->a(Ljava/lang/String;I)I

    move-result v0

    .line 100
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 102
    invoke-static {v2}, Ldu;->c(Ljava/lang/String;)[F

    move-result-object v4

    .line 103
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Ldu;->a(Ljava/util/ArrayList;C[F)V

    .line 106
    .end local v4    # "val":[F
    :cond_1
    move v3, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    goto :goto_1

    .line 109
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 110
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Ldu;->a(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ldu$b;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ldu$b;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)[F
    .locals 14
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_1

    .line 210
    :cond_0
    const/4 v8, 0x0

    new-array v8, v8, [F

    .line 240
    :goto_0
    return-object v8

    .line 213
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 214
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 215
    .local v0, "count":I
    const/4 v6, 0x1

    .line 218
    .local v6, "startPosition":I
    new-instance v4, Ldu$a;

    invoke-direct {v4}, Ldu$a;-><init>()V

    .line 219
    .local v4, "result":Ldu$a;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 224
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    if-ge v6, v7, :cond_6

    .line 1257
    const/4 v10, 0x0

    .line 1258
    const/4 v8, 0x0

    iput-boolean v8, v4, Ldu$a;->b:Z

    .line 1259
    const/4 v9, 0x0

    .line 1260
    const/4 v8, 0x0

    move v11, v8

    move v12, v6

    .line 1261
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v12, v8, :cond_4

    .line 1263
    const/4 v8, 0x0

    .line 1264
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1265
    sparse-switch v13, :sswitch_data_0

    .line 1291
    :cond_2
    :goto_3
    if-nez v10, :cond_4

    .line 1261
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move v11, v8

    goto :goto_2

    .line 1268
    :sswitch_0
    const/4 v10, 0x1

    .line 1269
    goto :goto_3

    .line 1272
    :sswitch_1
    if-eq v12, v6, :cond_2

    if-nez v11, :cond_2

    .line 1273
    const/4 v10, 0x1

    .line 1274
    const/4 v11, 0x1

    iput-boolean v11, v4, Ldu$a;->b:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 241
    .end local v1    # "count":I
    .end local v4    # "result":Ldu$a;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "error in parsing \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1278
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v4    # "result":Ldu$a;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :sswitch_2
    if-nez v9, :cond_3

    .line 1279
    const/4 v9, 0x1

    goto :goto_3

    .line 1282
    :cond_3
    const/4 v10, 0x1

    .line 1283
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, v4, Ldu$a;->b:Z

    goto :goto_3

    .line 1288
    :sswitch_3
    const/4 v8, 0x1

    goto :goto_3

    .line 1297
    :cond_4
    iput v12, v4, Ldu$a;->a:I

    .line 226
    iget v3, v4, Ldu$a;->a:I

    .line 228
    .local v3, "endPosition":I
    if-ge v6, v3, :cond_7

    .line 229
    add-int/lit8 v0, v1, 0x1

    .line 230
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 229
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 233
    :goto_4
    iget-boolean v8, v4, Ldu$a;->b:Z

    if-eqz v8, :cond_5

    .line 235
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 237
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_5
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 240
    .end local v3    # "endPosition":I
    :cond_6
    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, Ldu;->a([FII)[F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .restart local v3    # "endPosition":I
    :cond_7
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_4

    .line 1265
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
