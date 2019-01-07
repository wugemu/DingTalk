.class public Ldqa;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionHelper.java"


# static fields
.field private static volatile d:Ldqa;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldqa;->a:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldqa;->b:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ldqa;->b()V

    .line 35
    return-void
.end method

.method public static a()Ldqa;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldqa;->d:Ldqa;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Ldqa;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Ldqa;->d:Ldqa;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ldqa;

    invoke-direct {v0}, Ldqa;-><init>()V

    sput-object v0, Ldqa;->d:Ldqa;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Ldqa;->d:Ldqa;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldqa;)V
    .locals 0
    .param p0, "x0"    # Ldqa;

    .prologue
    .line 26
    invoke-direct {p0}, Ldqa;->d()V

    return-void
.end method

.method static synthetic b(Ldqa;)V
    .locals 0
    .param p0, "x0"    # Ldqa;

    .prologue
    .line 26
    invoke-direct {p0}, Ldqa;->e()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "emoDynamic"

    const-string/jumbo v4, "DynamicDefaultEmotionHelper refreshEmotionList"

    .line 4009
    const-string/jumbo v5, "im"

    invoke-static {v5, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Ldqa;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 122
    iget-object v3, p0, Ldqa;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-static {}, Ldqc;->a()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "emotions":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    invoke-static {v0}, Leax;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldqb;

    .line 128
    .local v2, "uiModel":Ldqb;
    if-eqz v2, :cond_0

    .line 129
    iget-object v3, v2, Ldqb;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Ldqb;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    iget-object v3, p0, Ldqa;->a:Ljava/util/HashMap;

    iget-object v4, v2, Ldqb;->b:Ljava/lang/String;

    iget-object v5, v2, Ldqb;->a:Ljava/lang/String;

    invoke-static {v5}, Ldqc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Ldqa;->b:Ljava/util/ArrayList;

    iget-object v4, v2, Ldqb;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    .end local v2    # "uiModel":Ldqb;
    :cond_1
    monitor-exit p0

    return-void

    .line 120
    .end local v0    # "emotions":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized e()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 142
    monitor-enter p0

    :try_start_0
    const-string/jumbo v9, "emoDynamic"

    const-string/jumbo v10, "DynamicDefaultEmotionHelper refreshDynamicEmojiStatus begin"

    .line 5009
    const-string/jumbo v11, "im"

    invoke-static {v11, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Ldqa;->c:Z

    .line 5055
    const-string/jumbo v9, "defaultEmoji"

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5134
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 5136
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5137
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 5138
    if-eqz v9, :cond_0

    .line 5139
    :goto_0
    array-length v10, v9

    if-ge v8, v10, :cond_0

    .line 5140
    aget-object v10, v9, v8

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5139
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 146
    .local v7, "unzipFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v7}, Ldpx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 147
    .local v6, "unzipFileNameWithoutSufs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ldqc;->a()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "defaultEmotionUIModels":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v5, "unzipFileNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "filename":Ljava/lang/String;
    invoke-interface {v5, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 142
    .end local v0    # "defaultEmotionUIModels":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "unzipFileNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "unzipFileNameWithoutSufs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "unzipFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 154
    .restart local v0    # "defaultEmotionUIModels":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v5    # "unzipFileNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "unzipFileNameWithoutSufs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "unzipFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-static {v7}, Leax;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v0}, Leax;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldqb;

    .line 156
    .local v4, "uiModel":Ldqb;
    if-eqz v4, :cond_2

    .line 157
    iget-object v9, v4, Ldqb;->a:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 159
    const-string/jumbo v8, "emoDynamic"

    const-string/jumbo v9, "DynamicDefaultEmotionHelper refreshDynamicEmojiStatus netconfig is not contained by local zip"

    .line 6009
    const-string/jumbo v10, "im"

    invoke-static {v10, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "uiModel":Ldqb;
    :goto_2
    monitor-exit p0

    return-void

    .line 164
    :cond_3
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Ldqa;->c:Z

    .line 166
    :cond_4
    const-string/jumbo v8, "emoDynamic"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "refreshDynamicEmojiStatus end mIsDynamicEmojiReady = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Ldqa;->c:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7009
    const-string/jumbo v10, "im"

    invoke-static {v10, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "emotionSizeDp"    # F

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 67
    const-string/jumbo p2, ""

    .line 70
    :cond_0
    const-string/jumbo v9, "emoDynamic"

    const-string/jumbo v10, "DynamicDefaultEmotionHelper handleEmotions "

    .line 1009
    const-string/jumbo v11, "im"

    invoke-static {v11, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    .local v8, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v9, v0, Ldqa;->b:Ljava/util/ArrayList;

    invoke-static {v9}, Ldqc;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "regexString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 75
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 76
    .local v6, "imgTextPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 78
    .local v5, "imgTextMatcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 79
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "imgText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Ldqa;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Ldqa;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1078
    const/4 v10, 0x0

    .line 1079
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1084
    const/4 v9, 0x1

    iput-boolean v9, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1086
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1087
    const/4 v13, 0x0

    invoke-static {v9, v13, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1088
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1090
    const/4 v9, 0x1

    .line 1092
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v14, 0x258

    if-gt v13, v14, :cond_2

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v14, 0x258

    if-le v13, v14, :cond_3

    .line 1094
    :cond_2
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide v16, 0x4082c00000000000L    # 600.0

    iget v9, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-double v12, v9

    div-double v12, v16, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v9, v12

    int-to-double v12, v9

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v9, v12

    .line 1098
    :cond_3
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1099
    iput v9, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1100
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1101
    const/4 v11, 0x0

    invoke-static {v9, v11, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1102
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1103
    if-eqz v11, :cond_6

    .line 1104
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    .line 87
    :goto_1
    if-eqz v2, :cond_1

    .line 88
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-gt v9, v10, :cond_4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_5

    .line 99
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "imgText":Ljava/lang/String;
    .end local v5    # "imgTextMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "imgTextPattern":Ljava/util/regex/Pattern;
    :cond_4
    return-object v8

    .line 84
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "imgText":Ljava/lang/String;
    .restart local v5    # "imgTextMatcher":Ljava/util/regex/Matcher;
    .restart local v6    # "imgTextPattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "emoDynamic"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "DynamicDefaultEmotionHelper handleEmotions getImageDrawable Exception = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2009
    const-string/jumbo v11, "im"

    invoke-static {v11, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-direct {v9, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_6
    move-object v2, v10

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    const-string/jumbo v1, "emoDynamic"

    const-string/jumbo v2, "DynamicDefaultEmotionHelper refreshEmotion"

    .line 3009
    const-string/jumbo v3, "im"

    invoke-static {v3, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "DynamicDefaultEmotionHelper"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 106
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Ldqa$1;

    invoke-direct {v1, p0}, Ldqa$1;-><init>(Ldqa;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public final c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-static {}, Lebc;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "emoDynamic"

    const-string/jumbo v1, "DynamicDefaultEmotionHelper isDynamicEmojiReady isGrayOpen = false"

    .line 8009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_0
    const-string/jumbo v0, "emoDynamic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DynamicDefaultEmotionHelper isDynamicEmojiReady = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Ldqa;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Ldqa;->c:Z

    goto :goto_0
.end method
