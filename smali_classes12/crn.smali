.class public final Lcrn;
.super Lcri;
.source "GeneralRemindV3AsyncPopupWindow.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:J

.field public c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x2

    .line 78
    invoke-direct {p0}, Lcri;-><init>()V

    .line 38
    sget v0, Lcjj;->n:I

    iput v0, p0, Lcrn;->d:I

    .line 39
    iput v1, p0, Lcrn;->e:I

    .line 75
    iput v1, p0, Lcrn;->c:I

    .line 79
    iput-object p1, p0, Lcrn;->f:Landroid/app/Activity;

    .line 80
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 464
    if-nez p0, :cond_0

    .line 465
    const/4 p0, 0x0

    .line 471
    .end local p0    # "mediaId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 468
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferTo(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "action"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 421
    :cond_0
    if-eqz p2, :cond_1

    .line 11192
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11208
    :cond_2
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 424
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    if-ne v0, v1, :cond_3

    .line 425
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

    .line 426
    sget v0, Lcig$e;->ui_common_level1_button_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 434
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13192
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 435
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v0, Lcrn$7;

    invoke-direct {v0, p0, p2}, Lcrn$7;-><init>(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 12208
    :cond_3
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 427
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    if-ne v0, v1, :cond_4

    .line 428
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

    .line 429
    sget v0, Lcig$e;->ui_common_level3_button_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 431
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

    .line 432
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

.method private static a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V
    .locals 1
    .param p0, "ellipsizedAutoTranslateTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .param p1, "title"    # Landroid/text/SpannableString;

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    .line 344
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V
    .locals 5
    .param p1, "content"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 284
    if-nez p1, :cond_0

    .line 285
    iget-object v1, p0, Lcrn;->o:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcrn;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcrn;->o:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcrn;->o:Landroid/widget/LinearLayout;

    new-instance v2, Lcrn$4;

    invoke-direct {v2, p0, p1}, Lcrn$4;-><init>(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v1, p0, Lcrn;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 300
    iget-object v1, p0, Lcrn;->q:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iget v2, p0, Lcrn;->c:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 301
    iget-object v1, p0, Lcrn;->r:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 302
    iget-object v1, p0, Lcrn;->s:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 9124
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 305
    .local v0, "titleLoadHolder":Lcrm;, "Lcrm<Landroid/text/SpannableString;>;"
    if-nez v0, :cond_1

    .line 306
    iget-object v1, p0, Lcrn;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-static {v1, v4}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 330
    :goto_1
    iget-object v1, p0, Lcrn;->q:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 9132
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 330
    invoke-static {v1, v2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 331
    iget-object v1, p0, Lcrn;->r:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 9140
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 331
    invoke-static {v1, v2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    .line 332
    iget-object v1, p0, Lcrn;->s:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 9148
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    .line 332
    invoke-static {v1, v2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance v1, Lcrn$5;

    invoke-direct {v1, p0}, Lcrn$5;-><init>(Lcrn;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lcrn;->f:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v0, v1}, Lcrm;->a(Lcma;)V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;)V
    .locals 7
    .param p1, "footer"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 384
    if-eqz p1, :cond_0

    .line 9169
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 384
    if-eqz v1, :cond_0

    .line 10169
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 384
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    iget-object v1, p0, Lcrn;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 415
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcrn;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11169
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 389
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 391
    iget-object v1, p0, Lcrn;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcrn;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcrn;->u:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    goto :goto_0

    .line 11177
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->b:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    .line 394
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->HORIZONTAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    if-ne v1, v2, :cond_4

    .line 395
    iget-object v1, p0, Lcrn;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcrn;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcrn;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcrn;->w:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    .line 400
    iget-object v2, p0, Lcrn;->x:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    .line 401
    iget-object v2, p0, Lcrn;->y:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    :goto_1
    invoke-direct {p0, v2, v1}, Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 403
    :cond_4
    iget-object v1, p0, Lcrn;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcrn;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcrn;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_5

    .line 407
    invoke-interface {v0, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 410
    :cond_5
    iget-object v2, p0, Lcrn;->A:Landroid/widget/TextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    .line 411
    iget-object v2, p0, Lcrn;->B:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {p0, v2, v1}, Lcrn;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V
    .locals 6
    .param p1, "header"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    .line 207
    if-eqz p1, :cond_0

    .line 6108
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->f:Z

    .line 207
    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcrn;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcrn;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcrn$2;

    invoke-direct {v2, p0}, Lcrn$2;-><init>(Lcrn;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :goto_0
    if-nez p1, :cond_1

    .line 221
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcrn;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    :goto_1
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcrn;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 7071
    :cond_1
    iget v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 224
    if-lez v1, :cond_2

    .line 225
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcrn;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :try_start_0
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 8071
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 228
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 229
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 8079
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->c:I

    .line 229
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_2
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    .line 8092
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :try_start_1
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    .line 8100
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    .line 236
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 230
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 231
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcrn;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcrn;->j:Landroid/widget/ImageView;

    .line 9063
    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->a:Ljava/lang/String;

    .line 243
    invoke-static {v3}, Lcrn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 244
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    .line 9092
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :try_start_2
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    .line 9100
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    .line 247
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 248
    :catch_2
    move-exception v0

    .line 249
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V
    .locals 0
    .param p0, "x0"    # Lcrn;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .param p2, "x2"    # Landroid/text/SpannableString;

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;Landroid/text/SpannableString;)V

    return-void
.end method

.method static synthetic a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V
    .locals 0
    .param p0, "x0"    # Lcrn;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V

    return-void
.end method

.method static synthetic a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;)V
    .locals 0
    .param p0, "x0"    # Lcrn;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;)V

    return-void
.end method

.method static synthetic a(Lcrn;Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V
    .locals 0
    .param p0, "x0"    # Lcrn;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V

    return-void
.end method

.method static synthetic a(Lcrn;)Z
    .locals 6
    .param p0, "x0"    # Lcrn;

    .prologue
    const/4 v1, 0x0

    .line 35
    .line 13451
    iget-object v0, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 13452
    iget-object v0, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcrn;->C:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 13454
    goto :goto_0
.end method

.method static synthetic b(Lcrn;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;
    .locals 1
    .param p0, "x0"    # Lcrn;

    .prologue
    .line 35
    iget-object v0, p0, Lcrn;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V
    .locals 8
    .param p1, "object"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    iget-wide v2, p0, Lcrn;->C:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcrn;->C:J

    .line 84
    iget-object v1, p0, Lcrn;->f:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrn;->f:Landroid/app/Activity;

    .line 85
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrn;->f:Landroid/app/Activity;

    .line 86
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrn;->f:Landroid/app/Activity;

    .line 87
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iput-object p1, p0, Lcrn;->h:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    .line 91
    iget-object v1, p0, Lcrn;->h:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1135
    iget-object v1, p0, Lcrn;->f:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->float_window_notify_type_general_remind_v3:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcrn;->g:Landroid/view/View;

    .line 1137
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->v_top_place_holder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcrn;->i:Landroid/view/View;

    .line 1138
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->iv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcrn;->j:Landroid/widget/ImageView;

    .line 1139
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->iv_biz_type:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1140
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->iv_notify_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcrn;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1141
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_biz_type:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    .line 1142
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->iv_top_splitter:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcrn;->n:Landroid/view/View;

    .line 1144
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->ll_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcrn;->o:Landroid/widget/LinearLayout;

    .line 1146
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_notify_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v1, p0, Lcrn;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 1147
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_notify_subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v1, p0, Lcrn;->q:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 1148
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_notify_content_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v1, p0, Lcrn;->r:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 1149
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_notify_content_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v1, p0, Lcrn;->s:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 1151
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->fl_footer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcrn;->t:Landroid/widget/FrameLayout;

    .line 1152
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->btn_single_action:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->u:Landroid/widget/TextView;

    .line 1153
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->ll_horizontal_action:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcrn;->v:Landroid/widget/LinearLayout;

    .line 1154
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_horizontal_action_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->w:Landroid/widget/TextView;

    .line 1155
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_horizontal_action_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->x:Landroid/widget/TextView;

    .line 1156
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_horizontal_action_3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->y:Landroid/widget/TextView;

    .line 1158
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->ll_vertical_action:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcrn;->z:Landroid/widget/LinearLayout;

    .line 1159
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_vertical_action_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->A:Landroid/widget/TextView;

    .line 1160
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    sget v2, Lcig$f;->tv_vertical_action_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcrn;->B:Landroid/widget/TextView;

    .line 1162
    iget-object v1, p0, Lcrn;->g:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcrn;->setContentView(Landroid/view/View;)V

    .line 96
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcrn;->setWidth(I)V

    .line 97
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcrn;->setHeight(I)V

    .line 98
    invoke-virtual {p0, v7}, Lcrn;->setOutsideTouchable(Z)V

    .line 2113
    :cond_2
    iget-object v1, p0, Lcrn;->q:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 2116
    iget-object v1, p0, Lcrn;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    iget-object v1, p0, Lcrn;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2120
    iget-object v1, p0, Lcrn;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2121
    iget-object v1, p0, Lcrn;->p:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2122
    iget-object v1, p0, Lcrn;->q:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v1, p0, Lcrn;->r:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2124
    iget-object v1, p0, Lcrn;->s:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    iget-object v1, p0, Lcrn;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2128
    iget-object v1, p0, Lcrn;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2129
    iget-object v1, p0, Lcrn;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2130
    iget-object v1, p0, Lcrn;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2458
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_3

    .line 2459
    iget-object v1, p0, Lcrn;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-wide v2, p0, Lcrn;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTag(Ljava/lang/Object;)V

    .line 3178
    :cond_3
    iget-object v1, p0, Lcrn;->h:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    .line 4028
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->a:Lcrm;

    .line 3179
    if-nez v2, :cond_4

    .line 3180
    invoke-direct {p0, v6}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;)V

    .line 4256
    :goto_1
    iget-object v1, p0, Lcrn;->h:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    .line 5036
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 4257
    if-nez v2, :cond_5

    .line 4258
    invoke-direct {p0, v6}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;)V

    .line 5355
    :goto_2
    iget-object v1, p0, Lcrn;->h:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    .line 6044
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 5356
    if-nez v2, :cond_6

    .line 5357
    invoke-direct {p0, v6}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;)V

    .line 103
    :goto_3
    iget-object v1, p0, Lcrn;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "parent":Landroid/view/View;
    const/16 v1, 0x33

    iget v2, p0, Lcrn;->d:I

    invoke-virtual {p0, v0, v1, v7, v2}, Lcrn;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 3182
    .end local v0    # "parent":Landroid/view/View;
    :cond_4
    new-instance v1, Lcrn$1;

    invoke-direct {v1, p0}, Lcrn$1;-><init>(Lcrn;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcrn;->f:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lcrm;->a(Lcma;)V

    goto :goto_1

    .line 4260
    :cond_5
    new-instance v1, Lcrn$3;

    invoke-direct {v1, p0}, Lcrn$3;-><init>(Lcrn;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcrn;->f:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lcrm;->a(Lcma;)V

    goto :goto_2

    .line 5359
    :cond_6
    new-instance v1, Lcrn$6;

    invoke-direct {v1, p0}, Lcrn$6;-><init>(Lcrn;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcrn;->f:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lcrm;->a(Lcma;)V

    goto :goto_3
.end method
