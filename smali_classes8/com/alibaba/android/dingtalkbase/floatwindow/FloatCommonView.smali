.class public Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
.super Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;
.source "FloatCommonView.java"


# instance fields
.field private final a:I

.field private b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

.field private c:I

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x2

    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a:I

    .line 39
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->c:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a:I

    .line 39
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->c:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x2

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a:I

    .line 39
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->c:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->i:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 390
    if-nez p0, :cond_0

    .line 391
    const/4 p0, 0x0

    .line 397
    .end local p0    # "mediaId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 394
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferTo(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "action"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 360
    :cond_0
    if-eqz p2, :cond_1

    .line 9187
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9203
    :cond_2
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 363
    sget-object v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    if-ne v0, v1, :cond_3

    .line 364
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_level1_white_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    sget v0, Lcig$e;->ui_common_level1_button_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 373
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11187
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    new-instance v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$7;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 10203
    :cond_3
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 366
    sget-object v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    if-ne v0, v1, :cond_4

    .line 367
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    sget v0, Lcig$e;->ui_common_level3_button_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 370
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_theme_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_transparent_cell_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .param p2, "x2"    # Landroid/text/SpannableString;

    .prologue
    .line 34
    invoke-static {p1, p2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V
    .locals 5
    .param p1, "content"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 236
    if-nez p1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$4;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->i:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 252
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->j:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->c:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->k:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 254
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->l:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 7119
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 257
    .local v0, "titleLoadHolder":Lcrm;, "Lcrm<Landroid/text/SpannableString;>;"
    if-nez v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->i:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 277
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->j:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 7127
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 277
    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->k:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 7135
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 278
    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 279
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->l:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 7143
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    .line 279
    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    goto :goto_0

    .line 260
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$5;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V

    invoke-virtual {v0, v1}, Lcrm;->a(Lcma;)V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;)V
    .locals 7
    .param p1, "footer"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 324
    if-eqz p1, :cond_0

    .line 7164
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 324
    if-eqz v1, :cond_0

    .line 8164
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 324
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9164
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 329
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 331
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->n:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    goto :goto_0

    .line 9172
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->b:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    .line 334
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->HORIZONTAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    if-ne v1, v2, :cond_4

    .line 335
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->p:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    .line 340
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->q:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    .line 341
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->r:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_5

    .line 347
    invoke-interface {v0, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 350
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->t:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    .line 351
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->u:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V
    .locals 6
    .param p1, "header"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    .line 163
    if-eqz p1, :cond_0

    .line 4103
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->f:Z

    .line 163
    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$2;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :goto_0
    if-nez p1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :goto_1
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 5071
    :cond_1
    iget v1, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 179
    if-lez v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6071
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 183
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 184
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6079
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 184
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    .line 6087
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    .line 6095
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 186
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 196
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->d:Landroid/widget/ImageView;

    .line 7063
    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->a:Ljava/lang/String;

    .line 198
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 199
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    .line 7087
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    .line 7095
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 203
    :catch_2
    move-exception v0

    .line 204
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private static a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V
    .locals 1
    .param p0, "ellipsizedAutoTranslateTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .param p1, "title"    # Landroid/text/SpannableString;

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 290
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 95
    sget v0, Lcig$f;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->d:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcig$f;->iv_biz_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 97
    sget v0, Lcig$f;->iv_notify_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 98
    sget v0, Lcig$f;->tv_biz_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->f:Landroid/widget/TextView;

    .line 100
    sget v0, Lcig$f;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->h:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcig$f;->tv_notify_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->i:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 103
    sget v0, Lcig$f;->tv_notify_subtitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->j:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 104
    sget v0, Lcig$f;->tv_notify_content_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->k:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 105
    sget v0, Lcig$f;->tv_notify_content_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->l:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 107
    sget v0, Lcig$f;->fl_footer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->m:Landroid/widget/FrameLayout;

    .line 108
    sget v0, Lcig$f;->btn_single_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->n:Landroid/widget/TextView;

    .line 109
    sget v0, Lcig$f;->ll_horizontal_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->o:Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcig$f;->tv_horizontal_action_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->p:Landroid/widget/TextView;

    .line 111
    sget v0, Lcig$f;->tv_horizontal_action_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->q:Landroid/widget/TextView;

    .line 112
    sget v0, Lcig$f;->tv_horizontal_action_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->r:Landroid/widget/TextView;

    .line 114
    sget v0, Lcig$f;->ll_vertical_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->s:Landroid/widget/LinearLayout;

    .line 115
    sget v0, Lcig$f;->tv_vertical_action_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->t:Landroid/widget/TextView;

    .line 116
    sget v0, Lcig$f;->tv_vertical_action_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->u:Landroid/widget/TextView;

    .line 117
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;)V
    .locals 3
    .param p1, "floatDisplayAsyncObject"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 2031
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->a:Lcrm;

    .line 1141
    if-nez v0, :cond_3

    .line 1142
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;)V

    .line 2210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 3039
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 2214
    if-nez v0, :cond_4

    .line 2215
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;)V

    .line 3298
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    if-eqz v0, :cond_2

    .line 3301
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 4047
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 3302
    if-nez v0, :cond_5

    .line 3303
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;)V

    :cond_2
    :goto_2
    return-void

    .line 1144
    :cond_3
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$1;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V

    invoke-virtual {v0, v1}, Lcrm;->a(Lcma;)V

    goto :goto_0

    .line 2217
    :cond_4
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$3;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V

    invoke-virtual {v0, v1}, Lcrm;->a(Lcma;)V

    goto :goto_1

    .line 3305
    :cond_5
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView$6;-><init>(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;)V

    invoke-virtual {v0, v1}, Lcrm;->a(Lcma;)V

    goto :goto_2
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcig$h;->layout_float_view:I

    return v0
.end method

.method public setSubTitleMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->c:I

    .line 86
    return-void
.end method
