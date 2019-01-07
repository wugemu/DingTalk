.class public final Ljho;
.super Ljava/lang/Object;
.source "CodeBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljho$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "\\$(?<argumentName>[\\w_]+):(?<typeChar>[\\w]).*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljho;->c:Ljava/util/regex/Pattern;

    .line 66
    const-string/jumbo v0, "[a-z]+[\\w_]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljho;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljho$a;)V
    .locals 1
    .param p1, "builder"    # Ljho$a;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Ljho$a;->a:Ljava/util/List;

    invoke-static {v0}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljho;->a:Ljava/util/List;

    .line 74
    iget-object v0, p1, Ljho$a;->b:Ljava/util/List;

    invoke-static {v0}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljho;->b:Ljava/util/List;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljho$a;B)V
    .locals 0
    .param p1, "x0"    # Ljho$a;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljho;-><init>(Ljho$a;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljho;
    .locals 16
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 103
    new-instance v8, Ljho$a;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljho$a;-><init>(B)V

    .line 1193
    const/4 v4, 0x0

    .line 1194
    const/4 v3, 0x0

    .line 1196
    const/4 v2, 0x0

    .line 1197
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v9, v1, [I

    .line 1199
    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 1200
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x24

    if-eq v2, v6, :cond_1

    .line 1201
    const/16 v2, 0x24

    add-int/lit8 v6, v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1202
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1203
    :cond_0
    iget-object v6, v8, Ljho$a;->a:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1205
    goto :goto_0

    .line 1208
    :cond_1
    add-int/lit8 v6, v1, 0x1

    move v1, v6

    .line 1214
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    const-string/jumbo v7, "dangling format characters in \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-static {v2, v7, v10}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1216
    const/16 v1, 0x30

    if-lt v10, v1, :cond_2

    const/16 v1, 0x39

    if-le v10, v1, :cond_1e

    .line 1217
    :cond_2
    add-int/lit8 v11, v2, -0x1

    .line 1268
    const/16 v1, 0x24

    if-eq v10, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v10, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v10, v1, :cond_3

    const/16 v1, 0x5b

    if-eq v10, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v10, v1, :cond_3

    const/16 v1, 0x57

    if-ne v10, v1, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 1220
    :goto_3
    if-eqz v1, :cond_7

    .line 1221
    if-ne v6, v11, :cond_6

    const/4 v1, 0x1

    :goto_4
    const-string/jumbo v6, "$$, $>, $<, $[, $], and $W may not have an index"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    iget-object v1, v8, Ljho$a;->a:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1223
    goto/16 :goto_0

    .line 1214
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1268
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 1221
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 1228
    :cond_7
    if-ge v6, v11, :cond_9

    .line 1229
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1230
    const/4 v4, 0x1

    .line 1231
    move-object/from16 v0, p1

    array-length v7, v0

    if-lez v7, :cond_1d

    .line 1232
    move-object/from16 v0, p1

    array-length v7, v0

    rem-int v7, v1, v7

    aget v12, v9, v7

    add-int/lit8 v12, v12, 0x1

    aput v12, v9, v7

    move v7, v1

    .line 1240
    :goto_5
    if-ltz v7, :cond_a

    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v7, v1, :cond_a

    const/4 v1, 0x1

    :goto_6
    const-string/jumbo v12, "index %d for \'%s\' not in range (received %s arguments)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v7, 0x1

    .line 1242
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v14

    const/4 v6, 0x2

    move-object/from16 v0, p1

    array-length v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v6

    .line 1240
    invoke-static {v1, v12, v13}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    if-eqz v4, :cond_8

    if-nez v5, :cond_b

    :cond_8
    const/4 v1, 0x1

    :goto_7
    const-string/jumbo v6, "cannot mix indexed and positional parameters"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v6, v11}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    aget-object v1, p1, v7

    .line 1272
    packed-switch v10, :pswitch_data_0

    .line 1286
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid format string: \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1287
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :cond_9
    const/4 v5, 0x1

    .line 1237
    add-int/lit8 v1, v3, 0x1

    move v7, v3

    move v3, v1

    goto :goto_5

    .line 1240
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 1243
    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    .line 1274
    :pswitch_1
    iget-object v6, v8, Ljho$a;->b:Ljava/util/List;

    .line 1292
    instance-of v7, v1, Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    :goto_8
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    :goto_9
    iget-object v1, v8, Ljho$a;->a:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1248
    goto/16 :goto_0

    .line 1293
    :cond_c
    instance-of v7, v1, Ljht;

    if-eqz v7, :cond_d

    check-cast v1, Ljht;

    iget-object v1, v1, Ljht;->a:Ljava/lang/String;

    goto :goto_8

    .line 1294
    :cond_d
    instance-of v7, v1, Ljhq;

    if-eqz v7, :cond_e

    check-cast v1, Ljhq;

    iget-object v1, v1, Ljhq;->b:Ljava/lang/String;

    goto :goto_8

    .line 1295
    :cond_e
    instance-of v7, v1, Ljhs;

    if-eqz v7, :cond_f

    check-cast v1, Ljhs;

    iget-object v1, v1, Ljhs;->a:Ljava/lang/String;

    goto :goto_8

    .line 1296
    :cond_f
    instance-of v7, v1, Lcom/squareup/javapoet/TypeSpec;

    if-eqz v7, :cond_10

    check-cast v1, Lcom/squareup/javapoet/TypeSpec;

    iget-object v1, v1, Lcom/squareup/javapoet/TypeSpec;->b:Ljava/lang/String;

    goto :goto_8

    .line 1297
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "expected name but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1277
    :pswitch_2
    iget-object v6, v8, Ljho$a;->b:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1280
    :pswitch_3
    iget-object v6, v8, Ljho$a;->b:Ljava/util/List;

    .line 1305
    if-eqz v1, :cond_11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    :goto_a
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1305
    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    .line 1283
    :pswitch_4
    iget-object v6, v8, Ljho$a;->b:Ljava/util/List;

    .line 1309
    instance-of v7, v1, Ljhv;

    if-eqz v7, :cond_12

    check-cast v1, Ljhv;

    .line 1283
    :goto_b
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1310
    :cond_12
    instance-of v7, v1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v7, :cond_13

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v1}, Ljhv;->a(Ljavax/lang/model/type/TypeMirror;)Ljhv;

    move-result-object v1

    goto :goto_b

    .line 1311
    :cond_13
    instance-of v7, v1, Ljavax/lang/model/element/Element;

    if-eqz v7, :cond_14

    check-cast v1, Ljavax/lang/model/element/Element;

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Ljhv;->a(Ljavax/lang/model/type/TypeMirror;)Ljhv;

    move-result-object v1

    goto :goto_b

    .line 1312
    :cond_14
    instance-of v7, v1, Ljava/lang/reflect/Type;

    if-eqz v7, :cond_15

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljhv;->a(Ljava/lang/reflect/Type;)Ljhv;

    move-result-object v1

    goto :goto_b

    .line 1313
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "expected type but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1250
    :cond_16
    if-eqz v5, :cond_17

    .line 1251
    move-object/from16 v0, p1

    array-length v1, v0

    if-lt v3, v1, :cond_19

    const/4 v1, 0x1

    :goto_c
    const-string/jumbo v2, "unused arguments: expected %s, received %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1251
    invoke-static {v1, v2, v5}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    :cond_17
    if-eqz v4, :cond_1b

    .line 1255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    const/4 v1, 0x0

    :goto_d
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v1, v3, :cond_1a

    .line 1257
    aget v3, v9, v1

    if-nez v3, :cond_18

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "$"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1251
    :cond_19
    const/4 v1, 0x0

    goto :goto_c

    .line 1261
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    const-string/jumbo v1, ""

    .line 1262
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string/jumbo v4, "unused argument%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const-string/jumbo v6, ", "

    invoke-static {v6, v2}, Ljhx;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Ljhx;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    :cond_1b
    new-instance v1, Ljho;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Ljho;-><init>(Ljho$a;B)V

    .line 103
    return-object v1

    .line 1261
    :cond_1c
    const-string/jumbo v1, "s"

    goto :goto_e

    :cond_1d
    move v7, v1

    goto/16 :goto_5

    :cond_1e
    move v1, v2

    goto/16 :goto_1

    .line 1272
    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljho;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 85
    invoke-virtual {p0}, Ljho;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Ljho;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    new-instance v1, Ljhp;

    invoke-direct {v1, v0}, Ljhp;-><init>(Ljava/lang/Appendable;)V

    invoke-virtual {v1, p0}, Ljhp;->b(Ljho;)Ljhp;

    .line 96
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
