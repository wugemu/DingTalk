.class public final Lkpu;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:C

.field private static final c:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkpu;->a:Ljava/lang/String;

    .line 120
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lkpu;->b:C

    .line 127
    invoke-static {}, Lkpu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/16 v0, 0x2f

    sput-char v0, Lkpu;->c:C

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lkpu;->c:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 861
    if-nez p0, :cond_0

    .line 862
    const/4 v1, 0x0

    .line 868
    :goto_0
    return-object v1

    .line 1581
    :cond_0
    if-nez p0, :cond_2

    move v0, v1

    .line 865
    .local v0, "index":I
    :cond_1
    :goto_1
    if-ne v0, v1, :cond_4

    .line 866
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1584
    .end local v0    # "index":I
    :cond_2
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2559
    if-nez p0, :cond_3

    move v2, v1

    .line 1586
    :goto_2
    if-le v2, v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 2562
    :cond_3
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2563
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2564
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 868
    .restart local v0    # "index":I
    :cond_4
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 148
    sget-char v0, Lkpu;->b:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1098
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lkpu;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .locals 13
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 1140
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1141
    const/4 v7, 0x1

    .line 1217
    :goto_0
    return v7

    .line 1143
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1144
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1146
    :cond_2
    if-nez p2, :cond_3

    .line 1147
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1149
    :cond_3
    invoke-virtual {p2, p0}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1150
    invoke-virtual {p2, p1}, Lorg/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3230
    const-string/jumbo v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    const-string/jumbo v7, "*"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 3231
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 1152
    .local v5, "wcs":[Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 1153
    .local v0, "anyChars":Z
    const/4 v4, 0x0

    .line 1154
    .local v4, "textIdx":I
    const/4 v6, 0x0

    .line 1155
    .local v6, "wcsIdx":I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1159
    .local v2, "backtrack":Ljava/util/Stack;
    :cond_4
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1160
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v1, v7

    check-cast v1, [I

    .line 1161
    .local v1, "array":[I
    const/4 v7, 0x0

    aget v6, v1, v7

    .line 1162
    const/4 v7, 0x1

    aget v4, v1, v7

    .line 1163
    const/4 v0, 0x1

    .line 1167
    .end local v1    # "array":[I
    :cond_5
    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_14

    .line 1169
    aget-object v7, v5, v6

    const-string/jumbo v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1171
    add-int/lit8 v4, v4, 0x1

    .line 1172
    const/4 v0, 0x0

    .line 1207
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3234
    .end local v0    # "anyChars":Z
    .end local v2    # "backtrack":Ljava/util/Stack;
    .end local v4    # "textIdx":I
    .end local v5    # "wcs":[Ljava/lang/String;
    .end local v6    # "wcsIdx":I
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 3235
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3236
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 3237
    const/4 v7, 0x0

    :goto_4
    array-length v11, v8

    if-ge v7, v11, :cond_e

    .line 3238
    aget-char v11, v8, v7

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_8

    aget-char v11, v8, v7

    const/16 v12, 0x2a

    if-ne v11, v12, :cond_d

    .line 3239
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-eqz v11, :cond_9

    .line 3240
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3241
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3243
    :cond_9
    aget-char v11, v8, v7

    const/16 v12, 0x3f

    if-ne v11, v12, :cond_b

    .line 3244
    const-string/jumbo v11, "?"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3237
    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3245
    :cond_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_c

    if-lez v7, :cond_a

    .line 3246
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 3247
    :cond_c
    const-string/jumbo v11, "*"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3250
    :cond_d
    aget-char v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 3253
    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eqz v7, :cond_f

    .line 3254
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3257
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    move-object v5, v7

    goto/16 :goto_1

    .line 1174
    .restart local v0    # "anyChars":Z
    .restart local v2    # "backtrack":Ljava/util/Stack;
    .restart local v4    # "textIdx":I
    .restart local v5    # "wcs":[Ljava/lang/String;
    .restart local v6    # "wcsIdx":I
    :cond_10
    aget-object v7, v5, v6

    const-string/jumbo v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1176
    const/4 v0, 0x1

    .line 1177
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    .line 1178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_3

    .line 1183
    :cond_11
    if-eqz v0, :cond_13

    .line 1185
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1186
    const/4 v7, -0x1

    if-eq v4, v7, :cond_14

    .line 1190
    aget-object v7, v5, v6

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1191
    .local v3, "repeat":I
    if-ltz v3, :cond_12

    .line 1192
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .end local v3    # "repeat":I
    :cond_12
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 1204
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1196
    :cond_13
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1211
    :cond_14
    array-length v7, v5

    if-ne v6, v7, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_15

    .line 1212
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1215
    :cond_15
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 1217
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
