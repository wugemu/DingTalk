.class public abstract Ldaa;
.super Lctt;
.source "UserTextViewHolder.java"


# instance fields
.field private Y:Landroid/view/View$OnTouchListener;

.field protected Z:Landroid/widget/TextView;

.field protected aa:Landroid/widget/TextView;

.field protected ab:Landroid/view/View;

.field public ac:Landroid/view/View;

.field protected ad:Landroid/widget/LinearLayout;

.field protected ae:Landroid/graphics/drawable/Drawable;

.field private af:Z

.field private ag:Lpl/droidsonroids/gif/GifImageView;

.field private ah:Landroid/view/View;

.field private ai:Landroid/view/View;

.field private aj:Landroid/view/View;

.field private ak:Landroid/view/View;

.field private al:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private am:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isToMessage"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lctt;-><init>(Z)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldaa;->af:Z

    .line 78
    return-void
.end method

.method static synthetic a(Ldaa;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Ldaa;

    .prologue
    .line 55
    iget-object v0, p0, Ldaa;->aj:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 3
    .param p1, "mTvChattingContentCopy"    # Landroid/widget/TextView;
    .param p2, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    new-instance v2, Ldaa$2;

    invoke-direct {v2, p0}, Ldaa$2;-><init>(Ldaa;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 223
    iget-object v2, p0, Ldaa;->Y:Landroid/view/View$OnTouchListener;

    if-nez v2, :cond_0

    .line 224
    new-instance v1, Ldaa$3;

    invoke-direct {v1, p0, p1}, Ldaa$3;-><init>(Ldaa;Landroid/widget/TextView;)V

    .line 240
    .local v1, "listener":Landroid/view/GestureDetector$OnGestureListener;
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 241
    .local v0, "gesture":Landroid/view/GestureDetector;
    new-instance v2, Ldaa$4;

    invoke-direct {v2, p0, v0}, Ldaa$4;-><init>(Ldaa;Landroid/view/GestureDetector;)V

    iput-object v2, p0, Ldaa;->Y:Landroid/view/View$OnTouchListener;

    .line 256
    .end local v0    # "gesture":Landroid/view/GestureDetector;
    .end local v1    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_0
    iget-object v2, p0, Ldaa;->Y:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    return-void
.end method

.method static synthetic a(Ldaa;Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;JZ)V
    .locals 8
    .param p0, "x0"    # Ldaa;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/text/SpannableString;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # Z

    .prologue
    .line 55
    .line 2335
    if-eqz p2, :cond_4

    .line 2338
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {p2, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 2339
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 2340
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 2339
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2342
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    const/4 v6, 0x0

    .line 2345
    :try_start_0
    sget-object v2, Lcqn;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lcqm;->a:Lcqm$a;

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 2348
    sget-object v2, Lcqn;->h:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 2351
    sget-object v2, Lcqn;->e:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 2354
    invoke-static {v0, p2}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 2355
    invoke-static {v0, p2}, Lcqm;->b(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 2356
    invoke-static {v0}, Lcqm;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2357
    const/4 v1, 0x1

    .line 2365
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_6

    .line 2366
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2367
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqh;

    .line 2369
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2372
    :cond_1
    iget-object v1, v0, Lcqh;->a:Ljava/lang/String;

    iget v3, v0, Lcqh;->b:I

    iget v0, v0, Lcqh;->c:I

    invoke-static {v1, v3, v0, p2, p1}, Lcqm;->a(Ljava/lang/String;IILandroid/text/Spannable;Landroid/view/View;)V

    goto :goto_2

    .line 2358
    :catch_0
    move-exception v1

    .line 2359
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2360
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[UserTextViewHolder] parse text or translation error, MessageId "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 2361
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2360
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    goto :goto_1

    .line 2374
    :cond_2
    if-eqz p6, :cond_5

    .line 2375
    iget-object v0, p0, Ldaa;->am:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2376
    iget-object v0, p0, Ldaa;->am:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "translation_spannables"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    :cond_3
    :goto_3
    iget-object v0, p0, Ldaa;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2384
    iget-object v0, p0, Ldaa;->d:Landroid/app/Activity;

    new-instance v1, Ldaa$6;

    invoke-direct {v1, p0, p1, p2, p3}, Ldaa$6;-><init>(Ldaa;Landroid/widget/TextView;Landroid/text/SpannableString;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2398
    :cond_4
    :goto_4
    return-void

    .line 2379
    :cond_5
    iget-object v0, p0, Ldaa;->al:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2380
    iget-object v0, p0, Ldaa;->al:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "text_spannables"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2396
    :cond_6
    if-eqz p6, :cond_7

    .line 2397
    iget-object v0, p0, Ldaa;->am:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2398
    iget-object v0, p0, Ldaa;->am:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "translation_spannables"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2401
    :cond_7
    iget-object v0, p0, Ldaa;->al:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2402
    iget-object v0, p0, Ldaa;->al:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "text_spannables"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method static synthetic a(Ldaa;Landroid/widget/TextView;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Ldaa;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/app/Activity;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Ldaa;Z)Z
    .locals 0
    .param p0, "x0"    # Ldaa;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Ldaa;->af:Z

    return p1
.end method

.method static synthetic b(Ldaa;)Z
    .locals 1
    .param p0, "x0"    # Ldaa;

    .prologue
    .line 55
    iget-boolean v0, p0, Ldaa;->af:Z

    return v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messsageId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "translation"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    .line 263
    .local v2, "emojiUtil":Lcok;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcok;->a(Ljava/lang/String;)Z

    move-result v13

    .line 264
    .local v13, "isAllEmotion":Z
    if-eqz v13, :cond_5

    const/high16 v3, 0x41f00000    # 30.0f

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v3}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v6

    .line 265
    .local v6, "spannableString":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->Z:Landroid/widget/TextView;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 273
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->ab:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->aa:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->aa:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldaa;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 284
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcok;->a(Ljava/lang/String;)Z

    move-result v14

    .line 285
    .local v14, "isAllEmotionT":Z
    if-eqz v14, :cond_6

    const/high16 v3, 0x41f00000    # 30.0f

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1, v3}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v15

    .line 286
    .local v15, "s":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->aa:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->aa:Landroid/widget/TextView;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 291
    move-object v11, v15

    .line 298
    .end local v14    # "isAllEmotionT":Z
    .end local v15    # "s":Landroid/text/SpannableString;
    .local v11, "spannableStringT":Landroid/text/SpannableString;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->al:Ljava/util/Map;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->al:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "text_spannables"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v5, 0x1

    .line 299
    .local v5, "shouldParseLinkOfText":Z
    :goto_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->am:Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->am:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "translation_spannables"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_0
    const/4 v10, 0x1

    .line 301
    .local v10, "shouldParseLinkOfTranslation":Z
    :goto_4
    if-nez v5, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Ldaa;->Z:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->al:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "text_spannables"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-static {}, Lcwc;->a()Lcwc;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->Z:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldaa;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 307
    :cond_1
    if-nez v10, :cond_2

    .line 308
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->J:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Ldaa;->J:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->am:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "translation_spannables"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->J:Landroid/widget/TextView;

    invoke-static {}, Lcwc;->a()Lcwc;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->J:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldaa;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 315
    :cond_2
    if-nez v5, :cond_3

    if-eqz v10, :cond_4

    .line 316
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->Z:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldaa;->d:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V

    .line 317
    const-string/jumbo v3, "thread_group_links_deal"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v17

    const-string/jumbo v3, "EVENTBUTLER"

    .line 318
    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Ldaa$5;

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move-wide/from16 v8, p2

    move-object/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Ldaa$5;-><init>(Ldaa;ZLandroid/text/SpannableString;Ljava/lang/String;JZLandroid/text/SpannableString;Ljava/lang/String;)V

    const-class v4, Ljava/lang/Runnable;

    .line 319
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 318
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 332
    :cond_4
    return-void

    .line 264
    .end local v5    # "shouldParseLinkOfText":Z
    .end local v6    # "spannableString":Landroid/text/SpannableString;
    .end local v10    # "shouldParseLinkOfTranslation":Z
    .end local v11    # "spannableStringT":Landroid/text/SpannableString;
    :cond_5
    const/high16 v3, 0x41c00000    # 24.0f

    goto/16 :goto_0

    .line 285
    .restart local v6    # "spannableString":Landroid/text/SpannableString;
    .restart local v14    # "isAllEmotionT":Z
    :cond_6
    const/high16 v3, 0x41c00000    # 24.0f

    goto/16 :goto_1

    .line 293
    .end local v14    # "isAllEmotionT":Z
    :cond_7
    const/4 v11, 0x0

    .line 294
    .restart local v11    # "spannableStringT":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->ab:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Ldaa;->aa:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 298
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 300
    .restart local v5    # "shouldParseLinkOfText":Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lctt;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Ldaa;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldaa;->Z:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Ldaa;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_translate_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldaa;->aa:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Ldaa;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_divide_line_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaa;->ab:Landroid/view/View;

    .line 85
    iget-object v0, p0, Ldaa;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldaa;->ad:Landroid/widget/LinearLayout;

    .line 86
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Ldaa;->ag:Lpl/droidsonroids/gif/GifImageView;

    .line 87
    iget-object v0, p0, Ldaa;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ldaa;->ae:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldaa;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 91
    iget-object v0, p0, Ldaa;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldaa;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1100
    iget-object v0, p0, Ldaa;->e:Landroid/view/View;

    sget v1, Lctk$f;->svc_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaa;->ah:Landroid/view/View;

    .line 1101
    iget-object v0, p0, Ldaa;->ah:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Ldaa;->ah:Landroid/view/View;

    sget v1, Lctk$f;->check_answer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaa;->ai:Landroid/view/View;

    .line 1103
    iget-object v0, p0, Ldaa;->ah:Landroid/view/View;

    sget v1, Lctk$f;->feedback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaa;->aj:Landroid/view/View;

    .line 1104
    iget-object v0, p0, Ldaa;->ah:Landroid/view/View;

    sget v1, Lctk$f;->create_ticket:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldaa;->ak:Landroid/view/View;

    .line 1105
    new-instance v0, Ldaa$1;

    invoke-direct {v0, p0}, Ldaa$1;-><init>(Ldaa;)V

    .line 1132
    iget-object v1, p0, Ldaa;->ai:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    iget-object v1, p0, Ldaa;->aj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object v1, p0, Ldaa;->ak:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Ldaa;->c(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 144
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    .local v9, "content":Lcom/alibaba/wukong/im/MessageContent;
    move-object v12, v9

    .line 145
    check-cast v12, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 146
    .local v12, "msgContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-static/range {p2 .. p2}, Ldkc;->r(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "translation":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;

    move-result-object v7

    .line 150
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v8

    .line 151
    .local v8, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "displayContentString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    invoke-static {v7, v8}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 156
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v14

    .line 157
    .local v14, "privateTag":J
    const-wide v2, 0x2540be400L

    div-long v10, v14, v2

    .line 158
    .local v10, "indicator":J
    const-wide/16 v2, 0x6f

    cmp-long v2, v2, v10

    if-nez v2, :cond_2

    .line 159
    const-wide v2, 0x1027127dc00L

    sub-long v16, v14, v2

    .line 160
    .local v16, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  RT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .end local v16    # "time":J
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ldaa;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Ldaa;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->W()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldaa;->al:Ljava/util/Map;

    .line 420
    iget-object v0, p0, Ldaa;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->X()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldaa;->am:Ljava/util/Map;

    .line 421
    invoke-virtual {p0, p1, p2}, Ldaa;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 422
    invoke-virtual {p0, p1, p2, p3}, Ldaa;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 1431
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldaa;->ac:Landroid/view/View;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    iget-object v0, p0, Ldaa;->ag:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 426
    iget-object v0, p0, Ldaa;->e:Landroid/view/View;

    iget-object v2, p0, Ldaa;->ah:Landroid/view/View;

    iget-object v3, p0, Ldaa;->ai:Landroid/view/View;

    iget-object v4, p0, Ldaa;->aj:Landroid/view/View;

    iget-object v5, p0, Ldaa;->ak:Landroid/view/View;

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Ldfm;->a(Landroid/view/View;Lcom/alibaba/wukong/im/Message;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 428
    return-void

    .line 1434
    :cond_1
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1435
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1438
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 1439
    const/4 v0, 0x0

    .line 1440
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1441
    const-string/jumbo v0, "translate_status"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1443
    :cond_2
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1444
    const-string/jumbo v0, "translate_provider"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1446
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_auto_translate_provider:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_3
    :goto_1
    iget-object v0, p0, Ldaa;->ac:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1460
    iget-object v0, p0, Ldaa;->ac:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1449
    :cond_4
    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1450
    sget v0, Lctk$i;->chat_menu_translate_doing:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1451
    iget-object v1, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1452
    iget-object v1, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1453
    :cond_5
    const-string/jumbo v0, "msg_trans_provider"

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1454
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    iget-object v0, p0, Ldaa;->J:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_auto_translate_provider:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1462
    :cond_6
    iget-object v0, p0, Ldaa;->ac:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected abstract b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 486
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldaa;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send:I

    invoke-static {v2}, Ldaa;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldaa;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Ldaa;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "length":I
    iget-object v1, p0, Ldaa;->Z:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldaa;->Z:Landroid/widget/TextView;

    .line 471
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Ldaa;->Z:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 474
    :cond_0
    iget-object v1, p0, Ldaa;->aa:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldaa;->aa:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ldaa;->aa:Landroid/widget/TextView;

    .line 475
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Ldaa;->aa:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_1
    const/16 v1, 0x190

    if-gt v0, v1, :cond_2

    .line 480
    invoke-super {p0}, Lctt;->j()V

    .line 482
    :cond_2
    return-void
.end method

.method protected abstract p()V
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    iget-object v0, p0, Ldaa;->r:Landroid/view/View;

    iget-object v1, p0, Ldaa;->ae:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    return-void
.end method

.method protected abstract r()I
.end method
