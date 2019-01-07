.class public final Lgxr;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgxr$a;
    }
.end annotation


# instance fields
.field public final a:Lgyd;

.field public b:Lgyb;

.field public c:Ljava/lang/String;

.field public d:Ljava/text/DateFormat;

.field public final e:Lgxt;

.field protected f:Lgya;

.field public g:I

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyh;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyg;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lgyj;

.field private k:[Lgya;

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgxr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgxt;)V
    .locals 1
    .param p1, "lexer"    # Lgxt;

    .prologue
    .line 134
    sget-object v0, Lgyb;->a:Lgyb;

    invoke-direct {p0, p1, v0}, Lgxr;-><init>(Lgxt;Lgyb;)V

    .line 135
    return-void
.end method

.method private constructor <init>(Lgxt;Lgyb;)V
    .locals 5
    .param p1, "lexer"    # Lgxt;
    .param p2, "config"    # Lgyb;

    .prologue
    const/16 v1, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v2, Lgxk;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v2, p0, Lgxr;->c:Ljava/lang/String;

    .line 82
    iput v4, p0, Lgxr;->l:I

    .line 90
    iput v4, p0, Lgxr;->g:I

    .line 92
    iput-object v3, p0, Lgxr;->h:Ljava/util/List;

    .line 93
    iput-object v3, p0, Lgxr;->i:Ljava/util/List;

    .line 94
    iput-object v3, p0, Lgxr;->j:Lgyj;

    .line 138
    iput-object p1, p0, Lgxr;->e:Lgxt;

    .line 139
    iput-object p2, p0, Lgxr;->b:Lgyb;

    .line 140
    iget-object v2, p2, Lgyb;->b:Lgyd;

    iput-object v2, p0, Lgxr;->a:Lgyd;

    .line 142
    iget-char v2, p1, Lgxt;->d:C

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    .line 143
    iget v2, p1, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lgxt;->e:I

    .line 144
    .local v0, "index":I
    iget v2, p1, Lgxt;->q:I

    if-lt v0, v2, :cond_0

    .line 146
    :goto_0
    iput-char v1, p1, Lgxt;->d:C

    .line 147
    const/16 v1, 0xc

    iput v1, p1, Lgxt;->a:I

    .line 157
    .end local v0    # "index":I
    :goto_1
    return-void

    .line 144
    .restart local v0    # "index":I
    :cond_0
    iget-object v1, p1, Lgxt;->p:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 148
    .end local v0    # "index":I
    :cond_1
    iget-char v2, p1, Lgxt;->d:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    .line 149
    iget v2, p1, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lgxt;->e:I

    .line 150
    .restart local v0    # "index":I
    iget v2, p1, Lgxt;->q:I

    if-lt v0, v2, :cond_2

    .line 152
    :goto_2
    iput-char v1, p1, Lgxt;->d:C

    .line 153
    const/16 v1, 0xe

    iput v1, p1, Lgxt;->a:I

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p1, Lgxt;->p:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 155
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {p1}, Lgxt;->e()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lgyb;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lgyb;

    .prologue
    .line 122
    new-instance v0, Lgxt;

    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lgxt;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lgxr;-><init>(Lgxt;Lgyb;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgyb;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lgyb;
    .param p3, "features"    # I

    .prologue
    .line 126
    new-instance v0, Lgxt;

    invoke-direct {v0, p1, p3}, Lgxt;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lgxr;-><init>(Lgxt;Lgyb;)V

    .line 127
    return-void
.end method

.method public constructor <init>([CILgyb;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lgyb;
    .param p4, "features"    # I

    .prologue
    .line 130
    new-instance v0, Lgxt;

    invoke-direct {v0, p1, p2, p4}, Lgxt;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lgxr;-><init>(Lgxt;Lgyb;)V

    .line 131
    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 18
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1097
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v13, v15, Lgxt;->a:I

    .line 1098
    .local v13, "token":I
    const/16 v15, 0x15

    if-eq v13, v15, :cond_0

    const/16 v15, 0x16

    if-ne v13, v15, :cond_1

    .line 1099
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->e()V

    .line 1100
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v13, v15, Lgxt;->a:I

    .line 1103
    :cond_1
    const/16 v15, 0xe

    if-eq v13, v15, :cond_2

    .line 1104
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "syntax error, expect [, actual "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", pos "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lgxt;->b:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1107
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-boolean v5, v15, Lgxt;->s:Z

    .line 1109
    .local v5, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxr;->f:Lgya;

    .line 1110
    .local v4, "context":Lgya;
    if-nez v5, :cond_3

    .line 1111
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->f:Lgya;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    .line 1116
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-char v3, v15, Lgxt;->d:C

    .line 1117
    .local v3, "ch":C
    const/16 v15, 0x22

    if-eq v3, v15, :cond_e

    .line 1118
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_5

    .line 1119
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->c()C

    .line 1120
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    if-nez v5, :cond_4

    .line 1297
    move-object/from16 v0, p0

    iput-object v4, v0, Lgxr;->f:Lgya;

    .line 1300
    :cond_4
    :goto_0
    return-void

    .line 1123
    :cond_5
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_c

    .line 1126
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v0, v15, Lgxt;->e:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lgxt;->e:I

    .line 1127
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->q:I

    if-lt v8, v15, :cond_b

    const/16 v15, 0x1a

    .line 1129
    :goto_1
    move-object/from16 v0, v16

    iput-char v15, v0, Lgxt;->d:C

    .line 1131
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lgxt;->a:I

    .line 1135
    .end local v8    # "index":I
    :goto_2
    const/4 v6, 0x0

    .line 1145
    .local v6, "first_quote":Z
    :goto_3
    const/4 v7, 0x0

    .line 1147
    .local v7, "i":I
    :goto_4
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-char v15, v15, Lgxt;->d:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1148
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lgxt;->b(C)Ljava/lang/String;

    move-result-object v14

    .line 1150
    .local v14, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-char v3, v15, Lgxt;->d:C

    .line 1151
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_11

    .line 1154
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v0, v15, Lgxt;->e:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lgxt;->e:I

    .line 1155
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lgxt;->q:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v8, v0, :cond_10

    const/16 v3, 0x1a

    .line 1157
    .end local v3    # "ch":C
    :goto_5
    iput-char v3, v15, Lgxt;->d:C

    .line 1159
    .restart local v3    # "ch":C
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1160
    move-object/from16 v0, p0

    iget v15, v0, Lgxr;->g:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1161
    invoke-virtual/range {p0 .. p1}, Lgxr;->a(Ljava/util/Collection;)V

    .line 1164
    :cond_6
    const/16 v15, 0x22

    if-eq v3, v15, :cond_a

    .line 1167
    const/4 v6, 0x0

    .line 1186
    .end local v8    # "index":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->e()V

    .line 1190
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v13, v15, Lgxt;->a:I

    .line 1191
    const/16 v15, 0x10

    if-eq v13, v15, :cond_7

    .line 1197
    packed-switch v13, :pswitch_data_0

    .line 8362
    :pswitch_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1267
    :goto_6
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1268
    move-object/from16 v0, p0

    iget v15, v0, Lgxr;->g:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1269
    invoke-virtual/range {p0 .. p1}, Lgxr;->a(Ljava/util/Collection;)V

    .line 1271
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->a:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1273
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-char v3, v15, Lgxt;->d:C

    .line 1274
    const/16 v15, 0x22

    if-ne v3, v15, :cond_18

    .line 1275
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lgxt;->e:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lgxt;->b:I

    .line 1276
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->h()V

    .line 1145
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 1127
    .end local v6    # "first_quote":Z
    .end local v7    # "i":I
    .restart local v8    # "index":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-object v15, v15, Lgxt;->p:Ljava/lang/String;

    .line 1129
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto/16 :goto_1

    .line 1133
    .end local v8    # "index":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1296
    .end local v3    # "ch":C
    :catchall_0
    move-exception v15

    if-nez v5, :cond_d

    .line 1297
    move-object/from16 v0, p0

    iput-object v4, v0, Lgxr;->f:Lgya;

    .line 1299
    :cond_d
    throw v15

    .line 1137
    .restart local v3    # "ch":C
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->c:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-nez v15, :cond_f

    .line 1138
    const/4 v6, 0x1

    .restart local v6    # "first_quote":Z
    goto/16 :goto_3

    .line 1140
    .end local v6    # "first_quote":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    .line 1141
    const/4 v6, 0x0

    .restart local v6    # "first_quote":Z
    goto/16 :goto_3

    .line 1155
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1157
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto/16 :goto_5

    .line 1171
    .end local v8    # "index":I
    :cond_11
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_7

    .line 1174
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v0, v15, Lgxt;->e:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lgxt;->e:I

    .line 1175
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->q:I

    if-lt v8, v15, :cond_13

    const/16 v15, 0x1a

    .line 1177
    :goto_8
    move-object/from16 v0, v16

    iput-char v15, v0, Lgxt;->d:C

    .line 1179
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1180
    move-object/from16 v0, p0

    iget v15, v0, Lgxr;->g:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 1181
    invoke-virtual/range {p0 .. p1}, Lgxr;->a(Ljava/util/Collection;)V

    .line 1183
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1296
    if-nez v5, :cond_4

    .line 1297
    move-object/from16 v0, p0

    iput-object v4, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 1175
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-object v15, v15, Lgxt;->p:Ljava/lang/String;

    .line 1177
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_8

    .line 1199
    .end local v8    # "index":I
    .end local v14    # "value":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->f()Ljava/lang/Number;

    move-result-object v14

    .line 1200
    .local v14, "value":Ljava/lang/Number;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    goto/16 :goto_6

    .line 1203
    .end local v14    # "value":Ljava/lang/Number;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->c:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_14

    .line 1204
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(Z)Ljava/lang/Number;

    move-result-object v14

    .line 1208
    .restart local v14    # "value":Ljava/lang/Number;
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    goto/16 :goto_6

    .line 1206
    .end local v14    # "value":Ljava/lang/Number;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(Z)Ljava/lang/Number;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/Number;
    goto :goto_9

    .line 1211
    .end local v14    # "value":Ljava/lang/Number;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->k()Ljava/lang/String;

    move-result-object v12

    .line 1212
    .local v12, "stringLiteral":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->c:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_16

    .line 1215
    new-instance v9, Lgxt;

    invoke-direct {v9, v12}, Lgxt;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v9, "iso8601Lexer":Lgxt;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lgxt;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1217
    iget-object v15, v9, Lgxt;->n:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 1221
    :goto_a
    invoke-virtual {v9}, Lgxt;->b()V

    goto/16 :goto_6

    .line 1219
    :cond_15
    move-object v14, v12

    .local v14, "value":Ljava/lang/String;
    goto :goto_a

    .line 1223
    .end local v9    # "iso8601Lexer":Lgxt;
    .end local v14    # "value":Ljava/lang/String;
    :cond_16
    move-object v14, v12

    .line 1226
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_6

    .line 1228
    .end local v12    # "stringLiteral":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :pswitch_4
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1229
    .local v14, "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    goto/16 :goto_6

    .line 1232
    .end local v14    # "value":Ljava/lang/Boolean;
    :pswitch_5
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1233
    .restart local v14    # "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    goto/16 :goto_6

    .line 1237
    .end local v14    # "value":Ljava/lang/Boolean;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->c:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_17

    .line 1238
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v11, v15}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1242
    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lgxr;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1243
    .local v14, "value":Ljava/lang/Object;
    goto/16 :goto_6

    .line 1240
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_17
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .restart local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_b

    .line 1245
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_7
    new-instance v10, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1246
    .local v10, "items":Ljava/util/Collection;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lgxr;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1247
    move-object v14, v10

    .line 1248
    .local v14, "value":Ljava/util/Collection;
    goto/16 :goto_6

    .line 1250
    .end local v10    # "items":Ljava/util/Collection;
    .end local v14    # "value":Ljava/util/Collection;
    :pswitch_8
    const/4 v14, 0x0

    .line 1251
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    goto/16 :goto_6

    .line 1254
    .end local v14    # "value":Ljava/lang/Object;
    :pswitch_9
    const/4 v14, 0x0

    .line 1255
    .restart local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V

    goto/16 :goto_6

    .line 1258
    .end local v14    # "value":Ljava/lang/Object;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lgxt;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1296
    if-nez v5, :cond_4

    .line 1297
    move-object/from16 v0, p0

    iput-object v4, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 1261
    :pswitch_b
    :try_start_4
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v16, "unclosed jsonArray"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1277
    :cond_18
    const/16 v15, 0x30

    if-lt v3, v15, :cond_19

    const/16 v15, 0x39

    if-gt v3, v15, :cond_19

    .line 1278
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lgxt;->e:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lgxt;->b:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->n()V

    goto/16 :goto_7

    .line 1280
    :cond_19
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_1b

    .line 1281
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lgxt;->a:I

    .line 1284
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v0, v15, Lgxt;->e:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lgxt;->e:I

    .line 1285
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget v15, v15, Lgxt;->q:I

    if-lt v8, v15, :cond_1a

    const/16 v15, 0x1a

    .line 1287
    :goto_c
    move-object/from16 v0, v16

    iput-char v15, v0, Lgxt;->d:C

    goto/16 :goto_7

    .line 1285
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    iget-object v15, v15, Lgxt;->p:Ljava/lang/String;

    .line 1287
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_c

    .line 1290
    .end local v8    # "index":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxr;->e:Lgxt;

    invoke-virtual {v15}, Lgxt;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 902
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 903
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 904
    .local v0, "beanDeser":Lgxv;
    iget-object v10, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v10, v1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v2

    .line 905
    .local v2, "deserizer":Lgyk;
    instance-of v10, v2, Lgxv;

    if-eqz v10, :cond_0

    move-object v0, v2

    .line 906
    check-cast v0, Lgxv;

    .line 911
    :cond_0
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v9, v10, Lgxt;->a:I

    .line 912
    .local v9, "token":I
    const/16 v10, 0xc

    if-eq v9, v10, :cond_1

    const/16 v10, 0x10

    if-eq v9, v10, :cond_1

    .line 913
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "syntax error, expect {, actual "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 918
    :cond_1
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget-object v11, p0, Lgxr;->a:Lgyd;

    invoke-virtual {v10, v11}, Lgxt;->a(Lgyd;)Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, "key":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 921
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v10, v10, Lgxt;->a:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 922
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lgxt;->a(I)V

    .line 978
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v10, v10, Lgxt;->a:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 930
    :cond_3
    const/4 v4, 0x0

    .line 931
    .local v4, "fieldDeser":Lgyi;
    if-eqz v0, :cond_4

    .line 932
    invoke-virtual {v0, v8}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v4

    .line 935
    :cond_4
    if-nez v4, :cond_6

    .line 936
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v10, v10, Lgxt;->c:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-nez v10, :cond_5

    .line 937
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "setter not found, class "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 940
    :cond_5
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgxt;->a(C)V

    .line 7362
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v10, v10, Lgxt;->a:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 944
    iget-object v10, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v10}, Lgxt;->e()V

    goto :goto_0

    .line 950
    :cond_6
    iget-object v10, v4, Lgyi;->b:Lgza;

    iget-object v3, v10, Lgza;->f:Ljava/lang/Class;

    .line 951
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, v4, Lgyi;->b:Lgza;

    iget-object v5, v10, Lgza;->g:Ljava/lang/reflect/Type;

    .line 953
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_7

    .line 954
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgxt;->a(C)V

    .line 955
    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 969
    :goto_1
    invoke-virtual {v4, p1, v6}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 972
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v10, v10, Lgxt;->a:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 976
    iget-object v10, p0, Lgxr;->e:Lgxt;

    iget v10, v10, Lgxt;->a:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 977
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lgxt;->a(I)V

    goto/16 :goto_0

    .line 956
    :cond_7
    const-class v10, Ljava/lang/String;

    if-ne v3, v10, :cond_8

    .line 957
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgxt;->a(C)V

    .line 958
    invoke-virtual {p0}, Lgxr;->f()Ljava/lang/String;

    move-result-object v6

    .local v6, "fieldValue":Ljava/lang/String;
    goto :goto_1

    .line 959
    .end local v6    # "fieldValue":Ljava/lang/String;
    :cond_8
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_9

    .line 960
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgxt;->a(C)V

    .line 961
    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 963
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v10, v3, v5}, Lgyb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v7

    .line 965
    .local v7, "fieldValueDeserializer":Lgyk;
    iget-object v10, p0, Lgxr;->e:Lgxt;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgxt;->a(C)V

    .line 966
    const/4 v10, 0x0

    invoke-interface {v7, p0, v5, v10}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "fieldValue":Ljava/lang/Object;
    goto :goto_1
.end method


# virtual methods
.method protected final a()Lgxr$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1310
    iget-object v0, p0, Lgxr;->m:Ljava/util/List;

    iget-object v1, p0, Lgxr;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxr$a;

    return-object v0
.end method

.method protected final a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;
    .locals 6
    .param p1, "parent"    # Lgya;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1341
    iget-object v3, p0, Lgxr;->e:Lgxt;

    iget-boolean v3, v3, Lgxt;->s:Z

    if-eqz v3, :cond_0

    .line 1342
    const/4 v3, 0x0

    .line 1358
    :goto_0
    return-object v3

    .line 1345
    :cond_0
    new-instance v3, Lgya;

    invoke-direct {v3, p1, p2, p3}, Lgya;-><init>(Lgya;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lgxr;->f:Lgya;

    .line 1347
    iget v0, p0, Lgxr;->l:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lgxr;->l:I

    .line 1348
    .local v0, "i":I
    iget-object v3, p0, Lgxr;->k:[Lgya;

    if-nez v3, :cond_2

    .line 1349
    const/16 v3, 0x8

    new-array v3, v3, [Lgya;

    iput-object v3, p0, Lgxr;->k:[Lgya;

    .line 1356
    :cond_1
    :goto_1
    iget-object v3, p0, Lgxr;->k:[Lgya;

    iget-object v4, p0, Lgxr;->f:Lgya;

    aput-object v4, v3, v0

    .line 1358
    iget-object v3, p0, Lgxr;->f:Lgya;

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v3, p0, Lgxr;->k:[Lgya;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 1351
    iget-object v3, p0, Lgxr;->k:[Lgya;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 1352
    .local v2, "newLen":I
    new-array v1, v2, [Lgya;

    .line 1353
    .local v1, "newArray":[Lgya;
    iget-object v3, p0, Lgxr;->k:[Lgya;

    iget-object v4, p0, Lgxr;->k:[Lgya;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1354
    iput-object v1, p0, Lgxr;->k:[Lgya;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "fieldName"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1366
    iget-object v11, p0, Lgxr;->e:Lgxt;

    iget v11, v11, Lgxt;->a:I

    packed-switch v11, :pswitch_data_0

    .line 1443
    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "syntax error, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v13}, Lgxt;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1368
    :pswitch_1
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->e()V

    .line 1369
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1370
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-direct {p0, v4, p1}, Lgxr;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1438
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :goto_0
    return-object v4

    .line 1373
    :pswitch_2
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->e()V

    .line 1374
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 1375
    .local v8, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-direct {p0, v8, p1}, Lgxr;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1376
    goto :goto_0

    .line 1378
    .end local v8    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1379
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-direct {p0, v0, p1}, Lgxr;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v0

    .line 1380
    goto :goto_0

    .line 1382
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_4
    iget-object v11, p0, Lgxr;->e:Lgxt;

    iget v11, v11, Lgxt;->c:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1385
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    invoke-virtual {p0, v3, p1}, Lgxr;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1382
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_1

    .line 1387
    :pswitch_5
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->f()Ljava/lang/Number;

    move-result-object v1

    .line 1388
    .local v1, "intValue":Ljava/lang/Number;
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->e()V

    move-object v4, v1

    .line 1389
    goto :goto_0

    .line 1391
    .end local v1    # "intValue":Ljava/lang/Number;
    :pswitch_6
    iget-object v11, p0, Lgxr;->e:Lgxt;

    iget v11, v11, Lgxt;->c:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    const/4 v9, 0x1

    .line 1392
    .local v9, "useBigDecimal":Z
    :goto_2
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11, v9}, Lgxt;->a(Z)Ljava/lang/Number;

    move-result-object v10

    .line 1393
    .local v10, "value":Ljava/lang/Number;
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->e()V

    move-object v4, v10

    .line 1394
    goto :goto_0

    .line 1391
    .end local v9    # "useBigDecimal":Z
    .end local v10    # "value":Ljava/lang/Number;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 1396
    :pswitch_7
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->k()Ljava/lang/String;

    move-result-object v5

    .line 1397
    .local v5, "stringLiteral":Ljava/lang/String;
    iget-object v11, p0, Lgxr;->e:Lgxt;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lgxt;->a(I)V

    .line 1399
    iget-object v11, p0, Lgxr;->e:Lgxt;

    iget v11, v11, Lgxt;->c:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    .line 1400
    new-instance v2, Lgxt;

    invoke-direct {v2, v5}, Lgxt;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v2, "iso8601Lexer":Lgxt;
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v2, v11}, Lgxt;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1403
    iget-object v11, v2, Lgxt;->n:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1406
    invoke-virtual {v2}, Lgxt;->b()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lgxt;->b()V

    .end local v2    # "iso8601Lexer":Lgxt;
    :cond_3
    move-object v4, v5

    .line 1410
    goto/16 :goto_0

    .line 1406
    .restart local v2    # "iso8601Lexer":Lgxt;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lgxt;->b()V

    .line 1407
    throw v11

    .line 1413
    .end local v2    # "iso8601Lexer":Lgxt;
    .end local v5    # "stringLiteral":Ljava/lang/String;
    :pswitch_8
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->e()V

    .line 1414
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1416
    :pswitch_9
    iget-object v11, p0, Lgxr;->e:Lgxt;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lgxt;->a(I)V

    .line 1417
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1419
    :pswitch_a
    iget-object v11, p0, Lgxr;->e:Lgxt;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lgxt;->a(I)V

    .line 1420
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1422
    :pswitch_b
    iget-object v11, p0, Lgxr;->e:Lgxt;

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Lgxt;->a(I)V

    .line 1424
    iget-object v11, p0, Lgxr;->e:Lgxt;

    iget v11, v11, Lgxt;->a:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_4

    .line 1425
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "syntax error, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v13}, Lgxt;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1427
    :cond_4
    iget-object v11, p0, Lgxr;->e:Lgxt;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lgxt;->a(I)V

    .line 1429
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lgxr;->a(I)V

    .line 1430
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->f()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1431
    .local v6, "time":J
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lgxr;->a(I)V

    .line 1433
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lgxr;->a(I)V

    .line 1435
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 1437
    .end local v6    # "time":J
    :pswitch_c
    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->l()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1438
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1440
    :cond_5
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "syntax error, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v13}, Lgxt;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1366
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 664
    iget-object v4, p0, Lgxr;->e:Lgxt;

    iget v4, v4, Lgxt;->a:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 665
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->e()V

    .line 666
    const/4 v0, 0x0

    .line 686
    :goto_0
    return-object v0

    .line 669
    :cond_0
    iget-object v4, p0, Lgxr;->e:Lgxt;

    iget v4, v4, Lgxt;->a:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 670
    const-class v4, [B

    if-ne p1, v4, :cond_1

    .line 671
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->j()[B

    move-result-object v0

    .line 672
    .local v0, "bytes":[B
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->e()V

    goto :goto_0

    .line 676
    .end local v0    # "bytes":[B
    :cond_1
    const-class v4, [C

    if-ne p1, v4, :cond_2

    .line 677
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "strVal":Ljava/lang/String;
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->e()V

    .line 679
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 683
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v4, p1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v1

    .line 686
    .local v1, "derializer":Lgyk;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v2

    .line 688
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2

    .line 689
    .end local v2    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v2

    .line 690
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 49
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v28, v0

    .line 163
    .local v28, "lexer":Lgxt;
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v42, v0

    .line 164
    .local v42, "token":I
    const/16 v45, 0x8

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual/range {v28 .. v28}, Lgxt;->e()V

    .line 166
    const/16 p1, 0x0

    .line 640
    .end local p1    # "object":Ljava/util/Map;
    :cond_0
    :goto_0
    return-object p1

    .line 169
    .restart local p1    # "object":Ljava/util/Map;
    :cond_1
    const/16 v45, 0xc

    move/from16 v0, v42

    move/from16 v1, v45

    if-eq v0, v1, :cond_2

    const/16 v45, 0x10

    move/from16 v0, v42

    move/from16 v1, v45

    if-eq v0, v1, :cond_2

    .line 170
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, expect {, actual "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v42 .. v42}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ", "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 175
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v26, p1

    .line 176
    check-cast v26, Lcom/alibaba/fastjson/JSONObject;

    .line 177
    .local v26, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v19

    .line 178
    .local v19, "innerMap":Ljava/util/Map;
    const/16 v22, 0x1

    .line 185
    .end local v26    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v22, "isJSONObject":Z
    :goto_1
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->c:I

    move/from16 v45, v0

    sget-object v46, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v46, v0

    and-int v45, v45, v46

    if-eqz v45, :cond_6

    const/4 v4, 0x1

    .line 186
    .local v4, "allowISO8601DateFormat":Z
    :goto_2
    move-object/from16 v0, v28

    iget-boolean v11, v0, Lgxt;->s:Z

    .line 188
    .local v11, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxr;->f:Lgya;

    .line 190
    .local v7, "context":Lgya;
    const/16 v38, 0x0

    .line 192
    .local v38, "setContextFlag":Z
    :cond_3
    :goto_3
    :try_start_0
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 193
    .local v5, "ch":C
    const/16 v45, 0x22

    move/from16 v0, v45

    if-eq v5, v0, :cond_4

    const/16 v45, 0x7d

    move/from16 v0, v45

    if-eq v5, v0, :cond_4

    .line 195
    invoke-virtual/range {v28 .. v28}, Lgxt;->m()V

    .line 196
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 199
    :cond_4
    :goto_4
    const/16 v45, 0x2c

    move/from16 v0, v45

    if-ne v5, v0, :cond_7

    .line 200
    invoke-virtual/range {v28 .. v28}, Lgxt;->c()C

    .line 201
    invoke-virtual/range {v28 .. v28}, Lgxt;->m()V

    .line 202
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    goto :goto_4

    .line 180
    .end local v4    # "allowISO8601DateFormat":Z
    .end local v5    # "ch":C
    .end local v7    # "context":Lgya;
    .end local v11    # "disableCircularReferenceDetect":Z
    .end local v19    # "innerMap":Ljava/util/Map;
    .end local v22    # "isJSONObject":Z
    .end local v38    # "setContextFlag":Z
    :cond_5
    const/16 v22, 0x0

    .line 181
    .restart local v22    # "isJSONObject":Z
    move-object/from16 v19, p1

    .restart local v19    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .line 185
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 205
    .restart local v4    # "allowISO8601DateFormat":Z
    .restart local v5    # "ch":C
    .restart local v7    # "context":Lgya;
    .restart local v11    # "disableCircularReferenceDetect":Z
    .restart local v38    # "setContextFlag":Z
    :cond_7
    const/16 v23, 0x0

    .line 207
    .local v23, "isObjectKey":Z
    const/16 v45, 0x22

    move/from16 v0, v45

    if-ne v5, v0, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->a:Lgyd;

    move-object/from16 v45, v0

    const/16 v46, 0x22

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v27

    .line 210
    .local v27, "key":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 211
    const/16 v45, 0x3a

    move/from16 v0, v45

    if-eq v5, v0, :cond_61

    .line 212
    invoke-virtual/range {v28 .. v28}, Lgxt;->m()V

    .line 213
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 215
    const/16 v45, 0x3a

    move/from16 v0, v45

    if-eq v5, v0, :cond_61

    .line 216
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "expect \':\' at "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->b:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ", name "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    .end local v5    # "ch":C
    .end local v23    # "isObjectKey":Z
    .end local v27    # "key":Ljava/lang/String;
    .end local p1    # "object":Ljava/util/Map;
    :catchall_0
    move-exception v45

    if-nez v11, :cond_8

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    .line 649
    :cond_8
    throw v45

    .line 219
    .restart local v5    # "ch":C
    .restart local v23    # "isObjectKey":Z
    .restart local p1    # "object":Ljava/util/Map;
    :cond_9
    const/16 v45, 0x7d

    move/from16 v0, v45

    if-ne v5, v0, :cond_b

    .line 222
    :try_start_1
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v45, v0

    add-int/lit8 v18, v45, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 223
    .local v18, "index":I
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v45, v0

    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_a

    const/16 v45, 0x1a

    .line 225
    :goto_5
    move/from16 v0, v45

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    .line 227
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->g:I

    .line 228
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 223
    :cond_a
    :try_start_2
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 225
    move-object/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    goto :goto_5

    .line 230
    .end local v18    # "index":I
    :cond_b
    const/16 v45, 0x27

    move/from16 v0, v45

    if-ne v5, v0, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->a:Lgyd;

    move-object/from16 v45, v0

    const/16 v46, 0x27

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v27

    .line 232
    .restart local v27    # "key":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v45, v0

    const/16 v46, 0x3a

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_c

    .line 233
    invoke-virtual/range {v28 .. v28}, Lgxt;->m()V

    .line 235
    :cond_c
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 236
    const/16 v45, 0x3a

    move/from16 v0, v45

    if-eq v5, v0, :cond_61

    .line 237
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "expect \':\' at "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->b:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 239
    .end local v27    # "key":Ljava/lang/String;
    :cond_d
    const/16 v45, 0x1a

    move/from16 v0, v45

    if-ne v5, v0, :cond_e

    .line 240
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 241
    :cond_e
    const/16 v45, 0x2c

    move/from16 v0, v45

    if-ne v5, v0, :cond_f

    .line 242
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 243
    :cond_f
    const/16 v45, 0x30

    move/from16 v0, v45

    if-lt v5, v0, :cond_10

    const/16 v45, 0x39

    move/from16 v0, v45

    if-le v5, v0, :cond_11

    :cond_10
    const/16 v45, 0x2d

    move/from16 v0, v45

    if-ne v5, v0, :cond_14

    .line 244
    :cond_11
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->g:I

    .line 245
    invoke-virtual/range {v28 .. v28}, Lgxt;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v45, v0

    const/16 v46, 0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_13

    .line 248
    invoke-virtual/range {v28 .. v28}, Lgxt;->f()Ljava/lang/Number;

    move-result-object v27

    .line 253
    .local v27, "key":Ljava/lang/Number;
    :goto_6
    if-eqz v22, :cond_12

    .line 254
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v27

    .line 259
    .end local v27    # "key":Ljava/lang/Number;
    :cond_12
    :try_start_4
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 260
    const/16 v45, 0x3a

    move/from16 v0, v45

    if-eq v5, v0, :cond_62

    .line 261
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "parse number key error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    :cond_13
    const/16 v45, 0x1

    :try_start_5
    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(Z)Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v27

    .restart local v27    # "key":Ljava/lang/Number;
    goto :goto_6

    .line 257
    .end local v27    # "key":Ljava/lang/Number;
    :catch_0
    move-exception v45

    :try_start_6
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "parse number key error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 263
    :cond_14
    const/16 v45, 0x7b

    move/from16 v0, v45

    if-eq v5, v0, :cond_15

    const/16 v45, 0x5b

    move/from16 v0, v45

    if-ne v5, v0, :cond_17

    .line 264
    :cond_15
    invoke-virtual/range {v28 .. v28}, Lgxt;->e()V

    .line 2362
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 266
    .local v27, "key":Ljava/lang/Object;
    const/16 v23, 0x1

    move-object/from16 v45, v27

    .line 280
    .end local v27    # "key":Ljava/lang/Object;
    :goto_7
    if-nez v23, :cond_1a

    .line 283
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v46, v0

    add-int/lit8 v18, v46, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 284
    .restart local v18    # "index":I
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v46, v0

    move/from16 v0, v18

    move/from16 v1, v46

    if-lt v0, v1, :cond_19

    const/16 v5, 0x1a

    .line 286
    .end local v5    # "ch":C
    :goto_8
    move-object/from16 v0, v28

    iput-char v5, v0, Lgxt;->d:C

    .line 291
    .restart local v5    # "ch":C
    :goto_9
    const/16 v46, 0x20

    move/from16 v0, v46

    if-gt v5, v0, :cond_1b

    const/16 v46, 0x20

    move/from16 v0, v46

    if-eq v5, v0, :cond_16

    const/16 v46, 0xa

    move/from16 v0, v46

    if-eq v5, v0, :cond_16

    const/16 v46, 0xd

    move/from16 v0, v46

    if-eq v5, v0, :cond_16

    const/16 v46, 0x9

    move/from16 v0, v46

    if-eq v5, v0, :cond_16

    const/16 v46, 0xc

    move/from16 v0, v46

    if-eq v5, v0, :cond_16

    const/16 v46, 0x8

    move/from16 v0, v46

    if-ne v5, v0, :cond_1b

    .line 299
    :cond_16
    invoke-virtual/range {v28 .. v28}, Lgxt;->c()C

    .line 300
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    goto :goto_9

    .line 268
    .end local v18    # "index":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->a:Lgyd;

    move-object/from16 v45, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->b(Lgyd;)Ljava/lang/String;

    move-result-object v27

    .line 269
    .local v27, "key":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lgxt;->m()V

    .line 270
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 271
    const/16 v45, 0x3a

    move/from16 v0, v45

    if-eq v5, v0, :cond_18

    .line 272
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "expect \':\' at "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ", actual "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 275
    :cond_18
    if-eqz v22, :cond_61

    .line 276
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v45, v27

    goto/16 :goto_7

    .line 284
    .end local v27    # "key":Ljava/lang/String;
    .restart local v18    # "index":I
    :cond_19
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 286
    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto/16 :goto_8

    .line 306
    .end local v18    # "index":I
    :cond_1a
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 309
    :cond_1b
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->g:I

    .line 311
    const-string/jumbo v46, "@type"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_27

    sget-object v46, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 312
    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lgxt;->a(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v46

    if-nez v46, :cond_27

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->a:Lgyd;

    move-object/from16 v45, v0

    const/16 v46, 0x22

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v43

    .line 314
    .local v43, "typeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->c:I

    move/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lgyb;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v6

    .line 316
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_1c

    .line 317
    const-string/jumbo v45, "@type"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 321
    :cond_1c
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    .line 322
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v45, v0

    const/16 v46, 0xd

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_23

    .line 323
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 325
    const/16 v21, 0x0

    .line 326
    .local v21, "instance":Ljava/lang/Object;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v10

    .line 327
    .local v10, "deserializer":Lgyk;
    instance-of v0, v10, Lgxv;

    move/from16 v45, v0

    if-eqz v45, :cond_1e

    .line 328
    move-object v0, v10

    check-cast v0, Lgxv;

    move-object/from16 v25, v0

    .line 329
    .local v25, "javaBeanDeserializer":Lgxv;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v21

    .line 331
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_1d
    :goto_a
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_1e

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    .line 332
    .local v31, "o":Ljava/lang/Object;
    move-object/from16 v0, v31

    check-cast v0, Ljava/util/Map$Entry;

    move-object v13, v0

    .line 333
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 334
    .local v14, "entryKey":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v46, v0

    if-eqz v46, :cond_1d

    .line 335
    check-cast v14, Ljava/lang/String;

    .end local v14    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v16

    .line 336
    .local v16, "fieldDeserializer":Lgyi;
    if-eqz v16, :cond_1d

    .line 337
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    .line 354
    .end local v10    # "deserializer":Lgyk;
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v16    # "fieldDeserializer":Lgyi;
    .end local v21    # "instance":Ljava/lang/Object;
    .end local v25    # "javaBeanDeserializer":Lgxv;
    .end local v31    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v12

    .line 355
    .local v12, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v46, "create instance error"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v45
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 343
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "deserializer":Lgyk;
    :cond_1e
    if-nez v21, :cond_1f

    .line 344
    :try_start_9
    const-class v45, Ljava/lang/Cloneable;

    move-object/from16 v0, v45

    if-ne v6, v0, :cond_21

    .line 345
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 646
    :cond_1f
    :goto_b
    if-nez v11, :cond_20

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    :cond_20
    move-object/from16 p1, v21

    .line 353
    goto/16 :goto_0

    .line 346
    :cond_21
    :try_start_a
    const-string/jumbo v45, "java.util.Collections$EmptyMap"

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_22

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v21

    .local v21, "instance":Ljava/util/Map;
    goto :goto_b

    .line 349
    .end local v21    # "instance":Ljava/util/Map;
    :cond_22
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v21

    .local v21, "instance":Ljava/lang/Object;
    goto :goto_b

    .line 359
    .end local v10    # "deserializer":Lgyk;
    .end local v21    # "instance":Ljava/lang/Object;
    :cond_23
    const/16 v45, 0x2

    :try_start_b
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lgxr;->g:I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->f:Lgya;

    move-object/from16 v45, v0

    if-eqz v45, :cond_24

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v45, v0

    if-nez v45, :cond_24

    .line 362
    invoke-virtual/range {p0 .. p0}, Lgxr;->d()V

    .line 365
    :cond_24
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v45

    if-lez v45, :cond_26

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-static {v0, v6, v1}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;)Ljava/lang/Object;

    move-result-object v30

    .line 367
    .local v30, "newObj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lgxr;->b(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 646
    if-nez v11, :cond_25

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    :cond_25
    move-object/from16 p1, v30

    .line 368
    goto/16 :goto_0

    .line 371
    .end local v30    # "newObj":Ljava/lang/Object;
    :cond_26
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v10

    .line 372
    .restart local v10    # "deserializer":Lgyk;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v6, v1}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object p1

    .line 646
    .end local p1    # "object":Ljava/util/Map;
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 375
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "deserializer":Lgyk;
    .end local v43    # "typeName":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_27
    :try_start_d
    const-string/jumbo v46, "$ref"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_33

    if-eqz v7, :cond_33

    sget-object v46, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 377
    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lgxt;->a(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v46

    if-nez v46, :cond_33

    .line 379
    const/16 v45, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    .line 380
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v45, v0

    const/16 v46, 0x4

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_32

    .line 381
    invoke-virtual/range {v28 .. v28}, Lgxt;->k()Ljava/lang/String;

    move-result-object v35

    .line 382
    .local v35, "ref":Ljava/lang/String;
    const/16 v45, 0xd

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    .line 384
    const/16 v36, 0x0

    .line 385
    .local v36, "refValue":Ljava/lang/Object;
    const-string/jumbo v45, "@"

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2b

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->f:Lgya;

    move-object/from16 v40, v0

    .line 387
    .local v40, "thisContext":Lgya;
    move-object/from16 v0, v40

    iget-object v0, v0, Lgya;->a:Ljava/lang/Object;

    move-object/from16 v41, v0

    .line 388
    .local v41, "thisObj":Ljava/lang/Object;
    move-object/from16 v0, v41

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v45, v0

    if-nez v45, :cond_28

    move-object/from16 v0, v41

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v45, v0

    if-eqz v45, :cond_29

    .line 389
    :cond_28
    move-object/from16 v36, v41

    move-object/from16 p1, v36

    .line 417
    .end local v36    # "refValue":Ljava/lang/Object;
    .end local v40    # "thisContext":Lgya;
    .end local v41    # "thisObj":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :goto_c
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v45, v0

    const/16 v46, 0xd

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_31

    .line 418
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 390
    .restart local v36    # "refValue":Ljava/lang/Object;
    .restart local v40    # "thisContext":Lgya;
    .restart local v41    # "thisObj":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_29
    move-object/from16 v0, v40

    iget-object v0, v0, Lgya;->b:Lgya;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2a

    .line 391
    move-object/from16 v0, v40

    iget-object v0, v0, Lgya;->b:Lgya;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lgya;->a:Ljava/lang/Object;

    move-object/from16 v36, v0

    .end local v36    # "refValue":Ljava/lang/Object;
    :cond_2a
    move-object/from16 p1, v36

    .line 393
    goto :goto_c

    .end local v40    # "thisContext":Lgya;
    .end local v41    # "thisObj":Ljava/lang/Object;
    .restart local v36    # "refValue":Ljava/lang/Object;
    :cond_2b
    const-string/jumbo v45, ".."

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2d

    .line 394
    iget-object v0, v7, Lgya;->a:Ljava/lang/Object;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2c

    .line 395
    iget-object v0, v7, Lgya;->a:Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 p1, v36

    goto :goto_c

    .line 397
    :cond_2c
    new-instance v45, Lgxr$a;

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-direct {v0, v7, v1}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxr;->a(Lgxr$a;)V

    .line 398
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lgxr;->g:I

    move-object/from16 p1, v36

    goto :goto_c

    .line 400
    :cond_2d
    const-string/jumbo v45, "$"

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_30

    .line 401
    move-object/from16 v37, v7

    .line 402
    .local v37, "rootContext":Lgya;
    :goto_d
    move-object/from16 v0, v37

    iget-object v0, v0, Lgya;->b:Lgya;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2e

    .line 403
    move-object/from16 v0, v37

    iget-object v0, v0, Lgya;->b:Lgya;

    move-object/from16 v37, v0

    goto :goto_d

    .line 406
    :cond_2e
    move-object/from16 v0, v37

    iget-object v0, v0, Lgya;->a:Ljava/lang/Object;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2f

    .line 407
    move-object/from16 v0, v37

    iget-object v0, v0, Lgya;->a:Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 p1, v36

    goto/16 :goto_c

    .line 409
    :cond_2f
    new-instance v45, Lgxr$a;

    move-object/from16 v0, v45

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxr;->a(Lgxr$a;)V

    .line 410
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lgxr;->g:I

    move-object/from16 p1, v36

    .line 412
    goto/16 :goto_c

    .line 413
    .end local v37    # "rootContext":Lgya;
    :cond_30
    new-instance v45, Lgxr$a;

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-direct {v0, v7, v1}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxr;->a(Lgxr$a;)V

    .line 414
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Lgxr;->g:I

    move-object/from16 p1, v36

    goto/16 :goto_c

    .line 420
    .end local v36    # "refValue":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :cond_31
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 646
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 424
    .end local v35    # "ref":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_32
    :try_start_e
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "illegal ref, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 428
    :cond_33
    if-nez v11, :cond_35

    if-nez v38, :cond_35

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->f:Lgya;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    move-result-object v8

    .line 431
    .local v8, "contextR":Lgya;
    if-nez v7, :cond_34

    .line 432
    move-object v7, v8

    .line 434
    :cond_34
    const/16 v38, 0x1

    .line 438
    .end local v8    # "contextR":Lgya;
    :cond_35
    const/16 v46, 0x22

    move/from16 v0, v46

    if-ne v5, v0, :cond_3b

    .line 439
    const/16 v46, 0x22

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lgxt;->b(C)Ljava/lang/String;

    move-result-object v39

    .line 440
    .local v39, "strValue":Ljava/lang/String;
    move-object/from16 v44, v39

    .line 442
    .local v44, "value":Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 443
    new-instance v24, Lgxt;

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lgxt;-><init>(Ljava/lang/String;)V

    .line 444
    .local v24, "iso8601Lexer":Lgxt;
    const/16 v46, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lgxt;->b(Z)Z

    move-result v46

    if-eqz v46, :cond_36

    .line 445
    move-object/from16 v0, v24

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v44

    .line 447
    .end local v44    # "value":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {v24 .. v24}, Lgxt;->b()V

    .line 450
    .end local v24    # "iso8601Lexer":Lgxt;
    :cond_37
    if-eqz v19, :cond_3a

    .line 451
    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .end local v39    # "strValue":Ljava/lang/String;
    :cond_38
    :goto_e
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 590
    const/16 v45, 0x2c

    move/from16 v0, v45

    if-eq v5, v0, :cond_39

    const/16 v45, 0x7d

    move/from16 v0, v45

    if-eq v5, v0, :cond_39

    .line 591
    invoke-virtual/range {v28 .. v28}, Lgxt;->m()V

    .line 592
    move-object/from16 v0, v28

    iget-char v5, v0, Lgxt;->d:C

    .line 595
    :cond_39
    const/16 v45, 0x2c

    move/from16 v0, v45

    if-ne v5, v0, :cond_57

    .line 598
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v45, v0

    add-int/lit8 v18, v45, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 599
    .restart local v18    # "index":I
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v45, v0

    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_56

    const/16 v45, 0x1a

    .line 601
    :goto_f
    move/from16 v0, v45

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    goto/16 :goto_3

    .line 453
    .end local v18    # "index":I
    .restart local v39    # "strValue":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 455
    .end local v39    # "strValue":Ljava/lang/String;
    :cond_3b
    const/16 v46, 0x30

    move/from16 v0, v46

    if-lt v5, v0, :cond_3c

    const/16 v46, 0x39

    move/from16 v0, v46

    if-le v5, v0, :cond_3d

    :cond_3c
    const/16 v46, 0x2d

    move/from16 v0, v46

    if-ne v5, v0, :cond_3e

    .line 456
    :cond_3d
    invoke-virtual/range {v28 .. v28}, Lgxt;->p()Ljava/lang/Number;

    move-result-object v44

    .line 457
    .local v44, "value":Ljava/lang/Number;
    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 458
    .end local v44    # "value":Ljava/lang/Number;
    :cond_3e
    const/16 v46, 0x5b

    move/from16 v0, v46

    if-ne v5, v0, :cond_44

    .line 459
    const/16 v46, 0xe

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->a:I

    .line 462
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v46, v0

    add-int/lit8 v18, v46, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 463
    .restart local v18    # "index":I
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v46, v0

    move/from16 v0, v18

    move/from16 v1, v46

    if-lt v0, v1, :cond_40

    const/16 v46, 0x1a

    .line 465
    :goto_10
    move/from16 v0, v46

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    .line 467
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v29, "list":Ljava/util/ArrayList;
    if-eqz p2, :cond_41

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    const-class v47, Ljava/lang/Integer;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_41

    const/16 v34, 0x1

    .line 470
    .local v34, "parentIsArray":Z
    :goto_11
    if-nez v34, :cond_3f

    .line 471
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgxr;->a(Lgya;)V

    .line 474
    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lgxr;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 475
    new-instance v44, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    .line 476
    .local v44, "value":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v19, :cond_42

    .line 477
    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_12
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v42, v0

    .line 483
    const/16 v45, 0xd

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_43

    .line 484
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 646
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 463
    .end local v29    # "list":Ljava/util/ArrayList;
    .end local v34    # "parentIsArray":Z
    .end local v44    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_40
    :try_start_f
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 465
    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    goto :goto_10

    .line 469
    .restart local v29    # "list":Ljava/util/ArrayList;
    :cond_41
    const/16 v34, 0x0

    goto :goto_11

    .line 479
    .restart local v34    # "parentIsArray":Z
    .restart local v44    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_42
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 486
    :cond_43
    const/16 v45, 0x10

    move/from16 v0, v42

    move/from16 v1, v45

    if-eq v0, v1, :cond_3

    .line 489
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 491
    .end local v18    # "index":I
    .end local v29    # "list":Ljava/util/ArrayList;
    .end local v34    # "parentIsArray":Z
    .end local v44    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_44
    const/16 v46, 0x7b

    move/from16 v0, v46

    if-ne v5, v0, :cond_51

    .line 493
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v46, v0

    add-int/lit8 v18, v46, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 494
    .restart local v18    # "index":I
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v46, v0

    move/from16 v0, v18

    move/from16 v1, v46

    if-lt v0, v1, :cond_4d

    const/16 v46, 0x1a

    .line 496
    :goto_13
    move/from16 v0, v46

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    .line 497
    const/16 v46, 0xc

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->a:I

    .line 500
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v34, v0

    .line 502
    .restart local v34    # "parentIsArray":Z
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->c:I

    move/from16 v46, v0

    sget-object v47, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v47, v0

    and-int v46, v46, v47

    if-eqz v46, :cond_4e

    new-instance v20, Lcom/alibaba/fastjson/JSONObject;

    new-instance v46, Ljava/util/LinkedHashMap;

    invoke-direct/range {v46 .. v46}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 506
    .local v20, "input":Lcom/alibaba/fastjson/JSONObject;
    :goto_14
    const/4 v9, 0x0

    .line 508
    .local v9, "ctxLocal":Lgya;
    if-nez v11, :cond_45

    if-nez v34, :cond_45

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v45

    invoke-virtual {v0, v7, v1, v2}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    move-result-object v9

    .line 513
    :cond_45
    const/16 v32, 0x0

    .line 514
    .local v32, "obj":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 515
    .local v33, "objParsed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->j:Lgyj;

    move-object/from16 v46, v0

    if-eqz v46, :cond_47

    .line 516
    if-eqz v45, :cond_46

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 517
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->j:Lgyj;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lgyj;->a()Ljava/lang/reflect/Type;

    move-result-object v17

    .line 518
    .local v17, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v17, :cond_47

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v15

    .line 520
    .local v15, "fieldDeser":Lgyk;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v45

    invoke-interface {v15, v0, v1, v2}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 521
    const/16 v33, 0x1

    .line 524
    .end local v15    # "fieldDeser":Lgyk;
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v32    # "obj":Ljava/lang/Object;
    :cond_47
    if-nez v33, :cond_48

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lgxr;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 527
    :cond_48
    if-eqz v9, :cond_49

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_49

    .line 528
    move-object/from16 v0, p1

    iput-object v0, v9, Lgya;->a:Ljava/lang/Object;

    .line 531
    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Lgxr;->g:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_4a

    .line 532
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgxr;->b(Ljava/util/Map;Ljava/lang/Object;)V

    .line 535
    :cond_4a
    if-eqz v19, :cond_4f

    .line 536
    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :goto_15
    if-eqz v34, :cond_4b

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-virtual {v0, v7, v1, v2}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    .line 545
    :cond_4b
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v42, v0

    .line 546
    const/16 v45, 0xd

    move/from16 v0, v42

    move/from16 v1, v45

    if-ne v0, v1, :cond_50

    .line 547
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    .line 549
    if-nez v11, :cond_4c

    .line 550
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 646
    :cond_4c
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 494
    .end local v9    # "ctxLocal":Lgya;
    .end local v20    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v33    # "objParsed":Z
    .end local v34    # "parentIsArray":Z
    :cond_4d
    :try_start_10
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 496
    move-object/from16 v0, v46

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    goto/16 :goto_13

    .line 502
    .restart local v34    # "parentIsArray":Z
    :cond_4e
    new-instance v20, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto/16 :goto_14

    .line 538
    .restart local v9    # "ctxLocal":Lgya;
    .restart local v20    # "input":Lcom/alibaba/fastjson/JSONObject;
    .restart local v33    # "objParsed":Z
    :cond_4f
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 553
    :cond_50
    const/16 v45, 0x10

    move/from16 v0, v42

    move/from16 v1, v45

    if-eq v0, v1, :cond_3

    .line 556
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 558
    .end local v9    # "ctxLocal":Lgya;
    .end local v18    # "index":I
    .end local v20    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v33    # "objParsed":Z
    .end local v34    # "parentIsArray":Z
    :cond_51
    const/16 v46, 0x74

    move/from16 v0, v46

    if-ne v5, v0, :cond_52

    .line 559
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "true"

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 560
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x3

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 561
    invoke-virtual/range {v28 .. v28}, Lgxt;->c()C

    .line 562
    sget-object v46, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 564
    :cond_52
    const/16 v46, 0x66

    move/from16 v0, v46

    if-ne v5, v0, :cond_53

    .line 565
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "false"

    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 566
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x4

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 567
    invoke-virtual/range {v28 .. v28}, Lgxt;->c()C

    .line 568
    sget-object v46, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 571
    :cond_53
    invoke-virtual/range {v28 .. v28}, Lgxt;->e()V

    .line 3362
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 574
    .local v44, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    const-class v47, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_54

    .line 575
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v45

    .line 574
    :cond_54
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v45, v0

    const/16 v46, 0xd

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_55

    .line 580
    const/16 v45, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lgxt;->a(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 646
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 582
    :cond_55
    :try_start_11
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->a:I

    move/from16 v45, v0

    const/16 v46, 0x10

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 585
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 599
    .end local v44    # "value":Ljava/lang/Object;
    .restart local v18    # "index":I
    :cond_56
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 601
    move-object/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    goto/16 :goto_f

    .line 604
    .end local v18    # "index":I
    :cond_57
    const/16 v45, 0x7d

    move/from16 v0, v45

    if-ne v5, v0, :cond_60

    .line 607
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v45, v0

    add-int/lit8 v18, v45, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 608
    .restart local v18    # "index":I
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v45, v0

    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_59

    const/16 v5, 0x1a

    .line 610
    .end local v5    # "ch":C
    :goto_16
    move-object/from16 v0, v28

    iput-char v5, v0, Lgxt;->d:C

    .line 612
    .restart local v5    # "ch":C
    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->g:I

    .line 614
    const/16 v45, 0x2c

    move/from16 v0, v45

    if-ne v5, v0, :cond_5b

    .line 615
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v45, v0

    add-int/lit8 v18, v45, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 616
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v45, v0

    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_5a

    const/16 v45, 0x1a

    .line 618
    :goto_17
    move/from16 v0, v45

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    .line 619
    const/16 v45, 0x10

    move/from16 v0, v45

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->a:I

    .line 636
    :goto_18
    if-nez v11, :cond_58

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxr;->f:Lgya;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 646
    :cond_58
    if-nez v11, :cond_0

    .line 647
    move-object/from16 v0, p0

    iput-object v7, v0, Lgxr;->f:Lgya;

    goto/16 :goto_0

    .line 608
    :cond_59
    :try_start_12
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 610
    move-object/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_16

    .line 616
    :cond_5a
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 618
    move-object/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    goto :goto_17

    .line 620
    :cond_5b
    const/16 v45, 0x7d

    move/from16 v0, v45

    if-ne v5, v0, :cond_5d

    .line 621
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v45, v0

    add-int/lit8 v18, v45, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 622
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v45, v0

    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_5c

    const/16 v45, 0x1a

    .line 624
    :goto_19
    move/from16 v0, v45

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    .line 625
    const/16 v45, 0xd

    move/from16 v0, v45

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->a:I

    goto :goto_18

    .line 622
    :cond_5c
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 624
    move-object/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    goto :goto_19

    .line 626
    :cond_5d
    const/16 v45, 0x5d

    move/from16 v0, v45

    if-ne v5, v0, :cond_5f

    .line 627
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->e:I

    move/from16 v45, v0

    add-int/lit8 v18, v45, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->e:I

    .line 628
    move-object/from16 v0, v28

    iget v0, v0, Lgxt;->q:I

    move/from16 v45, v0

    move/from16 v0, v18

    move/from16 v1, v45

    if-lt v0, v1, :cond_5e

    const/16 v45, 0x1a

    .line 630
    :goto_1a
    move/from16 v0, v45

    move-object/from16 v1, v28

    iput-char v0, v1, Lgxt;->d:C

    .line 631
    const/16 v45, 0xf

    move/from16 v0, v45

    move-object/from16 v1, v28

    iput v0, v1, Lgxt;->a:I

    goto/16 :goto_18

    .line 628
    :cond_5e
    move-object/from16 v0, v28

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 630
    move-object/from16 v0, v45

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    goto :goto_1a

    .line 633
    :cond_5f
    invoke-virtual/range {v28 .. v28}, Lgxt;->e()V

    goto/16 :goto_18

    .line 642
    .end local v18    # "index":I
    :cond_60
    new-instance v45, Lcom/alibaba/fastjson/JSONException;

    new-instance v46, Ljava/lang/StringBuilder;

    const-string/jumbo v47, "syntax error, "

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lgxt;->g()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .restart local v27    # "key":Ljava/lang/String;
    :cond_61
    move-object/from16 v45, v27

    goto/16 :goto_7

    .end local v27    # "key":Ljava/lang/String;
    :cond_62
    move-object/from16 v45, v27

    goto/16 :goto_7
.end method

.method public final a(I)V
    .locals 3
    .param p1, "token"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1452
    iget-object v0, p0, Lgxr;->e:Lgxt;

    iget v0, v0, Lgxt;->a:I

    if-ne v0, p1, :cond_0

    .line 1453
    iget-object v0, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v0}, Lgxt;->e()V

    return-void

    .line 1455
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syntax error, expect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgxr;->e:Lgxt;

    iget v2, v2, Lgxt;->a:I

    .line 1456
    invoke-static {v2}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lgxr$a;)V
    .locals 2
    .param p1, "task"    # Lgxr$a;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1303
    iget-object v0, p0, Lgxr;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgxr;->m:Ljava/util/List;

    .line 1306
    :cond_0
    iget-object v0, p0, Lgxr;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    return-void
.end method

.method public final a(Lgya;)V
    .locals 1
    .param p1, "context"    # Lgya;

    .prologue
    .line 1328
    iget-object v0, p0, Lgxr;->e:Lgxt;

    iget-boolean v0, v0, Lgxt;->s:Z

    if-eqz v0, :cond_0

    .line 1332
    :goto_0
    return-void

    .line 1331
    :cond_0
    iput-object p1, p0, Lgxr;->f:Lgya;

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 707
    return-void
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x0

    const/16 v10, 0x10

    .line 711
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    const/16 v8, 0x16

    if-ne v7, v8, :cond_1

    .line 712
    :cond_0
    iget-object v7, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v7}, Lgxt;->e()V

    .line 715
    :cond_1
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    const/16 v8, 0xe

    if-eq v7, v8, :cond_2

    .line 716
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "exepct \'[\', but "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lgxr;->e:Lgxt;

    iget v8, v8, Lgxt;->a:I

    invoke-static {v8}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v8}, Lgxt;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 720
    :cond_2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_4

    .line 721
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 722
    .local v1, "deserializer":Lgyk;
    iget-object v7, p0, Lgxr;->e:Lgxt;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lgxt;->a(I)V

    .line 731
    :goto_0
    iget-object v0, p0, Lgxr;->f:Lgya;

    .line 732
    .local v0, "context":Lgya;
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget-boolean v7, v7, Lgxt;->s:Z

    if-nez v7, :cond_3

    .line 733
    iget-object v7, p0, Lgxr;->f:Lgya;

    invoke-virtual {p0, v7, p2, p3}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    .line 736
    :cond_3
    const/4 v2, 0x0

    .line 737
    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    if-ne v7, v10, :cond_6

    .line 738
    iget-object v7, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v7}, Lgxt;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 782
    :catchall_0
    move-exception v6

    iput-object v0, p0, Lgxr;->f:Lgya;

    .line 783
    throw v6

    .line 723
    .end local v0    # "context":Lgya;
    .end local v1    # "deserializer":Lgyk;
    .end local v2    # "i":I
    :cond_4
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_5

    .line 724
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 725
    .restart local v1    # "deserializer":Lgyk;
    iget-object v7, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v7, v11}, Lgxt;->a(I)V

    goto :goto_0

    .line 727
    .end local v1    # "deserializer":Lgyk;
    :cond_5
    iget-object v7, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v7, p1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v1

    .line 728
    .restart local v1    # "deserializer":Lgyk;
    iget-object v7, p0, Lgxr;->e:Lgxt;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lgxt;->a(I)V

    goto :goto_0

    .line 742
    .restart local v0    # "context":Lgya;
    .restart local v2    # "i":I
    :cond_6
    :try_start_1
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    const/16 v8, 0xf

    if-eq v7, v8, :cond_e

    .line 746
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_9

    .line 747
    sget-object v7, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 748
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 776
    .end local v4    # "val":Ljava/lang/Object;
    :cond_7
    :goto_2
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    if-ne v7, v10, :cond_8

    .line 777
    iget-object v7, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v7}, Lgxt;->e()V

    .line 736
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 749
    :cond_9
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_c

    .line 751
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    if-ne v7, v11, :cond_a

    .line 752
    iget-object v7, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v7}, Lgxt;->k()Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lgxr;->e:Lgxt;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lgxt;->a(I)V

    .line 761
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4362
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 756
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_b

    move-object v5, v6

    .line 758
    .restart local v5    # "value":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 764
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_c
    iget-object v7, p0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->a:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_d

    .line 765
    iget-object v7, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v7}, Lgxt;->e()V

    .line 766
    const/4 v4, 0x0

    .line 770
    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 771
    iget v7, p0, Lgxr;->g:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 772
    invoke-virtual {p0, p2}, Lgxr;->a(Ljava/util/Collection;)V

    goto :goto_2

    .line 768
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, p0, p1, v7}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_5

    .line 782
    .end local v4    # "val":Ljava/lang/Object;
    :cond_e
    iput-object v0, p0, Lgxr;->f:Lgya;

    .line 785
    iget-object v6, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v6, v10}, Lgxt;->a(I)V

    .line 786
    return-void
.end method

.method protected final a(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1056
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {p0}, Lgxr;->a()Lgxr$a;

    move-result-object v0

    .line 1058
    .local v0, "task":Lgxr$a;
    new-instance v2, Lgyc;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v1, v3}, Lgyc;-><init>(Lgxr;Ljava/util/List;I)V

    iput-object v2, v0, Lgxr$a;->c:Lgyi;

    .line 1059
    iget-object v1, p0, Lgxr;->f:Lgya;

    iput-object v1, v0, Lgxr$a;->d:Lgya;

    .line 1060
    iput v4, p0, Lgxr;->g:I

    .line 1067
    :goto_0
    return-void

    .line 1062
    .end local v0    # "task":Lgxr$a;
    :cond_0
    invoke-virtual {p0}, Lgxr;->a()Lgxr$a;

    move-result-object v0

    .line 1063
    .restart local v0    # "task":Lgxr$a;
    new-instance v1, Lgyc;

    invoke-direct {v1, p1}, Lgyc;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lgxr$a;->c:Lgyi;

    .line 1064
    iget-object v1, p0, Lgxr;->f:Lgya;

    iput-object v1, v0, Lgxr$a;->d:Lgya;

    .line 1065
    iput v4, p0, Lgxr;->g:I

    goto :goto_0
.end method

.method public final a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 12
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 789
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 790
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    .line 791
    const/4 v5, 0x0

    .line 898
    :goto_0
    return-object v5

    .line 794
    :cond_0
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_1

    .line 795
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 798
    :cond_1
    array-length v9, p1

    new-array v5, v9, [Ljava/lang/Object;

    .line 799
    .local v5, "list":[Ljava/lang/Object;
    array-length v9, p1

    if-nez v9, :cond_3

    .line 800
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    .line 802
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_2

    .line 803
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 806
    :cond_2
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    .line 807
    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    goto :goto_0

    .line 810
    :cond_3
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    .line 812
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, p1

    if-ge v3, v9, :cond_10

    .line 815
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 816
    const/4 v7, 0x0

    .line 817
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    .line 875
    .end local v7    # "value":Ljava/lang/Object;
    :goto_2
    aput-object v7, v5, v3

    .line 877
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_10

    .line 881
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_e

    .line 882
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 819
    :cond_4
    aget-object v6, p1, v3

    .line 820
    .local v6, "type":Ljava/lang/reflect/Type;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v9, :cond_5

    const-class v9, Ljava/lang/Integer;

    if-ne v6, v9, :cond_7

    .line 821
    :cond_5
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 822
    iget-object v9, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v9}, Lgxt;->i()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 823
    .local v7, "value":Ljava/lang/Integer;
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    goto :goto_2

    .line 5362
    .end local v7    # "value":Ljava/lang/Integer;
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 826
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lgxr;->b:Lgyb;

    invoke-static {v7, v6, v9}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 828
    .end local v7    # "value":Ljava/lang/Object;
    :cond_7
    const-class v9, Ljava/lang/String;

    if-ne v6, v9, :cond_9

    .line 829
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 830
    iget-object v9, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v9}, Lgxt;->k()Ljava/lang/String;

    move-result-object v7

    .line 831
    .local v7, "value":Ljava/lang/String;
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    goto :goto_2

    .line 6362
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 834
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lgxr;->b:Lgyb;

    invoke-static {v7, v6, v9}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2

    .line 837
    .end local v7    # "value":Ljava/lang/Object;
    :cond_9
    const/4 v4, 0x0

    .line 838
    .local v4, "isArray":Z
    const/4 v1, 0x0

    .line 839
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_a

    .line 840
    instance-of v9, v6, Ljava/lang/Class;

    if-eqz v9, :cond_a

    move-object v0, v6

    .line 841
    check-cast v0, Ljava/lang/Class;

    .line 842
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    .line 843
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 848
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    if-eqz v4, :cond_d

    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_d

    .line 849
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v8, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v9, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v9, v1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v2

    .line 853
    .local v2, "derializer":Lgyk;
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_c

    .line 855
    :goto_3
    const/4 v9, 0x0

    .line 856
    invoke-interface {v2, p0, v6, v9}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 855
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_b

    .line 859
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    goto :goto_3

    .line 860
    :cond_b
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_c

    .line 863
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 868
    :cond_c
    iget-object v9, p0, Lgxr;->b:Lgyb;

    invoke-static {v8, v6, v9}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v7

    .line 869
    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 870
    .end local v2    # "derializer":Lgyk;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_d
    iget-object v9, p0, Lgxr;->b:Lgyb;

    invoke-virtual {v9, v6}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v2

    .line 871
    .restart local v2    # "derializer":Lgyk;
    const/4 v9, 0x0

    invoke-interface {v2, p0, v6, v9}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 885
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "derializer":Lgyk;
    .end local v4    # "isArray":Z
    .end local v6    # "type":Ljava/lang/reflect/Type;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_e
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_f

    .line 886
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    .line 812
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 888
    :cond_f
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    goto :goto_4

    .line 892
    :cond_10
    iget-object v9, p0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->a:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_11

    .line 893
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "syntax error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v11}, Lgxt;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 896
    :cond_11
    iget-object v9, p0, Lgxr;->e:Lgxt;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lgxt;->a(I)V

    goto/16 :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyg;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1314
    iget-object v0, p0, Lgxr;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgxr;->i:Ljava/util/List;

    .line 1317
    :cond_0
    iget-object v0, p0, Lgxr;->i:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgxr;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1093
    return-void
.end method

.method protected final b(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1071
    new-instance v0, Lgyc;

    invoke-direct {v0, p1, p2}, Lgyc;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1072
    .local v0, "fieldResolver":Lgyc;
    invoke-virtual {p0}, Lgxr;->a()Lgxr$a;

    move-result-object v1

    .line 1073
    .local v1, "task":Lgxr$a;
    iput-object v0, v1, Lgxr$a;->c:Lgyi;

    .line 1074
    iget-object v2, p0, Lgxr;->f:Lgya;

    iput-object v2, v1, Lgxr$a;->d:Lgya;

    .line 1075
    const/4 v2, 0x0

    iput v2, p0, Lgxr;->g:I

    .line 1076
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyh;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1321
    iget-object v0, p0, Lgxr;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgxr;->h:Ljava/util/List;

    .line 1324
    :cond_0
    iget-object v0, p0, Lgxr;->h:Ljava/util/List;

    return-object v0
.end method

.method public final close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1462
    :try_start_0
    iget-object v0, p0, Lgxr;->e:Lgxt;

    iget v0, v0, Lgxt;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 1463
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not close json text, token : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgxr;->e:Lgxt;

    iget v2, v2, Lgxt;->a:I

    invoke-static {v2}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v1}, Lgxt;->b()V

    .line 1467
    throw v0

    .line 1466
    :cond_0
    iget-object v0, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v0}, Lgxt;->b()V

    .line 1467
    return-void
.end method

.method protected final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1335
    iget-object v0, p0, Lgxr;->f:Lgya;

    iget-object v0, v0, Lgya;->b:Lgya;

    iput-object v0, p0, Lgxr;->f:Lgya;

    .line 1336
    iget-object v0, p0, Lgxr;->k:[Lgya;

    iget v1, p0, Lgxr;->l:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1337
    iget v0, p0, Lgxr;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgxr;->l:I

    .line 1338
    return-void
.end method

.method public final e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1471
    iget-object v8, p0, Lgxr;->m:Ljava/util/List;

    if-nez v8, :cond_1

    .line 1501
    :cond_0
    return-void

    .line 1475
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lgxr;->m:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1476
    iget-object v8, p0, Lgxr;->m:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgxr$a;

    .line 1477
    .local v7, "task":Lgxr$a;
    iget-object v0, v7, Lgxr$a;->c:Lgyi;

    .line 1479
    .local v0, "fieldDeser":Lgyi;
    if-eqz v0, :cond_6

    .line 1483
    const/4 v3, 0x0

    .line 1484
    .local v3, "object":Ljava/lang/Object;
    iget-object v8, v7, Lgxr$a;->d:Lgya;

    if-eqz v8, :cond_2

    .line 1485
    iget-object v8, v7, Lgxr$a;->d:Lgya;

    iget-object v3, v8, Lgya;->a:Ljava/lang/Object;

    .line 8546
    .end local v3    # "object":Ljava/lang/Object;
    :cond_2
    iget-object v4, v7, Lgxr$a;->b:Ljava/lang/String;

    .line 1489
    .local v4, "ref":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1490
    .local v5, "refValue":Ljava/lang/Object;
    const-string/jumbo v8, "$"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1491
    const/4 v2, 0x0

    .end local v5    # "refValue":Ljava/lang/Object;
    .local v2, "j":I
    :goto_1
    iget v8, p0, Lgxr;->l:I

    if-ge v2, v8, :cond_5

    .line 1492
    iget-object v8, p0, Lgxr;->k:[Lgya;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lgya;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1493
    iget-object v8, p0, Lgxr;->k:[Lgya;

    aget-object v8, v8, v2

    iget-object v5, v8, Lgya;->a:Ljava/lang/Object;

    .line 1491
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9546
    .end local v2    # "j":I
    .restart local v5    # "refValue":Ljava/lang/Object;
    :cond_4
    iget-object v8, v7, Lgxr$a;->a:Lgya;

    .line 1497
    iget-object v5, v8, Lgya;->a:Ljava/lang/Object;

    .line 1499
    .end local v5    # "refValue":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0, v3, v5}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1475
    .end local v4    # "ref":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x10

    const/16 v4, 0x1a

    .line 1504
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget v1, v5, Lgxt;->a:I

    .line 1505
    .local v1, "token":I
    const/4 v5, 0x4

    if-ne v1, v5, :cond_7

    .line 1506
    iget-object v5, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v5}, Lgxt;->k()Ljava/lang/String;

    move-result-object v2

    .line 1507
    .local v2, "val":Ljava/lang/String;
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget-char v5, v5, Lgxt;->d:C

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2

    .line 1508
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget v6, v5, Lgxt;->e:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lgxt;->e:I

    .line 1509
    .local v0, "index":I
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget-object v6, p0, Lgxr;->e:Lgxt;

    iget v6, v6, Lgxt;->q:I

    if-lt v0, v6, :cond_1

    .line 1511
    :goto_0
    iput-char v4, v5, Lgxt;->d:C

    .line 1512
    iget-object v4, p0, Lgxr;->e:Lgxt;

    iput v7, v4, Lgxt;->a:I

    .line 1543
    .end local v0    # "index":I
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 1509
    .restart local v0    # "index":I
    .restart local v2    # "val":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lgxr;->e:Lgxt;

    iget-object v4, v4, Lgxt;->p:Ljava/lang/String;

    .line 1511
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 1513
    .end local v0    # "index":I
    :cond_2
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget-char v5, v5, Lgxt;->d:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    .line 1514
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget v6, v5, Lgxt;->e:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lgxt;->e:I

    .line 1515
    .restart local v0    # "index":I
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget-object v6, p0, Lgxr;->e:Lgxt;

    iget v6, v6, Lgxt;->q:I

    if-lt v0, v6, :cond_3

    .line 1517
    :goto_2
    iput-char v4, v5, Lgxt;->d:C

    .line 1518
    iget-object v4, p0, Lgxr;->e:Lgxt;

    const/16 v5, 0xf

    iput v5, v4, Lgxt;->a:I

    goto :goto_1

    .line 1515
    :cond_3
    iget-object v4, p0, Lgxr;->e:Lgxt;

    iget-object v4, v4, Lgxt;->p:Ljava/lang/String;

    .line 1517
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    .line 1519
    .end local v0    # "index":I
    :cond_4
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget-char v5, v5, Lgxt;->d:C

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_6

    .line 1520
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget v6, v5, Lgxt;->e:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lgxt;->e:I

    .line 1521
    .restart local v0    # "index":I
    iget-object v5, p0, Lgxr;->e:Lgxt;

    iget-object v6, p0, Lgxr;->e:Lgxt;

    iget v6, v6, Lgxt;->q:I

    if-lt v0, v6, :cond_5

    .line 1523
    :goto_3
    iput-char v4, v5, Lgxt;->d:C

    .line 1524
    iget-object v4, p0, Lgxr;->e:Lgxt;

    const/16 v5, 0xd

    iput v5, v4, Lgxt;->a:I

    goto :goto_1

    .line 1521
    :cond_5
    iget-object v4, p0, Lgxr;->e:Lgxt;

    iget-object v4, v4, Lgxt;->p:Ljava/lang/String;

    .line 1523
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    .line 1526
    .end local v0    # "index":I
    :cond_6
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->e()V

    goto :goto_1

    .line 1531
    .end local v2    # "val":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 1532
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4}, Lgxt;->d()Ljava/lang/String;

    move-result-object v2

    .line 1533
    .restart local v2    # "val":Ljava/lang/String;
    iget-object v4, p0, Lgxr;->e:Lgxt;

    invoke-virtual {v4, v7}, Lgxt;->a(I)V

    goto :goto_1

    .line 10362
    .end local v2    # "val":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v2}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1539
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 1543
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
