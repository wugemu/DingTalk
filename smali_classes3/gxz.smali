.class final Lgxz;
.super Ljava/lang/Object;
.source "MapDeserializer.java"

# interfaces
.implements Lgyk;


# static fields
.field public static a:Lgxz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lgxz;

    invoke-direct {v0}, Lgxz;-><init>()V

    sput-object v0, Lgxz;->a:Lgxz;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lgxr;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 15
    .param p0, "parser"    # Lgxr;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .param p3, "valueType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v4, p0, Lgxr;->e:Lgxt;

    .line 173
    .local v4, "lexer":Lgxt;
    iget v9, v4, Lgxt;->a:I

    .line 174
    .local v9, "token":I
    const/16 v12, 0xc

    if-eq v9, v12, :cond_0

    const/16 v12, 0x10

    if-eq v9, v12, :cond_0

    .line 175
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "syntax error, expect {, actual "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 178
    :cond_0
    iget-object v12, p0, Lgxr;->b:Lgyb;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v3

    .line 179
    .local v3, "keyDeserializer":Lgyk;
    iget-object v12, p0, Lgxr;->b:Lgyb;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v11

    .line 180
    .local v11, "valueDeserializer":Lgyk;
    invoke-virtual {v4}, Lgxt;->e()V

    .line 182
    iget-object v1, p0, Lgxr;->f:Lgya;

    .line 185
    .local v1, "context":Lgya;
    :cond_1
    :goto_0
    :try_start_0
    iget v9, v4, Lgxt;->a:I

    .line 186
    const/16 v12, 0xd

    if-ne v9, v12, :cond_2

    .line 187
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lgxt;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Lgxr;->a(Lgya;)V

    .line 265
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    return-object p1

    .line 191
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    const/4 v12, 0x4

    if-ne v9, v12, :cond_8

    :try_start_1
    iget v12, v4, Lgxt;->g:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_8

    iget-object v12, v4, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v13, "$ref"

    iget v14, v4, Lgxt;->j:I

    add-int/lit8 v14, v14, 0x1

    .line 192
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 193
    invoke-virtual {v4, v12}, Lgxt;->a(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 194
    const/4 v5, 0x0

    .line 196
    .local v5, "object":Ljava/lang/Object;
    const/16 v12, 0x3a

    invoke-virtual {v4, v12}, Lgxt;->a(C)V

    .line 197
    iget v12, v4, Lgxt;->a:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    .line 198
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "ref":Ljava/lang/String;
    const-string/jumbo v12, ".."

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 200
    iget-object v6, v1, Lgya;->b:Lgya;

    .line 201
    .local v6, "parentContext":Lgya;
    iget-object v5, v6, Lgya;->a:Ljava/lang/Object;

    .line 217
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "parentContext":Lgya;
    :goto_2
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Lgxt;->a(I)V

    .line 218
    iget v12, v4, Lgxt;->a:I

    const/16 v13, 0xd

    if-eq v12, v13, :cond_7

    .line 219
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "illegal ref"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v7    # "ref":Ljava/lang/String;
    :catchall_0
    move-exception v12

    invoke-virtual {p0, v1}, Lgxr;->a(Lgya;)V

    .line 263
    throw v12

    .line 202
    .restart local v5    # "object":Ljava/lang/Object;
    .restart local v7    # "ref":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v12, "$"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 203
    move-object v8, v1

    .line 204
    .local v8, "rootContext":Lgya;
    :goto_3
    iget-object v12, v8, Lgya;->b:Lgya;

    if-eqz v12, :cond_4

    .line 205
    iget-object v8, v8, Lgya;->b:Lgya;

    goto :goto_3

    .line 208
    :cond_4
    iget-object v5, v8, Lgya;->a:Ljava/lang/Object;

    .line 209
    goto :goto_2

    .line 210
    .end local v8    # "rootContext":Lgya;
    :cond_5
    new-instance v12, Lgxr$a;

    invoke-direct {v12, v1, v7}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lgxr;->a(Lgxr$a;)V

    .line 211
    const/4 v12, 0x1

    iput v12, p0, Lgxr;->g:I

    goto :goto_2

    .line 214
    .end local v7    # "ref":Ljava/lang/String;
    :cond_6
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "illegal ref, "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 221
    .end local v5    # "object":Ljava/lang/Object;
    .restart local v7    # "ref":Ljava/lang/String;
    :cond_7
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lgxt;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Lgxr;->a(Lgya;)V

    move-object/from16 p1, v5

    .line 226
    goto/16 :goto_1

    .line 229
    .end local v7    # "ref":Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x4

    if-ne v9, v12, :cond_a

    const-string/jumbo v12, "@type"

    .line 231
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 232
    invoke-virtual {v4, v12}, Lgxt;->a(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 233
    const/16 v12, 0x3a

    invoke-virtual {v4, v12}, Lgxt;->a(C)V

    .line 234
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lgxt;->a(I)V

    .line 235
    iget v12, v4, Lgxt;->a:I

    const/16 v13, 0xd

    if-ne v12, v13, :cond_9

    .line 236
    invoke-virtual {v4}, Lgxt;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Lgxr;->a(Lgya;)V

    goto/16 :goto_1

    .line 239
    :cond_9
    :try_start_4
    invoke-virtual {v4}, Lgxt;->e()V

    .line 242
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, p0, v0, v12}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "key":Ljava/lang/Object;
    iget v12, v4, Lgxt;->a:I

    const/16 v13, 0x11

    if-eq v12, v13, :cond_b

    .line 245
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "syntax error, expect :, actual "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v4, Lgxt;->a:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 248
    :cond_b
    invoke-virtual {v4}, Lgxt;->e()V

    .line 250
    move-object/from16 v0, p3

    invoke-interface {v11, p0, v0, v2}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 251
    .local v10, "value":Ljava/lang/Object;
    iget v12, p0, Lgxr;->g:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2}, Lgxr;->b(Ljava/util/Map;Ljava/lang/Object;)V

    .line 255
    :cond_c
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v12, v4, Lgxt;->a:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_1

    .line 258
    invoke-virtual {v4}, Lgxt;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private static a(Lgxr;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 12
    .param p0, "parser"    # Lgxr;
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lgxr;->e:Lgxt;

    .line 60
    .local v5, "lexer":Lgxt;
    iget v9, v5, Lgxt;->a:I

    const/16 v10, 0xc

    if-eq v9, v10, :cond_0

    .line 61
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, expect {, actual "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Lgxt;->a:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 64
    :cond_0
    iget-object v2, p0, Lgxr;->f:Lgya;

    .line 67
    .local v2, "context":Lgya;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lgxt;->m()V

    .line 68
    iget-char v0, v5, Lgxt;->d:C

    .line 69
    .local v0, "ch":C
    :goto_0
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_2

    .line 70
    invoke-virtual {v5}, Lgxt;->c()C

    .line 71
    invoke-virtual {v5}, Lgxt;->m()V

    .line 72
    iget-char v0, v5, Lgxt;->d:C

    goto :goto_0

    .line 76
    :cond_2
    const/16 v9, 0x22

    if-ne v0, v9, :cond_3

    .line 77
    iget-object v9, p0, Lgxr;->a:Lgyd;

    const/16 v10, 0x22

    invoke-virtual {v5, v9, v10}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v5}, Lgxt;->m()V

    .line 79
    iget-char v0, v5, Lgxt;->d:C

    .line 80
    const/16 v9, 0x3a

    if-eq v0, v9, :cond_6

    .line 81
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "ch":C
    .end local v4    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    .line 165
    throw v9

    .line 83
    .restart local v0    # "ch":C
    :cond_3
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_4

    .line 84
    :try_start_1
    invoke-virtual {v5}, Lgxt;->c()C

    .line 85
    const/4 v9, 0x0

    iput v9, v5, Lgxt;->g:I

    .line 86
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lgxt;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    .line 160
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-object p1

    .line 88
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/16 v9, 0x27

    if-ne v0, v9, :cond_5

    .line 89
    :try_start_2
    iget-object v9, p0, Lgxr;->a:Lgyd;

    const/16 v10, 0x27

    invoke-virtual {v5, v9, v10}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v4

    .line 90
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v5}, Lgxt;->m()V

    .line 91
    iget-char v0, v5, Lgxt;->d:C

    .line 92
    const/16 v9, 0x3a

    if-eq v0, v9, :cond_6

    .line 93
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 96
    .end local v4    # "key":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lgxr;->a:Lgyd;

    invoke-virtual {v5, v9}, Lgxt;->b(Lgyd;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v5}, Lgxt;->m()V

    .line 98
    iget-char v0, v5, Lgxt;->d:C

    .line 99
    const/16 v9, 0x3a

    if-eq v0, v9, :cond_6

    .line 100
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "expect \':\' at "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v5, Lgxt;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", actual "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 104
    :cond_6
    invoke-virtual {v5}, Lgxt;->c()C

    .line 105
    invoke-virtual {v5}, Lgxt;->m()V

    .line 106
    iget-char v9, v5, Lgxt;->d:C

    .line 108
    const/4 v9, 0x0

    iput v9, v5, Lgxt;->g:I

    .line 110
    const-string/jumbo v9, "@type"

    if-ne v4, v9, :cond_9

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v5, v9}, Lgxt;->a(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 111
    iget-object v9, p0, Lgxr;->a:Lgyd;

    const/16 v10, 0x22

    invoke-virtual {v5, v9, v10}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "typeName":Ljava/lang/String;
    iget-object v9, p0, Lgxr;->b:Lgyb;

    const/4 v10, 0x0

    iget v11, v5, Lgxt;->c:I

    invoke-virtual {v9, v7, v10, v11}, Lgyb;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    .line 114
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v1, v9, :cond_7

    .line 115
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lgxt;->a(I)V

    .line 116
    iget v9, v5, Lgxt;->a:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    .line 117
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lgxt;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    goto/16 :goto_1

    .line 123
    :cond_7
    :try_start_3
    iget-object v9, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v9, v1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v3

    .line 125
    .local v3, "deserializer":Lgyk;
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lgxt;->a(I)V

    .line 127
    const/4 v9, 0x2

    iput v9, p0, Lgxr;->g:I

    .line 129
    if-eqz v2, :cond_8

    instance-of v9, p3, Ljava/lang/Integer;

    if-nez v9, :cond_8

    .line 130
    invoke-virtual {p0}, Lgxr;->d()V

    .line 133
    :cond_8
    invoke-interface {v3, p0, v1, p3}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    move-object p1, v9

    .line 133
    goto/16 :goto_1

    .line 137
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "deserializer":Lgyk;
    .end local v7    # "typeName":Ljava/lang/String;
    :cond_9
    :try_start_4
    invoke-virtual {v5}, Lgxt;->e()V

    .line 139
    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    .line 140
    iget v9, v5, Lgxt;->a:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_c

    .line 141
    const/4 v8, 0x0

    .line 142
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Lgxt;->e()V

    .line 147
    .end local v8    # "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v9, p0, Lgxr;->g:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 149
    invoke-virtual {p0, p1, v4}, Lgxr;->b(Ljava/util/Map;Ljava/lang/Object;)V

    .line 151
    :cond_a
    invoke-virtual {p0, v2, v8, v4}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    .line 153
    iget v6, v5, Lgxt;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .local v6, "tok":I
    const/16 v9, 0x14

    if-eq v6, v9, :cond_b

    const/16 v9, 0xf

    if-ne v6, v9, :cond_d

    .line 164
    :cond_b
    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    goto/16 :goto_1

    .line 144
    .end local v6    # "tok":I
    :cond_c
    :try_start_5
    invoke-virtual {p0, p2, v4}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 158
    .end local v8    # "value":Ljava/lang/Object;
    .restart local v6    # "tok":I
    :cond_d
    const/16 v9, 0xd

    if-ne v6, v9, :cond_1

    .line 159
    invoke-virtual {v5}, Lgxt;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lgxr;->a(Lgya;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 270
    :goto_0
    const-class v5, Ljava/util/Properties;

    if-ne p1, v5, :cond_0

    .line 271
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 321
    :goto_1
    return-object v5

    .line 274
    :cond_0
    const-class v5, Ljava/util/Hashtable;

    if-ne p1, v5, :cond_1

    .line 275
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    goto :goto_1

    .line 278
    :cond_1
    const-class v5, Ljava/util/IdentityHashMap;

    if-ne p1, v5, :cond_2

    .line 279
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_1

    .line 282
    :cond_2
    const-class v5, Ljava/util/SortedMap;

    if-eq p1, v5, :cond_3

    const-class v5, Ljava/util/TreeMap;

    if-ne p1, v5, :cond_4

    .line 283
    :cond_3
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    goto :goto_1

    .line 286
    :cond_4
    const-class v5, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v5, :cond_5

    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v5, :cond_6

    .line 287
    :cond_5
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_1

    .line 290
    :cond_6
    const-class v5, Ljava/util/Map;

    if-eq p1, v5, :cond_7

    const-class v5, Ljava/util/HashMap;

    if-ne p1, v5, :cond_8

    .line 291
    :cond_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 294
    :cond_8
    const-class v5, Ljava/util/LinkedHashMap;

    if-ne p1, v5, :cond_9

    .line 295
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 298
    :cond_9
    const-class v5, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v5, :cond_a

    .line 299
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_1

    .line 302
    :cond_a
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_c

    move-object v3, p1

    .line 303
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 305
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 306
    .local v4, "rawType":Ljava/lang/reflect/Type;
    const-class v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 307
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 309
    .local v0, "actualArgs":[Ljava/lang/reflect/Type;
    new-instance v6, Ljava/util/EnumMap;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/Class;

    invoke-direct {v6, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v5, v6

    goto/16 :goto_1

    .line 312
    .end local v0    # "actualArgs":[Ljava/lang/reflect/Type;
    :cond_b
    move-object p1, v4

    goto/16 :goto_0

    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "rawType":Ljava/lang/reflect/Type;
    :cond_c
    move-object v1, p1

    .line 315
    check-cast v1, Ljava/lang/Class;

    .line 316
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 317
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unsupport type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_d
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unsupport type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 22
    const-class v7, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, v7, :cond_1

    iget-object v7, p1, Lgxr;->j:Lgyj;

    if-nez v7, :cond_1

    .line 2084
    iget-object v7, p1, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->c:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_0

    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2087
    :goto_0
    invoke-virtual {p1, v7, v8}, Lgxr;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 49
    :goto_1
    return-object v7

    .line 2084
    :cond_0
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v3, p1, Lgxr;->e:Lgxt;

    .line 27
    .local v3, "lexer":Lgxt;
    iget v7, v3, Lgxt;->a:I

    const/16 v9, 0x8

    if-ne v7, v9, :cond_2

    .line 28
    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Lgxt;->a(I)V

    move-object v7, v8

    .line 29
    goto :goto_1

    .line 32
    :cond_2
    invoke-direct {p0, p2}, Lgxz;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v4

    .line 34
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v1, p1, Lgxr;->f:Lgya;

    .line 37
    .local v1, "context":Lgya;
    :try_start_0
    invoke-virtual {p1, v1, v4, p3}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    .line 38
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    .line 39
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v5, v0

    .line 40
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v2, v7, v8

    .line 41
    .local v2, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v6, v7, v8

    .line 43
    .local v6, "valueType":Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    if-ne v7, v2, :cond_3

    .line 44
    invoke-static {p1, v4, v6, p3}, Lgxz;->a(Lgxr;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 52
    invoke-virtual {p1, v1}, Lgxr;->a(Lgya;)V

    goto :goto_1

    .line 46
    :cond_3
    :try_start_1
    invoke-static {p1, v4, v2, v6}, Lgxz;->a(Lgxr;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 52
    invoke-virtual {p1, v1}, Lgxr;->a(Lgya;)V

    goto :goto_1

    .line 49
    .end local v2    # "keyType":Ljava/lang/reflect/Type;
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "valueType":Ljava/lang/reflect/Type;
    :cond_4
    :try_start_2
    invoke-virtual {p1, v4, p3}, Lgxr;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 52
    invoke-virtual {p1, v1}, Lgxr;->a(Lgya;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-virtual {p1, v1}, Lgxr;->a(Lgya;)V

    .line 53
    throw v7
.end method
