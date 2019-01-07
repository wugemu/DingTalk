.class public final Laoi;
.super Ljava/lang/Object;
.source "Expression.java"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, p0, Laoi;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "[Expression] expression is illegal. \n "

    invoke-static {v1, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)D
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    .line 55
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 56
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 57
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;
    .locals 12
    .param p1, "node"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 110
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    const-string/jumbo v7, "type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v7, "children"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 112
    .local v1, "children":Lorg/json/JSONArray;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 181
    const/4 v5, 0x0

    :cond_1
    :goto_2
    return-object v5

    .line 112
    :sswitch_0
    const-string/jumbo v8, "StringLiteral"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "NumericLiteral"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v8, "BooleanLiteral"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v8, "Identifier"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v8, "CallExpression"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v8, "*"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v8, "**"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v8, ">"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v8, "<"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v8, ">="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v8, "<="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v8, "=="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v8, "==="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v8, "!="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v8, "!=="

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v8, "&&"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v8, "||"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v8, "!"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x16

    goto/16 :goto_1

    .line 114
    :pswitch_0
    const-string/jumbo v7, "value"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 116
    :pswitch_1
    const-string/jumbo v7, "value"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 118
    :pswitch_2
    const-string/jumbo v7, "value"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    .line 120
    :pswitch_3
    const-string/jumbo v7, "value"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2

    .line 122
    :pswitch_4
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laol;

    .line 123
    .local v2, "function":Laol;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "children"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 125
    .local v4, "jsonArguments":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 126
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 127
    :cond_2
    invoke-interface {v2, v0}, Laol;->a(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2

    .line 130
    .end local v0    # "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "function":Laol;
    .end local v3    # "i":I
    .end local v4    # "jsonArguments":Lorg/json/JSONArray;
    :pswitch_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    goto/16 :goto_0

    .line 133
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    goto/16 :goto_0

    .line 136
    :pswitch_6
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 138
    :pswitch_7
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 140
    :pswitch_8
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 142
    :pswitch_9
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 144
    :pswitch_a
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    rem-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 146
    :pswitch_b
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto/16 :goto_2

    .line 149
    :pswitch_c
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-lez v7, :cond_4

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 151
    :pswitch_d
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_5

    const/4 v7, 0x1

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    .line 153
    :pswitch_e
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_6

    const/4 v7, 0x1

    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 155
    :pswitch_f
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v8

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_7

    const/4 v7, 0x1

    :goto_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    .line 158
    :pswitch_10
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Laoi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    .line 160
    :pswitch_11
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Laoi;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    .line 162
    :pswitch_12
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Laoi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    .line 164
    :pswitch_13
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Laoi;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_9
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 168
    :pswitch_14
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    .line 169
    .local v5, "result":Ljava/lang/Object;
    invoke-static {v5}, Laoi;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    goto/16 :goto_0

    .line 173
    .end local v5    # "result":Ljava/lang/Object;
    :pswitch_15
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    .restart local v5    # "result":Ljava/lang/Object;
    invoke-static {v5}, Laoi;->b(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 176
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    goto/16 :goto_0

    .line 178
    .end local v5    # "result":Ljava/lang/Object;
    :pswitch_16
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Laoi;->b(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    :goto_a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6814284a -> :sswitch_4
        0x21 -> :sswitch_16
        0x25 -> :sswitch_a
        0x2a -> :sswitch_8
        0x2b -> :sswitch_6
        0x2d -> :sswitch_7
        0x2f -> :sswitch_9
        0x3c -> :sswitch_d
        0x3e -> :sswitch_c
        0x3f -> :sswitch_5
        0x43c -> :sswitch_12
        0x4c0 -> :sswitch_14
        0x540 -> :sswitch_b
        0x781 -> :sswitch_f
        0x7a0 -> :sswitch_10
        0x7bf -> :sswitch_e
        0xf80 -> :sswitch_15
        0x8381 -> :sswitch_13
        0xec9d -> :sswitch_11
        0xb465102 -> :sswitch_1
        0x165a88c9 -> :sswitch_3
        0x400a833e -> :sswitch_0
        0x6c419b87 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    instance-of v2, p1, Laon;

    if-eqz v2, :cond_2

    instance-of v2, p2, Laon;

    if-eqz v2, :cond_2

    .line 79
    if-ne p1, p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_3
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 85
    invoke-static {p1}, Laoi;->b(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p2}, Laoi;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {p1}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {p2}, Laoi;->a(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 61
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 63
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 64
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "v1"    # Ljava/lang/Object;
    .param p1, "v2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 90
    instance-of v1, p0, Laon;

    if-eqz v1, :cond_1

    instance-of v1, p1, Laon;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 98
    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 102
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 105
    :cond_4
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Laoi;->a:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Laoi;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
