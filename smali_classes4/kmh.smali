.class public final Lkmh;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkmh$a;
    }
.end annotation


# static fields
.field public static final a:Lkmh;

.field public static final b:Lkmh;


# instance fields
.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z

.field m:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final n:I

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x7fffffff

    const/4 v2, 0x1

    .line 18
    new-instance v0, Lkmh$a;

    invoke-direct {v0}, Lkmh$a;-><init>()V

    .line 1290
    iput-boolean v2, v0, Lkmh$a;->a:Z

    .line 18
    invoke-virtual {v0}, Lkmh$a;->a()Lkmh;

    move-result-object v0

    sput-object v0, Lkmh;->a:Lkmh;

    .line 25
    new-instance v1, Lkmh$a;

    invoke-direct {v1}, Lkmh$a;-><init>()V

    .line 1354
    iput-boolean v2, v1, Lkmh$a;->e:Z

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2325
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 2326
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 2327
    const v0, 0x7fffffff

    .line 2328
    :goto_0
    iput v0, v1, Lkmh$a;->c:I

    .line 28
    invoke-virtual {v1}, Lkmh$a;->a()Lkmh;

    move-result-object v0

    sput-object v0, Lkmh;->b:Lkmh;

    .line 25
    return-void

    .line 2328
    :cond_0
    long-to-int v0, v2

    goto :goto_0
.end method

.method constructor <init>(Lkmh$a;)V
    .locals 2
    .param p1, "builder"    # Lkmh$a;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lkmh$a;->a:Z

    iput-boolean v0, p0, Lkmh;->c:Z

    .line 66
    iput-boolean v1, p0, Lkmh;->d:Z

    .line 67
    iget v0, p1, Lkmh$a;->b:I

    iput v0, p0, Lkmh;->e:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lkmh;->n:I

    .line 69
    iput-boolean v1, p0, Lkmh;->f:Z

    .line 70
    iput-boolean v1, p0, Lkmh;->g:Z

    .line 71
    iput-boolean v1, p0, Lkmh;->h:Z

    .line 72
    iget v0, p1, Lkmh$a;->c:I

    iput v0, p0, Lkmh;->i:I

    .line 73
    iget v0, p1, Lkmh$a;->d:I

    iput v0, p0, Lkmh;->j:I

    .line 74
    iget-boolean v0, p1, Lkmh$a;->e:Z

    iput-boolean v0, p0, Lkmh;->k:Z

    .line 75
    iput-boolean v1, p0, Lkmh;->o:Z

    .line 76
    iput-boolean v1, p0, Lkmh;->l:Z

    .line 77
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "immutable"    # Z
    .param p13, "headerValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lkmh;->c:Z

    .line 50
    iput-boolean p2, p0, Lkmh;->d:Z

    .line 51
    iput p3, p0, Lkmh;->e:I

    .line 52
    iput p4, p0, Lkmh;->n:I

    .line 53
    iput-boolean p5, p0, Lkmh;->f:Z

    .line 54
    iput-boolean p6, p0, Lkmh;->g:Z

    .line 55
    iput-boolean p7, p0, Lkmh;->h:Z

    .line 56
    iput p8, p0, Lkmh;->i:I

    .line 57
    iput p9, p0, Lkmh;->j:I

    .line 58
    iput-boolean p10, p0, Lkmh;->k:Z

    .line 59
    iput-boolean p11, p0, Lkmh;->o:Z

    .line 60
    iput-boolean p12, p0, Lkmh;->l:Z

    .line 61
    iput-object p13, p0, Lkmh;->m:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static a(Lkmv;)Lkmh;
    .locals 28
    .param p0, "headers"    # Lkmv;

    .prologue
    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, "noCache":Z
    const/4 v5, 0x0

    .line 155
    .local v5, "noStore":Z
    const/4 v6, -0x1

    .line 156
    .local v6, "maxAgeSeconds":I
    const/4 v7, -0x1

    .line 157
    .local v7, "sMaxAgeSeconds":I
    const/4 v8, 0x0

    .line 158
    .local v8, "isPrivate":Z
    const/4 v9, 0x0

    .line 159
    .local v9, "isPublic":Z
    const/4 v10, 0x0

    .line 160
    .local v10, "mustRevalidate":Z
    const/4 v11, -0x1

    .line 161
    .local v11, "maxStaleSeconds":I
    const/4 v12, -0x1

    .line 162
    .local v12, "minFreshSeconds":I
    const/4 v13, 0x0

    .line 163
    .local v13, "onlyIfCached":Z
    const/4 v14, 0x0

    .line 164
    .local v14, "noTransform":Z
    const/4 v15, 0x0

    .line 166
    .local v15, "immutable":Z
    const/16 v17, 0x1

    .line 167
    .local v17, "canUseHeaderValue":Z
    const/16 v16, 0x0

    .line 169
    .local v16, "headerValue":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1077
    .local v19, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lkmv;->a:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v24, v3, 0x2

    .line 169
    .local v24, "size":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 170
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkmv;->a(I)Ljava/lang/String;

    move-result-object v20

    .line 171
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lkmv;->b(I)Ljava/lang/String;

    move-result-object v26

    .line 173
    .local v26, "value":Ljava/lang/String;
    const-string/jumbo v3, "Cache-Control"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    if-eqz v16, :cond_2

    .line 176
    const/16 v17, 0x0

    .line 187
    :goto_1
    const/16 v23, 0x0

    .line 188
    .local v23, "pos":I
    :cond_0
    :goto_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_11

    .line 189
    move/from16 v25, v23

    .line 190
    .local v25, "tokenStart":I
    const-string/jumbo v3, "=,;"

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1, v3}, Lknz;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v23

    .line 191
    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, "directive":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-eq v0, v3, :cond_1

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v27, 0x2c

    move/from16 v0, v27

    if-eq v3, v0, :cond_1

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v27, 0x3b

    move/from16 v0, v27

    if-ne v3, v0, :cond_4

    .line 195
    :cond_1
    add-int/lit8 v23, v23, 0x1

    .line 196
    const/16 v21, 0x0

    .line 217
    .local v21, "parameter":Ljava/lang/String;
    :goto_3
    const-string/jumbo v3, "no-cache"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    const/4 v4, 0x1

    goto :goto_2

    .line 178
    .end local v18    # "directive":Ljava/lang/String;
    .end local v21    # "parameter":Ljava/lang/String;
    .end local v23    # "pos":I
    .end local v25    # "tokenStart":I
    :cond_2
    move-object/from16 v16, v26

    goto :goto_1

    .line 180
    :cond_3
    const-string/jumbo v3, "Pragma"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 182
    const/16 v17, 0x0

    goto :goto_1

    .line 198
    .restart local v18    # "directive":Ljava/lang/String;
    .restart local v23    # "pos":I
    .restart local v25    # "tokenStart":I
    :cond_4
    add-int/lit8 v23, v23, 0x1

    .line 199
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Lknz;->a(Ljava/lang/String;I)I

    move-result v23

    .line 202
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v27, 0x22

    move/from16 v0, v27

    if-ne v3, v0, :cond_5

    .line 203
    add-int/lit8 v23, v23, 0x1

    .line 204
    move/from16 v22, v23

    .line 205
    .local v22, "parameterStart":I
    const-string/jumbo v3, "\""

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1, v3}, Lknz;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v23

    .line 206
    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 207
    .restart local v21    # "parameter":Ljava/lang/String;
    add-int/lit8 v23, v23, 0x1

    .line 210
    goto :goto_3

    .line 211
    .end local v21    # "parameter":Ljava/lang/String;
    .end local v22    # "parameterStart":I
    :cond_5
    move/from16 v22, v23

    .line 212
    .restart local v22    # "parameterStart":I
    const-string/jumbo v3, ",;"

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1, v3}, Lknz;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v23

    .line 213
    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "parameter":Ljava/lang/String;
    goto :goto_3

    .line 219
    .end local v22    # "parameterStart":I
    :cond_6
    const-string/jumbo v3, "no-store"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 221
    :cond_7
    const-string/jumbo v3, "max-age"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lknz;->b(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_2

    .line 223
    :cond_8
    const-string/jumbo v3, "s-maxage"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 224
    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lknz;->b(Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_2

    .line 225
    :cond_9
    const-string/jumbo v3, "private"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 226
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 227
    :cond_a
    const-string/jumbo v3, "public"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 228
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 229
    :cond_b
    const-string/jumbo v3, "must-revalidate"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 230
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 231
    :cond_c
    const-string/jumbo v3, "max-stale"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 232
    const v3, 0x7fffffff

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lknz;->b(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    .line 233
    :cond_d
    const-string/jumbo v3, "min-fresh"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 234
    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lknz;->b(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_2

    .line 235
    :cond_e
    const-string/jumbo v3, "only-if-cached"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 236
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 237
    :cond_f
    const-string/jumbo v3, "no-transform"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 238
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 239
    :cond_10
    const-string/jumbo v3, "immutable"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 169
    .end local v18    # "directive":Ljava/lang/String;
    .end local v21    # "parameter":Ljava/lang/String;
    .end local v23    # "pos":I
    .end local v25    # "tokenStart":I
    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 245
    .end local v20    # "name":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_12
    if-nez v17, :cond_13

    .line 246
    const/16 v16, 0x0

    .line 248
    :cond_13
    new-instance v3, Lkmh;

    invoke-direct/range {v3 .. v16}, Lkmh;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 254
    iget-object v0, p0, Lkmh;->m:Ljava/lang/String;

    .line 255
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1259
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    iget-boolean v2, p0, Lkmh;->c:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "no-cache, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_1
    iget-boolean v2, p0, Lkmh;->d:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "no-store, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :cond_2
    iget v2, p0, Lkmh;->e:I

    if-eq v2, v4, :cond_3

    const-string/jumbo v2, "max-age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkmh;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    :cond_3
    iget v2, p0, Lkmh;->n:I

    if-eq v2, v4, :cond_4

    const-string/jumbo v2, "s-maxage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkmh;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_4
    iget-boolean v2, p0, Lkmh;->f:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "private, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    :cond_5
    iget-boolean v2, p0, Lkmh;->g:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "public, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_6
    iget-boolean v2, p0, Lkmh;->h:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "must-revalidate, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_7
    iget v2, p0, Lkmh;->i:I

    if-eq v2, v4, :cond_8

    const-string/jumbo v2, "max-stale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkmh;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :cond_8
    iget v2, p0, Lkmh;->j:I

    if-eq v2, v4, :cond_9

    const-string/jumbo v2, "min-fresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkmh;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_9
    iget-boolean v2, p0, Lkmh;->k:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "only-if-cached, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :cond_a
    iget-boolean v2, p0, Lkmh;->o:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "no-transform, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    :cond_b
    iget-boolean v2, p0, Lkmh;->l:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "immutable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v1, ""

    .line 255
    :goto_1
    iput-object v1, p0, Lkmh;->m:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    .line 1273
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
