.class public final Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lgyk;
.implements Lgys;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1, "parser"    # Lgxr;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    .prologue
    .line 142
    const-class v17, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/MiscCodec;->parseStackTraceElement(Lgxr;)Ljava/lang/Object;

    move-result-object v5

    .line 257
    .end local p2    # "clazz":Ljava/lang/reflect/Type;
    :goto_0
    return-object v5

    .line 146
    .restart local p2    # "clazz":Ljava/lang/reflect/Type;
    :cond_0
    move-object/from16 v0, p1

    iget-object v10, v0, Lgxr;->e:Lgxt;

    .line 150
    .local v10, "lexer":Lgxt;
    move-object/from16 v0, p1

    iget v0, v0, Lgxr;->g:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 151
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lgxr;->g:I

    .line 152
    const/16 v17, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgxr;->a(I)V

    .line 154
    invoke-virtual {v10}, Lgxt;->a()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 155
    const-string/jumbo v17, "val"

    invoke-virtual {v10}, Lgxt;->k()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 156
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "syntax error"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 158
    :cond_1
    invoke-virtual {v10}, Lgxt;->e()V

    .line 163
    const/16 v17, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgxr;->a(I)V

    .line 3362
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 167
    .local v12, "objVal":Ljava/lang/Object;
    const/16 v17, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgxr;->a(I)V

    .line 172
    :goto_1
    if-nez v12, :cond_4

    .line 173
    const/4 v5, 0x0

    goto :goto_0

    .line 160
    .end local v12    # "objVal":Ljava/lang/Object;
    :cond_2
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "syntax error"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4362
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 169
    .restart local v12    # "objVal":Ljava/lang/Object;
    goto :goto_1

    .line 177
    :cond_4
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v13, v12

    .line 178
    check-cast v13, Ljava/lang/String;

    .line 202
    .local v13, "strVal":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 203
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 180
    .end local v13    # "strVal":Ljava/lang/String;
    :cond_5
    instance-of v0, v12, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object v9, v12

    .line 181
    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    .line 183
    .local v9, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-class v17, Ljava/util/Currency;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 184
    const-string/jumbo v17, "currency"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "currency":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 186
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto/16 :goto_0

    .line 189
    :cond_6
    const-string/jumbo v17, "currencyCode"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "symbol":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 191
    invoke-static {v14}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto/16 :goto_0

    .line 195
    .end local v4    # "currency":Ljava/lang/String;
    .end local v14    # "symbol":Ljava/lang/String;
    :cond_7
    const-class v17, Ljava/util/Map$Entry;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 196
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 199
    .end local v9    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "except string value"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 206
    .restart local v13    # "strVal":Ljava/lang/String;
    :cond_9
    const-class v17, Ljava/util/UUID;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 207
    invoke-static {v13}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    goto/16 :goto_0

    .line 208
    :cond_a
    const-class v17, Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 209
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgyb;->c:Ljava/lang/ClassLoader;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Lgzd;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_0

    .line 210
    :cond_b
    const-class v17, Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 211
    const-string/jumbo v17, "_"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, "items":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 214
    new-instance v5, Ljava/util/Locale;

    const/16 v17, 0x0

    aget-object v17, v8, v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_c
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 218
    new-instance v5, Ljava/util/Locale;

    const/16 v17, 0x0

    aget-object v17, v8, v17

    const/16 v18, 0x1

    aget-object v18, v8, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_d
    new-instance v5, Ljava/util/Locale;

    const/16 v17, 0x0

    aget-object v17, v8, v17

    const/16 v18, 0x1

    aget-object v18, v8, v18

    const/16 v19, 0x2

    aget-object v19, v8, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v8    # "items":[Ljava/lang/String;
    :cond_e
    const-class v17, Ljava/net/URI;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 223
    invoke-static {v13}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    goto/16 :goto_0

    .line 224
    :cond_f
    const-class v17, Ljava/net/URL;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 226
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v6

    .line 228
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "create url error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 230
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :cond_10
    const-class v17, Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 231
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    goto/16 :goto_0

    .line 232
    :cond_11
    const-class v17, Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 233
    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto/16 :goto_0

    .line 234
    :cond_12
    const-class v17, Ljava/util/Currency;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 235
    invoke-static {v13}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    goto/16 :goto_0

    .line 236
    :cond_13
    const-class v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 237
    new-instance v5, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgxt;->m:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 238
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgxt;->l:Ljava/util/TimeZone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 240
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_14
    sget-object v17, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_15

    const-class v17, Ljava/lang/Character;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 241
    :cond_15
    invoke-static {v13}, Lgzd;->c(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v5

    goto/16 :goto_0

    .line 243
    :cond_16
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 244
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "clazz":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "className":Ljava/lang/String;
    const-string/jumbo v17, "android.net.Uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 247
    :try_start_1
    const-string/jumbo v17, "android.net.Uri"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 248
    .local v16, "uriClass":Ljava/lang/Class;
    const-string/jumbo v17, "parse"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 249
    .local v11, "method":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .local v15, "uri":Ljava/lang/Object;
    move-object v5, v15

    .line 250
    goto/16 :goto_0

    .line 251
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "uri":Ljava/lang/Object;
    .end local v16    # "uriClass":Ljava/lang/Class;
    :catch_1
    move-exception v7

    .line 252
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "parse android.net.Uri error."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 257
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_17
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected final parseStackTraceElement(Lgxr;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lgxr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x4

    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 263
    iget-object v4, p1, Lgxr;->e:Lgxt;

    .line 265
    .local v4, "lexer":Lgxt;
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 266
    invoke-virtual {v4}, Lgxt;->e()V

    .line 267
    const/4 v7, 0x0

    .line 356
    :goto_0
    return-object v7

    .line 270
    :cond_0
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 271
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syntax error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgxt;->a()I

    move-result v9

    invoke-static {v9}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 274
    :cond_1
    const/4 v0, 0x0

    .line 275
    .local v0, "declaringClass":Ljava/lang/String;
    const/4 v6, 0x0

    .line 276
    .local v6, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 277
    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 281
    .local v5, "lineNumber":I
    :cond_2
    iget-object v7, p1, Lgxr;->a:Lgyd;

    invoke-virtual {v4, v7}, Lgxt;->a(Lgyd;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 284
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v12, :cond_3

    .line 285
    invoke-virtual {v4, v10}, Lgxt;->a(I)V

    .line 356
    :goto_1
    new-instance v7, Ljava/lang/StackTraceElement;

    invoke-direct {v7, v0, v6, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 293
    :cond_4
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Lgxt;->a(C)V

    .line 294
    const-string/jumbo v7, "className"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 295
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 296
    const/4 v0, 0x0

    .line 351
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 352
    invoke-virtual {v4, v10}, Lgxt;->a(I)V

    goto :goto_1

    .line 297
    :cond_6
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 298
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 300
    :cond_7
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 302
    :cond_8
    const-string/jumbo v7, "methodName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 303
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 304
    const/4 v6, 0x0

    goto :goto_2

    .line 305
    :cond_9
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v11, :cond_a

    .line 306
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 308
    :cond_a
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 310
    :cond_b
    const-string/jumbo v7, "fileName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 311
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v9, :cond_c

    .line 312
    const/4 v2, 0x0

    goto :goto_2

    .line 313
    :cond_c
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v11, :cond_d

    .line 314
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 316
    :cond_d
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 318
    :cond_e
    const-string/jumbo v7, "lineNumber"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 319
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v9, :cond_f

    .line 320
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 321
    :cond_f
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 322
    invoke-virtual {v4}, Lgxt;->i()I

    move-result v5

    goto/16 :goto_2

    .line 324
    :cond_10
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 326
    :cond_11
    const-string/jumbo v7, "nativeMethod"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 327
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v9, :cond_12

    .line 328
    invoke-virtual {v4, v10}, Lgxt;->a(I)V

    goto/16 :goto_2

    .line 329
    :cond_12
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_13

    .line 330
    invoke-virtual {v4, v10}, Lgxt;->a(I)V

    goto/16 :goto_2

    .line 331
    :cond_13
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_14

    .line 332
    invoke-virtual {v4, v10}, Lgxt;->a(I)V

    goto/16 :goto_2

    .line 334
    :cond_14
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 336
    :cond_15
    const-string/jumbo v7, "@type"

    if-ne v3, v7, :cond_17

    .line 337
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-ne v7, v11, :cond_16

    .line 338
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "elementType":Ljava/lang/String;
    const-string/jumbo v7, "java.lang.StackTraceElement"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 340
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syntax error : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 343
    .end local v1    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v7

    if-eq v7, v9, :cond_5

    .line 344
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 348
    :cond_17
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syntax error : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public final write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 24
    .param p1, "serializer"    # Lgyq;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v16, v0

    .line 35
    .local v16, "out":Lgyy;
    if-nez p2, :cond_4

    .line 36
    sget-object v22, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    const-class v22, Ljava/lang/Character;

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 37
    :cond_0
    const-string/jumbo v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lgyy;->c:I

    move/from16 v22, v0

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v0

    and-int v22, v22, v23

    if-eqz v22, :cond_3

    .line 40
    invoke-static/range {p4 .. p4}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v11

    .line 41
    .local v11, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/util/Enumeration;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 42
    const-string/jumbo v22, "[]"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    .end local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string/jumbo v22, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/regex/Pattern;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v17, p2

    .line 52
    check-cast v17, Ljava/util/regex/Pattern;

    .line 53
    .local v17, "p":Ljava/util/regex/Pattern;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v17    # "p":Ljava/util/regex/Pattern;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/TimeZone;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v20, p2

    .line 55
    check-cast v20, Ljava/util/TimeZone;

    .line 56
    .local v20, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v20    # "timeZone":Ljava/util/TimeZone;
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Currency;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v8, p2

    .line 58
    check-cast v8, Ljava/util/Currency;

    .line 59
    .local v8, "currency":Ljava/util/Currency;
    invoke-virtual {v8}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    .end local v8    # "currency":Ljava/util/Currency;
    :cond_7
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v6, p2

    .line 61
    check-cast v6, Ljava/lang/Class;

    .line 62
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v21, p2

    .line 64
    check-cast v21, Ljava/lang/Character;

    .line 66
    .local v21, "value":Ljava/lang/Character;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 67
    .local v5, "c":C
    if-nez v5, :cond_9

    .line 68
    const-string/jumbo v22, "\u0000"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    .end local v5    # "c":C
    .end local v21    # "value":Ljava/lang/Character;
    :cond_a
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v22, p2

    .line 73
    check-cast v22, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v22 .. v22}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v19

    .line 75
    .local v19, "pattern":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Lgyy;->c:I

    move/from16 v22, v0

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v0

    and-int v22, v22, v23

    if-eqz v22, :cond_b

    .line 76
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_b

    .line 77
    const/16 v22, 0x7b

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 78
    const-string/jumbo v22, "@type"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgyy;->a(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    .line 80
    const/16 v22, 0x2c

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 81
    const-string/jumbo v22, "val"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgyy;->a(Ljava/lang/String;Z)V

    .line 82
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgyy;->b(Ljava/lang/String;)V

    .line 83
    const/16 v22, 0x7d

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 88
    :cond_b
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgyy;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v19    # "pattern":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lgxn;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v4, p2

    .line 90
    check-cast v4, Lgxn;

    .line 91
    .local v4, "aware":Lgxn;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lgxn;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_0

    .line 92
    .end local v4    # "aware":Lgxn;
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lgxl;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v4, p2

    .line 93
    check-cast v4, Lgxl;

    .line 94
    .local v4, "aware":Lgxl;
    invoke-interface {v4}, Lgxl;->toJSONString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    .end local v4    # "aware":Lgxl;
    :cond_e
    move-object/from16 v0, p2

    instance-of v0, v0, Lgyp;

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 98
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Enumeration;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 99
    const/4 v10, 0x0

    .line 100
    .local v10, "elementType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    iget v0, v0, Lgyy;->c:I

    move/from16 v22, v0

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v0

    and-int v22, v22, v23

    if-eqz v22, :cond_f

    .line 101
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v18, p4

    .line 102
    check-cast v18, Ljava/lang/reflect/ParameterizedType;

    .line 103
    .local v18, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v10, v22, v23

    .end local v18    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_f
    move-object/from16 v9, p2

    .line 107
    check-cast v9, Ljava/util/Enumeration;

    .line 109
    .local v9, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lgyq;->l:Lgyv;

    .line 110
    .local v7, "context":Lgyv;
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v7, v1, v2, v3}, Lgyq;->a(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 113
    const/4 v12, 0x0

    .line 114
    .local v12, "i":I
    const/16 v22, 0x5b

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v12

    .line 115
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 116
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 117
    .local v14, "item":Ljava/lang/Object;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-eqz v13, :cond_10

    .line 118
    const/16 v22, 0x2c

    :try_start_2
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(I)V

    .line 121
    :cond_10
    if-nez v14, :cond_11

    .line 2451
    const-string/jumbo v22, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    move v13, v12

    .line 123
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 126
    .end local v13    # "i":I
    .restart local v12    # "i":I
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 128
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->a:Lgyw;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v15

    .line 129
    .local v15, "itemSerializer":Lgys;
    add-int/lit8 v22, v12, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v14, v1, v10}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v13, v12

    .line 130
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 131
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "item":Ljava/lang/Object;
    .end local v15    # "itemSerializer":Lgys;
    :cond_12
    const/16 v22, 0x5d

    :try_start_3
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyy;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    move-object/from16 v0, p1

    iput-object v7, v0, Lgyq;->l:Lgyv;

    goto/16 :goto_0

    .end local v13    # "i":I
    .restart local v12    # "i":I
    :catchall_0
    move-exception v22

    :goto_2
    move-object/from16 v0, p1

    iput-object v7, v0, Lgyq;->l:Lgyv;

    .line 134
    throw v22

    .line 136
    .end local v7    # "context":Lgyv;
    .end local v9    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "elementType":Ljava/lang/reflect/Type;
    .end local v12    # "i":I
    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .restart local v7    # "context":Lgyv;
    .restart local v9    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "elementType":Ljava/lang/reflect/Type;
    .restart local v13    # "i":I
    :catchall_1
    move-exception v22

    move v12, v13

    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_2
.end method
