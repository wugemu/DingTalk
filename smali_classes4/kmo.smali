.class public final Lkmo;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "(\\d{2,4})[^\\d]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkmo;->c:Ljava/util/regex/Pattern;

    .line 49
    const-string/jumbo v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkmo;->d:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "(\\d{1,2})[^\\d]*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkmo;->e:Ljava/util/regex/Pattern;

    .line 53
    const-string/jumbo v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkmo;->f:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expiresAt"    # J
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "secure"    # Z
    .param p8, "httpOnly"    # Z
    .param p9, "hostOnly"    # Z
    .param p10, "persistent"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lkmo;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lkmo;->b:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lkmo;->g:J

    .line 72
    iput-object p5, p0, Lkmo;->h:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lkmo;->i:Ljava/lang/String;

    .line 74
    iput-boolean p7, p0, Lkmo;->j:Z

    .line 75
    iput-boolean p8, p0, Lkmo;->k:Z

    .line 76
    iput-boolean p9, p0, Lkmo;->m:Z

    .line 77
    iput-boolean p10, p0, Lkmo;->l:Z

    .line 78
    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "invert"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 389
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_8

    .line 390
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 391
    .local v0, "c":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    :cond_0
    const/16 v3, 0x7f

    if-ge v0, v3, :cond_4

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_3
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_5

    :cond_4
    move v1, v4

    .line 396
    .local v1, "dateCharacter":Z
    :goto_1
    if-nez p3, :cond_6

    move v3, v4

    :goto_2
    if-ne v1, v3, :cond_7

    .line 398
    .end local v0    # "c":I
    .end local v1    # "dateCharacter":Z
    .end local v2    # "i":I
    :goto_3
    return v2

    .restart local v0    # "c":I
    .restart local v2    # "i":I
    :cond_5
    move v1, v5

    .line 391
    goto :goto_1

    .restart local v1    # "dateCharacter":Z
    :cond_6
    move v3, v5

    .line 396
    goto :goto_2

    .line 389
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "c":I
    .end local v1    # "dateCharacter":Z
    :cond_8
    move v2, p2

    .line 398
    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)J
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 410
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 411
    .local v2, "parsed":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    move-wide v2, v4

    .line 415
    .end local v2    # "parsed":J
    :cond_0
    :goto_0
    return-wide v2

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "-?\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    const-string/jumbo v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v2, v4

    goto :goto_0

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 417
    :cond_2
    throw v0
.end method

.method public static a(Lkmw;Lkmv;)Ljava/util/List;
    .locals 8
    .param p0, "url"    # Lkmw;
    .param p1, "headers"    # Lkmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkmw;",
            "Lkmv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkmo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    const-string/jumbo v5, "Set-Cookie"

    invoke-virtual {p1, v5}, Lkmv;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 442
    .local v1, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 444
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 445
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, p0, v5}, Lkmo;->a(JLkmw;Ljava/lang/String;)Lkmo;

    move-result-object v0

    .line 446
    .local v0, "cookie":Lkmo;
    if-eqz v0, :cond_1

    .line 447
    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .restart local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "cookie":Lkmo;
    :cond_2
    if-eqz v2, :cond_3

    .line 452
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :goto_1
    return-object v5

    .line 453
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method

.method private static a(JLkmw;Ljava/lang/String;)Lkmo;
    .locals 42
    .param p0, "currentTimeMillis"    # J
    .param p2, "url"    # Lkmw;
    .param p3, "setCookie"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v27

    .line 225
    .local v27, "limit":I
    const/4 v5, 0x0

    const/16 v31, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v19

    .line 227
    .local v19, "cookiePairEnd":I
    const/4 v5, 0x0

    const/16 v31, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v28

    .line 228
    .local v28, "pairEqualsSign":I
    move/from16 v0, v28

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/4 v5, 0x0

    .line 323
    :goto_0
    return-object v5

    .line 230
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-static {v0, v5, v1}, Lknj;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "cookieName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6}, Lknj;->b(Ljava/lang/String;)I

    move-result v5

    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v5, v0, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 233
    :cond_2
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v5, v1}, Lknj;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "cookieValue":Ljava/lang/String;
    invoke-static {v7}, Lknj;->b(Ljava/lang/String;)I

    move-result v5

    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v5, v0, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    .line 236
    :cond_3
    const-wide v8, 0xe677d21fdbffL

    .line 237
    .local v8, "expiresAt":J
    const-wide/16 v22, -0x1

    .line 238
    .local v22, "deltaSeconds":J
    const/4 v10, 0x0

    .line 239
    .local v10, "domain":Ljava/lang/String;
    const/4 v11, 0x0

    .line 240
    .local v11, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 241
    .local v12, "secureOnly":Z
    const/4 v13, 0x0

    .line 242
    .local v13, "httpOnly":Z
    const/4 v14, 0x1

    .line 243
    .local v14, "hostOnly":Z
    const/4 v15, 0x0

    .line 245
    .local v15, "persistent":Z
    add-int/lit8 v29, v19, 0x1

    .local v29, "pos":I
    move-object/from16 v24, v10

    .line 246
    .end local v10    # "domain":Ljava/lang/String;
    .local v24, "domain":Ljava/lang/String;
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    .line 247
    const/16 v5, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v5}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v17

    .line 249
    .local v17, "attributePairEnd":I
    const/16 v5, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v5}, Lknj;->a(Ljava/lang/String;IIC)I

    move-result v4

    .line 250
    .local v4, "attributeEqualsSign":I
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-static {v0, v1, v4}, Lknj;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "attributeName":Ljava/lang/String;
    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    .line 252
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v5, v1}, Lknj;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    .line 255
    .local v18, "attributeValue":Ljava/lang/String;
    :goto_2
    const-string/jumbo v5, "expires"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 257
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v37

    .line 1329
    const/4 v5, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v37

    move/from16 v2, v31

    invoke-static {v0, v5, v1, v2}, Lkmo;->a(Ljava/lang/String;IIZ)I

    move-result v36

    .line 1331
    const/16 v35, -0x1

    .line 1332
    const/16 v34, -0x1

    .line 1333
    const/16 v33, -0x1

    .line 1334
    const/16 v32, -0x1

    .line 1335
    const/16 v31, -0x1

    .line 1336
    const/4 v5, -0x1

    .line 1337
    sget-object v38, Lkmo;->f:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v38

    .line 1339
    :goto_3
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_9

    .line 1340
    add-int/lit8 v39, v36, 0x1

    const/16 v40, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v39

    move/from16 v2, v37

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lkmo;->a(Ljava/lang/String;IIZ)I

    move-result v39

    .line 1341
    move-object/from16 v0, v38

    move/from16 v1, v36

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1343
    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    sget-object v36, Lkmo;->f:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/regex/Matcher;->matches()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 1344
    const/16 v33, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1345
    const/16 v33, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1346
    const/16 v33, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1356
    :cond_4
    :goto_4
    add-int/lit8 v36, v39, 0x1

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lkmo;->a(Ljava/lang/String;IIZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v36

    goto :goto_3

    .line 253
    .end local v18    # "attributeValue":Ljava/lang/String;
    :cond_5
    const-string/jumbo v18, ""

    goto/16 :goto_2

    .line 1347
    .restart local v18    # "attributeValue":Ljava/lang/String;
    :cond_6
    const/16 v36, -0x1

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    :try_start_1
    sget-object v36, Lkmo;->e:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/regex/Matcher;->matches()Z

    move-result v36

    if-eqz v36, :cond_7

    .line 1348
    const/16 v32, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto :goto_4

    .line 1349
    :cond_7
    const/16 v36, -0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    sget-object v36, Lkmo;->d:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/regex/Matcher;->matches()Z

    move-result v36

    if-eqz v36, :cond_8

    .line 1350
    const/16 v31, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v31

    sget-object v36, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v31

    .line 1351
    sget-object v36, Lkmo;->d:Ljava/util/regex/Pattern;

    invoke-virtual/range {v36 .. v36}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    div-int/lit8 v31, v31, 0x4

    goto :goto_4

    .line 1352
    :cond_8
    const/16 v36, -0x1

    move/from16 v0, v36

    if-ne v5, v0, :cond_4

    sget-object v36, Lkmo;->c:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/regex/Matcher;->matches()Z

    move-result v36

    if-eqz v36, :cond_4

    .line 1353
    const/4 v5, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_4

    .line 1360
    :cond_9
    const/16 v36, 0x46

    move/from16 v0, v36

    if-lt v5, v0, :cond_a

    const/16 v36, 0x63

    move/from16 v0, v36

    if-gt v5, v0, :cond_a

    add-int/lit16 v5, v5, 0x76c

    .line 1361
    :cond_a
    if-ltz v5, :cond_b

    const/16 v36, 0x45

    move/from16 v0, v36

    if-gt v5, v0, :cond_b

    add-int/lit16 v5, v5, 0x7d0

    .line 1365
    :cond_b
    const/16 v36, 0x641

    move/from16 v0, v36

    if-ge v5, v0, :cond_c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 261
    :catch_0
    move-exception v5

    move-object/from16 v10, v24

    .line 284
    .end local v18    # "attributeValue":Ljava/lang/String;
    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :goto_5
    add-int/lit8 v29, v17, 0x1

    move-object/from16 v24, v10

    .line 285
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    goto/16 :goto_1

    .line 1366
    .restart local v18    # "attributeValue":Ljava/lang/String;
    :cond_c
    const/16 v36, -0x1

    move/from16 v0, v31

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1367
    :cond_d
    if-lez v32, :cond_e

    const/16 v36, 0x1f

    move/from16 v0, v32

    move/from16 v1, v36

    if-le v0, v1, :cond_f

    :cond_e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1368
    :cond_f
    if-ltz v35, :cond_10

    const/16 v36, 0x17

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_11

    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1369
    :cond_11
    if-ltz v34, :cond_12

    const/16 v36, 0x3b

    move/from16 v0, v34

    move/from16 v1, v36

    if-le v0, v1, :cond_13

    :cond_12
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1370
    :cond_13
    if-ltz v33, :cond_14

    const/16 v36, 0x3b

    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_15

    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1372
    :cond_15
    new-instance v36, Ljava/util/GregorianCalendar;

    sget-object v37, Lknj;->g:Ljava/util/TimeZone;

    invoke-direct/range {v36 .. v37}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1373
    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Ljava/util/Calendar;->setLenient(Z)V

    .line 1374
    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 1375
    const/4 v5, 0x2

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1376
    const/4 v5, 0x5

    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1377
    const/16 v5, 0xb

    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1378
    const/16 v5, 0xc

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1379
    const/16 v5, 0xd

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1380
    const/16 v5, 0xe

    const/16 v31, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1381
    invoke-virtual/range {v36 .. v36}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    .line 258
    const/4 v15, 0x1

    move-object/from16 v10, v24

    .line 261
    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .line 262
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_16
    const-string/jumbo v5, "max-age"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 264
    :try_start_2
    invoke-static/range {v18 .. v18}, Lkmo;->a(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v22

    .line 265
    const/4 v15, 0x1

    move-object/from16 v10, v24

    .line 268
    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .end local v10    # "domain":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .line 269
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_17
    const-string/jumbo v5, "domain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1426
    :try_start_3
    const-string/jumbo v5, "."

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1427
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 275
    .end local v18    # "attributeValue":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .line 1429
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v18    # "attributeValue":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_18
    const-string/jumbo v5, "."

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1430
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1432
    .end local v18    # "attributeValue":Ljava/lang/String;
    :cond_19
    invoke-static/range {v18 .. v18}, Lknj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1433
    if-nez v10, :cond_1a

    .line 1434
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 272
    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 276
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v18    # "attributeValue":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v5, "path"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 277
    move-object/from16 v11, v18

    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .line 278
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v5, "secure"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 279
    const/4 v12, 0x1

    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .line 280
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v5, "httponly"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 281
    const/4 v13, 0x1

    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5

    .line 289
    .end local v4    # "attributeEqualsSign":I
    .end local v10    # "domain":Ljava/lang/String;
    .end local v16    # "attributeName":Ljava/lang/String;
    .end local v17    # "attributePairEnd":I
    .end local v18    # "attributeValue":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_1e
    const-wide/high16 v32, -0x8000000000000000L

    cmp-long v5, v22, v32

    if-nez v5, :cond_20

    .line 290
    const-wide/high16 v8, -0x8000000000000000L

    .line 1486
    :cond_1f
    :goto_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lkmw;->b:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 303
    .local v30, "urlHost":Ljava/lang/String;
    if-nez v24, :cond_23

    .line 304
    move-object/from16 v10, v30

    .line 310
    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :goto_7
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    if-eq v5, v0, :cond_26

    .line 311
    invoke-static {}, Lkoz;->a()Lkoz;

    move-result-object v5

    invoke-virtual {v5, v10}, Lkoz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_26

    .line 312
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 291
    .end local v10    # "domain":Ljava/lang/String;
    .end local v30    # "urlHost":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_20
    const-wide/16 v32, -0x1

    cmp-long v5, v22, v32

    if-eqz v5, :cond_1f

    .line 292
    const-wide v32, 0x20c49ba5e353f7L

    cmp-long v5, v22, v32

    if-gtz v5, :cond_22

    .line 293
    const-wide/16 v32, 0x3e8

    mul-long v20, v22, v32

    .line 295
    .local v20, "deltaMilliseconds":J
    :goto_8
    add-long v8, p0, v20

    .line 296
    cmp-long v5, v8, p0

    if-ltz v5, :cond_21

    const-wide v32, 0xe677d21fdbffL

    cmp-long v5, v8, v32

    if-lez v5, :cond_1f

    .line 297
    :cond_21
    const-wide v8, 0xe677d21fdbffL

    goto :goto_6

    .line 294
    .end local v20    # "deltaMilliseconds":J
    :cond_22
    const-wide v20, 0x7fffffffffffffffL

    goto :goto_8

    .line 2186
    .restart local v30    # "urlHost":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2187
    const/4 v5, 0x1

    .line 305
    :goto_9
    if-nez v5, :cond_2a

    .line 306
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2190
    :cond_24
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2191
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v31

    sub-int v5, v5, v31

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v31, 0x2e

    move/from16 v0, v31

    if-ne v5, v0, :cond_25

    .line 2192
    invoke-static/range {v30 .. v30}, Lknj;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 2193
    const/4 v5, 0x1

    goto :goto_9

    .line 2196
    :cond_25
    const/4 v5, 0x0

    goto :goto_9

    .line 317
    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :cond_26
    if-eqz v11, :cond_27

    const-string/jumbo v5, "/"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 318
    :cond_27
    invoke-virtual/range {p2 .. p2}, Lkmw;->e()Ljava/lang/String;

    move-result-object v25

    .line 319
    .local v25, "encodedPath":Ljava/lang/String;
    const/16 v5, 0x2f

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 320
    .local v26, "lastSlash":I
    if-eqz v26, :cond_29

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 323
    .end local v25    # "encodedPath":Ljava/lang/String;
    .end local v26    # "lastSlash":I
    :cond_28
    :goto_a
    new-instance v5, Lkmo;

    invoke-direct/range {v5 .. v15}, Lkmo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_0

    .line 320
    .restart local v25    # "encodedPath":Ljava/lang/String;
    .restart local v26    # "lastSlash":I
    :cond_29
    const-string/jumbo v11, "/"

    goto :goto_a

    .end local v10    # "domain":Ljava/lang/String;
    .end local v25    # "encodedPath":Ljava/lang/String;
    .end local v26    # "lastSlash":I
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_2a
    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_7

    .end local v10    # "domain":Ljava/lang/String;
    .end local v30    # "urlHost":Ljava/lang/String;
    .restart local v4    # "attributeEqualsSign":I
    .restart local v16    # "attributeName":Ljava/lang/String;
    .restart local v17    # "attributePairEnd":I
    .restart local v18    # "attributeValue":Ljava/lang/String;
    .restart local v24    # "domain":Ljava/lang/String;
    :cond_2b
    move-object/from16 v10, v24

    .end local v24    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    goto/16 :goto_5
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 586
    instance-of v2, p1, Lkmo;

    if-nez v2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 587
    check-cast v0, Lkmo;

    .line 588
    .local v0, "that":Lkmo;
    iget-object v2, v0, Lkmo;->a:Ljava/lang/String;

    iget-object v3, p0, Lkmo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lkmo;->b:Ljava/lang/String;

    iget-object v3, p0, Lkmo;->b:Ljava/lang/String;

    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lkmo;->h:Ljava/lang/String;

    iget-object v3, p0, Lkmo;->h:Ljava/lang/String;

    .line 590
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lkmo;->i:Ljava/lang/String;

    iget-object v3, p0, Lkmo;->i:Ljava/lang/String;

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lkmo;->g:J

    iget-wide v4, p0, Lkmo;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lkmo;->j:Z

    iget-boolean v3, p0, Lkmo;->j:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lkmo;->k:Z

    iget-boolean v3, p0, Lkmo;->k:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lkmo;->l:Z

    iget-boolean v3, p0, Lkmo;->l:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lkmo;->m:Z

    iget-boolean v3, p0, Lkmo;->m:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 601
    iget-object v1, p0, Lkmo;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 602
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lkmo;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 603
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lkmo;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 604
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lkmo;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 605
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lkmo;->g:J

    iget-wide v6, p0, Lkmo;->g:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 606
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lkmo;->j:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 607
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lkmo;->k:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 608
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lkmo;->l:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 609
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lkmo;->m:Z

    if-eqz v4, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 610
    return v0

    :cond_0
    move v1, v3

    .line 606
    goto :goto_0

    :cond_1
    move v1, v3

    .line 607
    goto :goto_1

    :cond_2
    move v1, v3

    .line 608
    goto :goto_2

    :cond_3
    move v2, v3

    .line 609
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 542
    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2552
    iget-object v1, p0, Lkmo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2554
    iget-object v1, p0, Lkmo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    iget-boolean v1, p0, Lkmo;->l:Z

    if-eqz v1, :cond_0

    .line 2557
    iget-wide v2, p0, Lkmo;->g:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 2558
    const-string/jumbo v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lkmo;->m:Z

    if-nez v1, :cond_1

    .line 2565
    const-string/jumbo v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    iget-object v1, p0, Lkmo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    :cond_1
    const-string/jumbo v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkmo;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    iget-boolean v1, p0, Lkmo;->j:Z

    if-eqz v1, :cond_2

    .line 2575
    const-string/jumbo v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    :cond_2
    iget-boolean v1, p0, Lkmo;->k:Z

    if-eqz v1, :cond_3

    .line 2579
    const-string/jumbo v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    return-object v0

    .line 2560
    :cond_4
    const-string/jumbo v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lkmo;->g:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lkny;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
