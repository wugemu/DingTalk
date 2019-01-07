.class public final Laxm;
.super Landroid/widget/FrameLayout;
.source "CalendarDiurnalEventView.java"


# instance fields
.field private A:Landroid/text/style/ImageSpan;

.field private B:Landroid/graphics/drawable/Drawable;

.field private a:Larw;

.field private b:Laxn;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/RectF;

.field private u:Landroid/graphics/Path;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/text/style/ImageSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Larw;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewEvent"    # Larw;

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p2, p0, Laxm;->a:Larw;

    .line 1025
    iget-object v0, p2, Larw;->a:Laxn;

    .line 76
    iput-object v0, p0, Laxm;->b:Laxn;

    .line 77
    iget-object v0, p0, Laxm;->b:Laxn;

    invoke-interface {v0}, Laxn;->getBodyBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laxm;->B:Landroid/graphics/drawable/Drawable;

    .line 1142
    invoke-virtual {p0, v2}, Laxm;->setWillNotDraw(Z)V

    .line 1144
    sget v0, Laow$a;->calendar_day_view_stroke_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    iput v0, p0, Laxm;->c:I

    .line 1146
    sget v0, Laow$b;->calendar_day_events_view_event_corner_radius:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->d:I

    .line 1147
    sget v0, Laow$b;->calendar_day_events_view_event_indicator_width:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->e:I

    .line 1148
    sget v0, Laow$b;->calendar_day_events_view_event_text_margin_top:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->f:I

    .line 1149
    sget v0, Laow$b;->calendar_day_events_view_event_text_margin_bottom:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->g:I

    .line 1150
    sget v0, Laow$b;->calendar_day_events_view_event_text_padding_horizontal:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->h:I

    .line 1151
    sget v0, Laow$b;->calendar_day_events_view_event_text_line_spacing:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->i:I

    .line 1152
    sget v0, Laow$b;->calendar_day_events_view_anchor_horizon_margin:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->j:I

    .line 1153
    sget v0, Laow$b;->calendar_day_events_view_anchor_radius:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->k:I

    .line 1154
    sget v0, Laow$b;->calendar_day_events_view_anchor_stroke_width:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->l:I

    .line 1155
    sget v0, Laow$b;->calendar_day_events_view_event_title_text_size:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->m:I

    .line 1156
    sget v0, Laow$b;->calendar_day_events_view_event_desc_text_size:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Laxm;->n:I

    .line 1158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Laxm;->t:Landroid/graphics/RectF;

    .line 1159
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Laxm;->u:Landroid/graphics/Path;

    .line 1160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    .line 1161
    iget-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1163
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Laxm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laxm;->w:Landroid/widget/LinearLayout;

    .line 1164
    iget-object v0, p0, Laxm;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1166
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Laxm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laxm;->x:Landroid/widget/TextView;

    .line 1167
    iget-object v0, p0, Laxm;->x:Landroid/widget/TextView;

    iget v1, p0, Laxm;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1168
    iget-object v0, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1169
    iget-object v0, p0, Laxm;->x:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1170
    iget-object v0, p0, Laxm;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1172
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Laxm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laxm;->y:Landroid/widget/TextView;

    .line 1173
    iget-object v0, p0, Laxm;->y:Landroid/widget/TextView;

    iget v1, p0, Laxm;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1174
    iget-object v0, p0, Laxm;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1175
    iget-object v0, p0, Laxm;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1176
    iget-object v0, p0, Laxm;->y:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1177
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1178
    iget v1, p0, Laxm;->i:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1179
    iget-object v1, p0, Laxm;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Laxm;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    iget-object v0, p0, Laxm;->w:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Laxm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    sget v1, Laow$a;->pure_white:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    int-to-float v0, p2

    int-to-float v1, p3

    iget v2, p0, Laxm;->k:I

    int-to-float v2, v2

    iget-object v3, p0, Laxm;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    iget-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    iget-object v1, p0, Laxm;->b:Laxn;

    invoke-interface {v1}, Laxn;->getIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    int-to-float v0, p2

    int-to-float v1, p3

    iget v2, p0, Laxm;->k:I

    iget v3, p0, Laxm;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Laxm;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 267
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 315
    invoke-direct {p0}, Laxm;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Laxm;->y:Landroid/widget/TextView;

    invoke-direct {p0}, Laxm;->getDescText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Laxm;->b:Laxn;

    invoke-interface {v0}, Laxn;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxm;->b:Laxn;

    .line 322
    invoke-interface {v0}, Laxn;->isShareCalendar()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laxm;->b:Laxn;

    instance-of v0, v0, Lcom/alibaba/android/calendar/data/object/MailEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxm;->b:Laxn;

    .line 323
    invoke-interface {v0}, Laxn;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDescText()Ljava/lang/CharSequence;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 356
    invoke-direct {p0}, Laxm;->getShareFolderName()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "shareFolderName":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 358
    .local v1, "mailFolderName":Ljava/lang/String;
    iget-object v6, p0, Laxm;->b:Laxn;

    instance-of v6, v6, Lcom/alibaba/android/calendar/data/object/MailEvent;

    if-eqz v6, :cond_0

    .line 359
    iget-object v6, p0, Laxm;->b:Laxn;

    invoke-interface {v6}, Laxn;->getFolderName()Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Laxm;->b:Laxn;

    .line 364
    invoke-interface {v6}, Laxn;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    const-string/jumbo v2, ""

    .line 401
    .end local v2    # "shareFolderName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 368
    .restart local v2    # "shareFolderName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Laxm;->b:Laxn;

    invoke-interface {v6}, Laxn;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 369
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v2, v1

    .line 373
    goto :goto_0

    .line 377
    :cond_3
    iget-object v6, p0, Laxm;->A:Landroid/text/style/ImageSpan;

    if-nez v6, :cond_4

    .line 378
    new-instance v0, Lecw;

    sget v6, Laow$f;->icon_loca:I

    invoke-static {v6}, Leda;->a(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Laxm;->b:Laxn;

    invoke-interface {v7}, Laxn;->getDescColor()I

    move-result v7

    invoke-direct {v0, v6, v7}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 379
    .local v0, "locationDrawable":Lecw;
    iget v6, p0, Laxm;->n:I

    .line 3070
    iput v6, v0, Lecw;->a:I

    .line 380
    iget v6, p0, Laxm;->n:I

    .line 3079
    iput v6, v0, Lecw;->b:I

    .line 381
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, p0, Laxm;->n:I

    iget v9, p0, Laxm;->n:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v6, v7, v8, v9}, Lecw;->setBounds(IIII)V

    .line 382
    new-instance v6, Lcqs;

    invoke-direct {v6, v0}, Lcqs;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Laxm;->A:Landroid/text/style/ImageSpan;

    .line 386
    .end local v0    # "locationDrawable":Lecw;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 388
    .local v4, "start":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 389
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 397
    :cond_5
    :goto_1
    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v6, p0, Laxm;->b:Laxn;

    invoke-interface {v6}, Laxn;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 400
    .local v3, "spannableString":Landroid/text/SpannableString;
    iget-object v6, p0, Laxm;->A:Landroid/text/style/ImageSpan;

    add-int/lit8 v7, v4, 0x1

    const/16 v8, 0x21

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v2, v3

    .line 401
    goto/16 :goto_0

    .line 392
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 393
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    goto :goto_1
.end method

.method private getShareFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Laxm;->b:Laxn;

    invoke-interface {v0}, Laxn;->isShareCalendar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string/jumbo v0, ""

    .line 352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laxm;->b:Laxn;

    invoke-interface {v0}, Laxn;->getFolderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubjectText()Ljava/lang/CharSequence;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    iget-object v2, p0, Laxm;->b:Laxn;

    invoke-interface {v2}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const-string/jumbo v1, ""

    .line 345
    :goto_0
    return-object v1

    .line 331
    :cond_0
    iget-object v2, p0, Laxm;->b:Laxn;

    invoke-interface {v2}, Laxn;->isShareCalendar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    iget-object v2, p0, Laxm;->b:Laxn;

    invoke-interface {v2}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_1
    iget-object v2, p0, Laxm;->z:Landroid/text/style/ImageSpan;

    if-nez v2, :cond_2

    .line 336
    new-instance v0, Lecw;

    sget v2, Laow$f;->icon_share_new_fill:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laxm;->b:Laxn;

    .line 337
    invoke-interface {v3}, Laxn;->getIndicatorColor()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 338
    .local v0, "shareDrawable":Lecw;
    iget v2, p0, Laxm;->m:I

    .line 2070
    iput v2, v0, Lecw;->a:I

    .line 339
    iget v2, p0, Laxm;->m:I

    .line 2079
    iput v2, v0, Lecw;->b:I

    .line 340
    iget v2, p0, Laxm;->m:I

    iget v3, p0, Laxm;->m:I

    invoke-virtual {v0, v4, v4, v2, v3}, Lecw;->setBounds(IIII)V

    .line 341
    new-instance v2, Lcqs;

    invoke-direct {v2, v0}, Lcqs;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Laxm;->z:Landroid/text/style/ImageSpan;

    .line 343
    .end local v0    # "shareDrawable":Lecw;
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, " "

    aput-object v3, v2, v4

    iget-object v3, p0, Laxm;->b:Laxn;

    invoke-interface {v3}, Laxn;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 344
    .local v1, "spannableString":Landroid/text/SpannableString;
    iget-object v2, p0, Laxm;->z:Landroid/text/style/ImageSpan;

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Laxm;->invalidate()V

    .line 103
    invoke-virtual {p0}, Laxm;->c()V

    .line 104
    return-void
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Laxm;->b:Laxn;

    invoke-interface {v1}, Laxn;->getDayEventDelegate()Laxn$a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Laxm;->b:Laxn;

    invoke-interface {v1}, Laxn;->isShareCalendar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Laxm;->b:Laxn;

    invoke-interface {v1}, Laxn;->getOwnerId()J

    move-result-wide v2

    .line 112
    .local v2, "ownerId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "alias":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Laxm;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Laow$f;->dt_ding_calendar_shared_schedule_no_privilege_tip:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_1
    invoke-static {v1}, Lhcn;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Laxm;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Laow$f;->dt_calendar_shared_schedule_no_privilege_tip_at:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 118
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "ownerId":J
    :cond_2
    iget-object v1, p0, Laxm;->b:Laxn;

    invoke-interface {v1}, Laxn;->getDayEventDelegate()Laxn$a;

    move-result-object v1

    invoke-virtual {p0}, Laxm;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lavk;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v1, v4}, Laxn$a;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v1, p0, Laxm;->w:Landroid/widget/LinearLayout;

    iget v2, p0, Laxm;->q:I

    iget v3, p0, Laxm;->h:I

    add-int/2addr v2, v3

    iget v3, p0, Laxm;->k:I

    iget v4, p0, Laxm;->f:I

    add-int/2addr v3, v4

    iget v4, p0, Laxm;->p:I

    add-int/2addr v3, v4

    iget v4, p0, Laxm;->h:I

    iget v5, p0, Laxm;->r:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 274
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    iget-object v2, p0, Laxm;->b:Laxn;

    invoke-interface {v2}, Laxn;->getTitleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v1, p0, Laxm;->y:Landroid/widget/TextView;

    iget-object v2, p0, Laxm;->b:Laxn;

    invoke-interface {v2}, Laxn;->getDescColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v1, p0, Laxm;->b:Laxn;

    invoke-interface {v1}, Laxn;->shouldShowStrikeThrough()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    .line 279
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 278
    :goto_0
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 283
    :cond_0
    iget v1, p0, Laxm;->o:I

    iget v2, p0, Laxm;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 284
    .local v0, "contentHeight":I
    invoke-direct {p0}, Laxm;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 285
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-direct {p0}, Laxm;->getSubjectText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Laxm;->y:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget v1, p0, Laxm;->k:I

    iget v2, p0, Laxm;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->p:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->m:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->g:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 289
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 312
    :goto_1
    return-void

    .line 279
    .end local v0    # "contentHeight":I
    :cond_1
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    .line 280
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    goto :goto_0

    .line 292
    .restart local v0    # "contentHeight":I
    :cond_2
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 293
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 296
    :cond_3
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-direct {p0}, Laxm;->getSubjectText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget v1, p0, Laxm;->k:I

    iget v2, p0, Laxm;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->p:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->m:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->i:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->n:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->g:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 299
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 300
    iget-object v1, p0, Laxm;->y:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 301
    :cond_4
    iget v1, p0, Laxm;->k:I

    iget v2, p0, Laxm;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->p:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->m:I

    iget v3, p0, Laxm;->i:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->n:I

    add-int/2addr v1, v2

    iget v2, p0, Laxm;->g:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    .line 303
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 304
    invoke-direct {p0}, Laxm;->d()V

    goto :goto_1

    .line 307
    :cond_5
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 308
    iget-object v1, p0, Laxm;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 309
    invoke-direct {p0}, Laxm;->d()V

    goto :goto_1
.end method

.method public final getDraggingAnchorRadius()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Laxm;->k:I

    return v0
.end method

.method public final getEvent()Laxn;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Laxm;->b:Laxn;

    return-object v0
.end method

.method public final getShowHeight()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Laxm;->o:I

    return v0
.end method

.method public final getViewEvent()Larw;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Laxm;->a:Larw;

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1194
    iget v0, p0, Laxm;->q:I

    iget v1, p0, Laxm;->e:I

    add-int/2addr v0, v1

    .line 1195
    iget v1, p0, Laxm;->k:I

    .line 1196
    invoke-virtual {p0}, Laxm;->getWidth()I

    move-result v2

    iget v3, p0, Laxm;->r:I

    sub-int/2addr v2, v3

    .line 1197
    iget v3, p0, Laxm;->o:I

    iget v4, p0, Laxm;->k:I

    sub-int/2addr v3, v4

    .line 1199
    iget-object v4, p0, Laxm;->v:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1200
    iget-object v4, p0, Laxm;->v:Landroid/graphics/Paint;

    iget-object v5, p0, Laxm;->b:Laxn;

    invoke-interface {v5}, Laxn;->getBodyColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1202
    iget-object v4, p0, Laxm;->t:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1204
    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v9, v4, v10

    aput v9, v4, v11

    iget v5, p0, Laxm;->d:I

    int-to-float v5, v5

    aput v5, v4, v12

    iget v5, p0, Laxm;->d:I

    int-to-float v5, v5

    aput v5, v4, v13

    const/4 v5, 0x4

    iget v6, p0, Laxm;->d:I

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Laxm;->d:I

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x6

    aput v9, v4, v5

    const/4 v5, 0x7

    aput v9, v4, v5

    .line 1205
    iget-object v5, p0, Laxm;->u:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 1206
    iget-object v5, p0, Laxm;->u:Landroid/graphics/Path;

    iget-object v6, p0, Laxm;->t:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1207
    iget-object v4, p0, Laxm;->u:Landroid/graphics/Path;

    iget-object v5, p0, Laxm;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1209
    iget-object v4, p0, Laxm;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1210
    iget-object v4, p0, Laxm;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1211
    iget-object v0, p0, Laxm;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1216
    :cond_0
    iget v0, p0, Laxm;->q:I

    .line 1217
    iget v1, p0, Laxm;->k:I

    .line 1218
    iget v2, p0, Laxm;->q:I

    iget v3, p0, Laxm;->e:I

    add-int/2addr v2, v3

    .line 1219
    iget v3, p0, Laxm;->o:I

    iget v4, p0, Laxm;->k:I

    sub-int/2addr v3, v4

    .line 1221
    iget-object v4, p0, Laxm;->v:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1222
    iget-object v4, p0, Laxm;->v:Landroid/graphics/Paint;

    iget-object v5, p0, Laxm;->b:Laxn;

    invoke-interface {v5}, Laxn;->getIndicatorColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1223
    iget-object v4, p0, Laxm;->t:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1225
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Laxm;->d:I

    int-to-float v1, v1

    aput v1, v0, v10

    iget v1, p0, Laxm;->d:I

    int-to-float v1, v1

    aput v1, v0, v11

    aput v9, v0, v12

    aput v9, v0, v13

    const/4 v1, 0x4

    aput v9, v0, v1

    const/4 v1, 0x5

    aput v9, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Laxm;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Laxm;->d:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 1226
    iget-object v1, p0, Laxm;->u:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1227
    iget-object v1, p0, Laxm;->u:Landroid/graphics/Path;

    iget-object v2, p0, Laxm;->t:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1228
    iget-object v0, p0, Laxm;->u:Landroid/graphics/Path;

    iget-object v1, p0, Laxm;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1232
    iget v0, p0, Laxm;->q:I

    .line 1233
    iget v1, p0, Laxm;->k:I

    .line 1234
    invoke-virtual {p0}, Laxm;->getWidth()I

    move-result v2

    iget v3, p0, Laxm;->r:I

    sub-int/2addr v2, v3

    .line 1235
    iget v3, p0, Laxm;->o:I

    iget v4, p0, Laxm;->k:I

    sub-int/2addr v3, v4

    .line 1237
    iget-object v4, p0, Laxm;->v:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1238
    iget-object v4, p0, Laxm;->v:Landroid/graphics/Paint;

    iget v5, p0, Laxm;->c:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1239
    iget-object v4, p0, Laxm;->t:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1240
    iget-object v0, p0, Laxm;->t:Landroid/graphics/RectF;

    iget v1, p0, Laxm;->d:I

    int-to-float v1, v1

    iget v2, p0, Laxm;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Laxm;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1244
    iget-boolean v0, p0, Laxm;->s:Z

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Laxm;->v:Landroid/graphics/Paint;

    iget v1, p0, Laxm;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1250
    iget v0, p0, Laxm;->q:I

    iget v1, p0, Laxm;->j:I

    add-int/2addr v0, v1

    .line 1251
    iget v1, p0, Laxm;->o:I

    iget v2, p0, Laxm;->k:I

    sub-int/2addr v1, v2

    .line 1252
    invoke-direct {p0, p1, v0, v1}, Laxm;->a(Landroid/graphics/Canvas;II)V

    .line 1254
    invoke-virtual {p0}, Laxm;->getWidth()I

    move-result v0

    iget v1, p0, Laxm;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Laxm;->j:I

    sub-int/2addr v0, v1

    .line 1255
    iget v1, p0, Laxm;->k:I

    .line 1256
    invoke-direct {p0, p1, v0, v1}, Laxm;->a(Landroid/graphics/Canvas;II)V

    .line 191
    :cond_1
    return-void
.end method

.method public final setDraggingAnchorRadius(I)V
    .locals 0
    .param p1, "draggingAnchorRadius"    # I

    .prologue
    .line 130
    iput p1, p0, Laxm;->k:I

    .line 131
    return-void
.end method

.method public final setLeftPadding(I)V
    .locals 0
    .param p1, "leftPadding"    # I

    .prologue
    .line 94
    iput p1, p0, Laxm;->q:I

    .line 95
    return-void
.end method

.method public final setRightPadding(I)V
    .locals 0
    .param p1, "rightPadding"    # I

    .prologue
    .line 98
    iput p1, p0, Laxm;->r:I

    .line 99
    return-void
.end method

.method public final setShowDraggingAnchors(Z)V
    .locals 0
    .param p1, "showDraggingAnchors"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Laxm;->s:Z

    .line 139
    return-void
.end method

.method public final setShowHeight(I)V
    .locals 0
    .param p1, "showHeight"    # I

    .prologue
    .line 82
    iput p1, p0, Laxm;->o:I

    .line 83
    return-void
.end method

.method public final setTopPadding(I)V
    .locals 0
    .param p1, "topPadding"    # I

    .prologue
    .line 90
    iput p1, p0, Laxm;->p:I

    .line 91
    return-void
.end method
