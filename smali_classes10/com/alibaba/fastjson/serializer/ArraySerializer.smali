.class public final Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lgys;


# instance fields
.field private final compObjectSerializer:Lgys;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lgys;)V
    .locals 0
    .param p2, "compObjectSerializer"    # Lgys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lgys;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lgys;

    .line 32
    return-void
.end method


# virtual methods
.method public final write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
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
    .line 36
    move-object/from16 v0, p1

    iget-object v12, v0, Lgyq;->b:Lgyy;

    .line 38
    .local v12, "out":Lgyy;
    if-nez p2, :cond_1

    .line 39
    iget v14, v12, Lgyy;->c:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 40
    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    .line 216
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1451
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    move-object/from16 v0, p2

    instance-of v14, v0, [Z

    if-eqz v14, :cond_5

    .line 49
    check-cast p2, [Z

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [Z

    .line 50
    .local v4, "array":[Z
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 51
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v14, v4

    if-ge v8, v14, :cond_4

    .line 52
    if-eqz v8, :cond_2

    .line 53
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 55
    :cond_2
    aget-boolean v14, v4, v8

    .line 1662
    if-eqz v14, :cond_3

    const-string/jumbo v14, "true"

    :goto_2
    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1662
    :cond_3
    const-string/jumbo v14, "false"

    goto :goto_2

    .line 57
    :cond_4
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    goto :goto_0

    .line 61
    .end local v4    # "array":[Z
    .end local v8    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p2

    instance-of v14, v0, [B

    if-eqz v14, :cond_6

    .line 62
    check-cast p2, [B

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [B

    .line 63
    .local v4, "array":[B
    invoke-virtual {v12, v4}, Lgyy;->a([B)V

    goto :goto_0

    .line 67
    .end local v4    # "array":[B
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    instance-of v14, v0, [C

    if-eqz v14, :cond_7

    .line 68
    check-cast p2, [C

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v5, p2

    check-cast v5, [C

    .line 69
    .local v5, "chars":[C
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v14}, Lgyy;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v5    # "chars":[C
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p2

    instance-of v14, v0, [D

    if-eqz v14, :cond_c

    .line 74
    check-cast p2, [D

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [D

    .line 75
    .local v4, "array":[D
    array-length v13, v4

    .line 77
    .local v13, "size":I
    add-int/lit8 v7, v13, -0x1

    .line 79
    .local v7, "end":I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_8

    .line 80
    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto/16 :goto_0

    .line 84
    :cond_8
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 85
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v7, :cond_a

    .line 86
    aget-wide v10, v4, v8

    .line 88
    .local v10, "item":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2451
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    .line 94
    :goto_4
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 85
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 91
    :cond_9
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto :goto_4

    .line 97
    .end local v10    # "item":D
    :cond_a
    aget-wide v10, v4, v7

    .line 99
    .restart local v10    # "item":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 3451
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    .line 105
    :goto_5
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 102
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto :goto_5

    .line 109
    .end local v4    # "array":[D
    .end local v7    # "end":I
    .end local v8    # "i":I
    .end local v10    # "item":D
    .end local v13    # "size":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p2

    instance-of v14, v0, [F

    if-eqz v14, :cond_11

    .line 110
    check-cast p2, [F

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [F

    .line 111
    .local v4, "array":[F
    array-length v13, v4

    .line 113
    .restart local v13    # "size":I
    add-int/lit8 v7, v13, -0x1

    .line 115
    .restart local v7    # "end":I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_d

    .line 116
    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto/16 :goto_0

    .line 120
    :cond_d
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 121
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v7, :cond_f

    .line 122
    aget v10, v4, v8

    .line 124
    .local v10, "item":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 4451
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    .line 130
    :goto_7
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 127
    :cond_e
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto :goto_7

    .line 133
    .end local v10    # "item":F
    :cond_f
    aget v10, v4, v7

    .line 135
    .restart local v10    # "item":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 5451
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lgyy;->write(Ljava/lang/String;)V

    .line 141
    :goto_8
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 138
    :cond_10
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto :goto_8

    .line 145
    .end local v4    # "array":[F
    .end local v7    # "end":I
    .end local v8    # "i":I
    .end local v10    # "item":F
    .end local v13    # "size":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, p2

    instance-of v14, v0, [I

    if-eqz v14, :cond_14

    .line 146
    check-cast p2, [I

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [I

    .line 148
    .local v4, "array":[I
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 149
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    array-length v14, v4

    if-ge v8, v14, :cond_13

    .line 150
    if-eqz v8, :cond_12

    .line 151
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 153
    :cond_12
    aget v14, v4, v8

    invoke-virtual {v12, v14}, Lgyy;->b(I)V

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 155
    :cond_13
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 159
    .end local v4    # "array":[I
    .end local v8    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_14
    move-object/from16 v0, p2

    instance-of v14, v0, [J

    if-eqz v14, :cond_17

    .line 160
    check-cast p2, [J

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [J

    .line 162
    .local v4, "array":[J
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 163
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    array-length v14, v4

    if-ge v8, v14, :cond_16

    .line 164
    if-eqz v8, :cond_15

    .line 165
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 167
    :cond_15
    aget-wide v14, v4, v8

    invoke-virtual {v12, v14, v15}, Lgyy;->a(J)V

    .line 163
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 169
    :cond_16
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    goto/16 :goto_0

    .line 173
    .end local v4    # "array":[J
    .end local v8    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p2

    instance-of v14, v0, [S

    if-eqz v14, :cond_1a

    .line 174
    check-cast p2, [S

    .end local p2    # "object":Ljava/lang/Object;
    move-object/from16 v4, p2

    check-cast v4, [S

    .line 175
    .local v4, "array":[S
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 176
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    array-length v14, v4

    if-ge v8, v14, :cond_19

    .line 177
    if-eqz v8, :cond_18

    .line 178
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 180
    :cond_18
    aget-short v14, v4, v8

    invoke-virtual {v12, v14}, Lgyy;->b(I)V

    .line 176
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 182
    :cond_19
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    goto/16 :goto_0

    .end local v4    # "array":[S
    .end local v8    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v14, p2

    .line 186
    check-cast v14, [Ljava/lang/Object;

    move-object v4, v14

    check-cast v4, [Ljava/lang/Object;

    .line 187
    .local v4, "array":[Ljava/lang/Object;
    array-length v13, v4

    .line 189
    .restart local v13    # "size":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lgyq;->l:Lgyv;

    .line 190
    .local v6, "context":Lgyv;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v14}, Lgyq;->a(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 193
    const/16 v14, 0x5b

    :try_start_0
    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 194
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_c
    if-ge v8, v13, :cond_1f

    .line 195
    if-eqz v8, :cond_1b

    .line 196
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lgyy;->write(I)V

    .line 198
    :cond_1b
    aget-object v10, v4, v8

    .line 200
    .local v10, "item":Ljava/lang/Object;
    if-nez v10, :cond_1d

    .line 201
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v14}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object/from16 v0, p2

    instance-of v14, v0, [Ljava/lang/String;

    if-eqz v14, :cond_1c

    .line 202
    const-string/jumbo v14, ""

    invoke-virtual {v12, v14}, Lgyy;->b(Ljava/lang/String;)V

    .line 194
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 204
    :cond_1c
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    .line 215
    .end local v8    # "i":I
    .end local v10    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v14

    move-object/from16 v0, p1

    iput-object v6, v0, Lgyq;->l:Lgyv;

    .line 216
    throw v14

    .line 206
    .restart local v8    # "i":I
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_1d
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    if-ne v14, v15, :cond_1e

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lgys;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v10, v15, v1}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_d

    .line 209
    :cond_1e
    move-object/from16 v0, p1

    iget-object v14, v0, Lgyq;->a:Lgyw;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v9

    .line 210
    .local v9, "itemSerializer":Lgys;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v10, v14, v15}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_d

    .line 213
    .end local v9    # "itemSerializer":Lgys;
    .end local v10    # "item":Ljava/lang/Object;
    :cond_1f
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lgyy;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    move-object/from16 v0, p1

    iput-object v6, v0, Lgyq;->l:Lgyv;

    goto/16 :goto_0
.end method
