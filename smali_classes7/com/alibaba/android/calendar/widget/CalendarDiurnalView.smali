.class public final Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
.super Landroid/widget/FrameLayout;
.source "CalendarDiurnalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;,
        Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;
    }
.end annotation


# instance fields
.field private A:[Landroid/widget/TextView;

.field private B:[Landroid/view/View;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxm;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Laxm;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Laxn;

.field private I:F

.field private J:F

.field private K:J

.field private L:I

.field private M:I

.field private N:F

.field private O:F

.field private P:I

.field private Q:F

.field private R:J

.field private S:Z

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

.field private V:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

.field private W:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

.field a:F

.field private aa:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

.field private ab:Ljava/lang/Runnable;

.field private ac:Ljava/lang/Runnable;

.field b:I

.field c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

.field d:J

.field public e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field

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

.field private s:I

.field private t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dayStartMillis"    # J

    .prologue
    const/16 v1, 0x18

    const/4 v5, 0x4

    const/4 v4, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->A:[Landroid/widget/TextView;

    .line 86
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->B:[Landroid/view/View;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    .line 90
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->T:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$1;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->aa:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    .line 133
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$2;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$3;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ac:Ljava/lang/Runnable;

    .line 189
    iput-wide p2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    .line 1266
    invoke-static {}, Lavl;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->S:Z

    .line 1268
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    .line 2044
    iget v0, v0, Larg;->a:F

    .line 1268
    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a:F

    .line 1269
    sget v0, Laow$a;->ui_common_level3_text_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g:I

    .line 1270
    sget v0, Laow$a;->ui_common_level2_line_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h:I

    .line 1272
    sget v0, Laow$b;->calendar_day_events_view_row_height:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->i:I

    .line 1273
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    .line 1274
    sget v0, Laow$b;->calendar_day_events_view_indicator_width:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->k:I

    .line 1275
    sget v0, Laow$b;->calendar_day_events_view_time_text_size:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    .line 1276
    sget v0, Laow$b;->calendar_day_events_view_divider_margin:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    .line 1277
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laow$b;->calendar_day_events_view_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->n:I

    .line 1278
    sget v0, Laow$b;->calendar_day_events_view_divider_margin_left_hour_12:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->o:I

    .line 1279
    sget v0, Laow$b;->calendar_day_events_view_divider_margin_left_hour_24:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->p:I

    .line 1280
    sget v0, Laow$b;->calendar_day_events_view_anchor_hot_zone_radius:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->q:I

    .line 1281
    sget v0, Laow$b;->calendar_day_events_view_first_time_scroll_y_offset:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b:I

    .line 1282
    sget v0, Laow$b;->calendar_day_events_view_anchor_horizon_margin:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->r:I

    .line 1283
    sget v0, Laow$b;->calendar_all_day_events_view_scroll_min_show_height:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->s:I

    .line 1285
    invoke-virtual {p0, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setWillNotDraw(Z)V

    .line 1286
    sget v0, Laow$b;->calendar_day_events_view_padding_right:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setPadding(IIII)V

    .line 1287
    sget v0, Laow$a;->pure_white:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setBackgroundColor(I)V

    .line 1288
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d()V

    .line 1289
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e()V

    .line 2309
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    .line 2310
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2311
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2312
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2314
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    .line 2315
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2316
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2317
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2318
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2320
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    .line 2321
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2322
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2323
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2326
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    .line 2327
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2328
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    sget v1, Laow$a;->ui_common_theme_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2329
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2330
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2331
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    sget v1, Laow$b;->calendar_day_events_view_indicator_padding_left:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2332
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2333
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2335
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    .line 2336
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2337
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    sget v1, Laow$a;->ui_common_theme_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2338
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2339
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2340
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    sget v1, Laow$b;->calendar_day_events_view_indicator_padding_left:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2341
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2342
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1291
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->D:I

    .line 1293
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ac:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1084
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 1085
    .local v0, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 1087
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private a(Landroid/view/ViewGroup;ILarw;)Laxm;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "columnNum"    # I
    .param p3, "viewEvent"    # Larw;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 633
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDividerMarginLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 8045
    iget v8, p3, Larw;->c:F

    iget v9, p3, Larw;->b:F

    sub-float/2addr v8, v9

    .line 633
    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 635
    .local v6, "width":I
    new-instance v0, Laxm;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7, p3}, Laxm;-><init>(Landroid/content/Context;Larw;)V

    .line 636
    .local v0, "calendarDiurnalEventView":Laxm;
    invoke-virtual {p3}, Larw;->a()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v7

    invoke-virtual {v0}, Laxm;->getDraggingAnchorRadius()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    .line 8663
    .local v1, "height":I
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    .line 8664
    const/4 v5, 0x0

    .line 9037
    .local v5, "padding":I
    :goto_0
    iget v7, p3, Larw;->b:F

    .line 639
    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    const/4 v2, 0x1

    .line 9041
    .local v2, "isFirstColumn":Z
    :goto_1
    iget v7, p3, Larw;->c:F

    .line 640
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_7

    const/4 v3, 0x1

    .line 642
    .local v3, "isLastColumn":Z
    :goto_2
    invoke-virtual {v0, v5}, Laxm;->setLeftPadding(I)V

    .line 643
    invoke-virtual {v0, v5}, Laxm;->setRightPadding(I)V

    .line 644
    if-eqz v2, :cond_0

    .line 645
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Laxm;->setLeftPadding(I)V

    .line 647
    :cond_0
    if-eqz v3, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v7}, Laxm;->setRightPadding(I)V

    .line 651
    :cond_1
    invoke-virtual {v0, v1}, Laxm;->setShowHeight(I)V

    .line 652
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 653
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDividerMarginLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDividerMarginLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 10037
    iget v9, p3, Larw;->b:F

    .line 653
    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 654
    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget v7, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    .line 11029
    iget-object v8, p3, Larw;->a:Laxn;

    invoke-interface {v8}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v8

    .line 656
    iget-wide v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Laxm;->getDraggingAnchorRadius()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Laxm;->setTranslationY(F)V

    .line 658
    invoke-virtual {v0}, Laxm;->a()V

    .line 659
    return-object v0

    .line 8666
    .end local v2    # "isFirstColumn":Z
    .end local v3    # "isLastColumn":Z
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "padding":I
    :cond_2
    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    .line 8667
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    goto :goto_0

    .line 8669
    :cond_3
    const/4 v7, 0x3

    if-ne p2, v7, :cond_4

    .line 8670
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    goto/16 :goto_0

    .line 8672
    :cond_4
    const/4 v7, 0x4

    if-ne p2, v7, :cond_5

    .line 8673
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    goto/16 :goto_0

    .line 8675
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    goto/16 :goto_0

    .line 639
    .restart local v5    # "padding":I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 640
    .restart local v2    # "isFirstColumn":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->U:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    return-object v0
.end method

.method private a(F)V
    .locals 6
    .param p1, "touchY"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x14a

    const/4 v4, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    .line 1014
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-nez v1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v1, v2, :cond_0

    .line 1024
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v0

    .line 1026
    .local v0, "scrollY":I
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1027
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v2, v5}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a(III)V

    goto :goto_0

    .line 1030
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .line 1032
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    .line 1033
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1032
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .line 1033
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1031
    invoke-virtual {v1, v4, v2, v5}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->a(III)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;Larw;Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
    .param p1, "x1"    # Larw;
    .param p2, "x2"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .prologue
    const/4 v3, 0x0

    .line 46
    .line 18049
    const/4 v0, 0x0

    iput v0, p1, Larw;->b:F

    .line 18053
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Larw;->c:F

    .line 19025
    iget-object v0, p1, Larw;->a:Laxn;

    .line 17914
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17915
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17916
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Landroid/view/ViewGroup;ILarw;)Laxm;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    .line 17917
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Laxm;->setAlpha(F)V

    .line 17919
    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    .line 17920
    invoke-direct {p0, p2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    .line 17921
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    if-eqz v0, :cond_0

    .line 17922
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->setCanScroll(Z)V

    .line 17924
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v0, :cond_1

    .line 17925
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->setCanScroll(Z)V

    .line 17927
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h()V

    .line 17928
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laru;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 608
    .local p1, "viewBlocks":Ljava/util/List;, "Ljava/util/List<Laru;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laru;

    .line 609
    .local v0, "viewBlock":Laru;
    if-eqz v0, :cond_0

    .line 6617
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Laru;->a()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 7036
    iget-object v1, v0, Laru;->c:Ljava/util/List;

    .line 6618
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larv;

    .line 6619
    if-eqz v1, :cond_2

    .line 7053
    iget-object v1, v1, Larv;->b:Ljava/util/List;

    .line 6622
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larw;

    .line 6623
    if-eqz v1, :cond_1

    .line 6626
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Laru;->a()I

    move-result v6

    invoke-direct {p0, v5, v6, v1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Landroid/view/ViewGroup;ILarw;)Laxm;

    move-result-object v1

    .line 6627
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6617
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 614
    .end local v0    # "viewBlock":Laru;
    :cond_3
    return-void
.end method

.method private static b(Landroid/view/MotionEvent;)F
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1091
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private b(F)J
    .locals 6
    .param p1, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1073
    const/high16 v1, 0x3e800000    # 0.25f

    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 1074
    .local v0, "dragUnitDistance":F
    div-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v4, 0xdbba0

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    return-object v0
.end method

.method private b(Z)V
    .locals 14
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v12, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 411
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v3, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v2, v3, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    invoke-static {v2}, Lavm;->a(Ljava/util/Collection;)V

    .line 415
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->T:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lavl;->a()Z

    move-result v2

    iget-boolean v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->S:Z

    if-ne v2, v3, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f()V

    .line 417
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    goto :goto_0

    .line 421
    :cond_2
    invoke-static {}, Lavl;->a()Z

    move-result v2

    iget-boolean v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->S:Z

    if-eq v2, v3, :cond_4

    .line 422
    invoke-static {}, Lavl;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->S:Z

    move v2, v5

    .line 2449
    :goto_1
    if-ge v2, v12, :cond_3

    .line 2450
    iget-object v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->A:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    .line 2451
    iget-wide v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    int-to-long v8, v2

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 2452
    invoke-static {v6, v7}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2449
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    .line 2457
    :goto_2
    if-ge v3, v12, :cond_4

    .line 2458
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->B:[Landroid/view/View;

    aget-object v6, v2, v3

    .line 2459
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2460
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDividerMarginLeft()I

    move-result v7

    invoke-virtual {v2, v7, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2461
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2457
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 428
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 429
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->T:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 433
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 434
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 435
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->V:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    if-eqz v2, :cond_6

    .line 436
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->V:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDividerMarginLeft()I

    move-result v3

    sget v6, Lcjj;->g:I

    sub-int/2addr v3, v6

    invoke-interface {v2, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;->a(I)V

    .line 438
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f:Ljava/util/List;

    .line 3029
    invoke-static {v2}, Lavm;->a(Ljava/util/List;)V

    .line 3031
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3032
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxn;

    .line 3033
    if-eqz v2, :cond_7

    .line 3037
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3038
    invoke-static {v2}, Laru;->a(Laxn;)Laru;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3043
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laru;

    .line 3044
    if-eqz v3, :cond_9

    .line 4058
    invoke-interface {v2}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v10

    iget-wide v12, v3, Laru;->a:J

    cmp-long v6, v10, v12

    if-lez v6, :cond_a

    .line 4059
    invoke-interface {v2}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v10

    iget-wide v12, v3, Laru;->b:J

    cmp-long v6, v10, v12

    if-gez v6, :cond_a

    move v6, v4

    .line 3048
    :goto_4
    if-eqz v6, :cond_9

    .line 3052
    invoke-virtual {v3, v2}, Laru;->b(Laxn;)V

    move v3, v4

    .line 3057
    :goto_5
    if-nez v3, :cond_7

    .line 3058
    invoke-static {v2}, Laru;->a(Laxn;)Laru;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move v6, v5

    .line 4059
    goto :goto_4

    .line 3018
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laru;

    .line 3019
    if-eqz v2, :cond_c

    .line 3022
    invoke-virtual {v2}, Laru;->b()V

    .line 3023
    invoke-virtual {v2}, Laru;->c()V

    goto :goto_6

    .line 438
    :cond_d
    invoke-direct {p0, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Ljava/util/List;)V

    .line 439
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f()V

    .line 440
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    .line 441
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollX()I

    move-result v0

    .line 443
    .local v0, "x":I
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v1

    .line 444
    .local v1, "y":I
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->onScrollChanged(IIII)V

    goto/16 :goto_0

    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_e
    move v3, v5

    goto :goto_5
.end method

.method private c(F)I
    .locals 4
    .param p1, "y"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1078
    const/high16 v2, 0x3e800000    # 0.25f

    iget v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 1079
    .local v1, "dragUnit":F
    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1080
    .local v0, "dragIndex":I
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    add-int/2addr v2, v3

    return v2
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    .line 17497
    invoke-static {}, Lavq;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17501
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v0, :cond_1

    .line 17505
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v1

    .line 17506
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxm;

    .line 17507
    if-eqz v0, :cond_0

    .line 17508
    invoke-virtual {v0}, Laxm;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v1, v3

    if-lez v3, :cond_0

    .line 17509
    invoke-virtual {v0}, Laxm;->getTranslationY()F

    move-result v3

    invoke-virtual {v0}, Laxm;->getShowHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    .line 17512
    invoke-virtual {v0}, Laxm;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v1, v3

    .line 17513
    invoke-virtual {v0}, Laxm;->getShowHeight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->s:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17514
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 17515
    invoke-virtual {v0, v3}, Laxm;->setTopPadding(I)V

    .line 17516
    invoke-virtual {v0}, Laxm;->c()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method private d()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 2346
    iget-wide v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    int-to-long v6, v0

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 2347
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2348
    invoke-static {v4, v5}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2349
    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2350
    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    int-to-float v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2351
    const/16 v1, 0x30

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2352
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2353
    sget v1, Laow$b;->calendar_day_events_view_indicator_padding_left:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    invoke-virtual {v3, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2354
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->k:I

    const/4 v7, -0x2

    invoke-direct {v6, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v1

    iget v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    if-le v1, v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2356
    invoke-virtual {p0, v3, v6}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2357
    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 2358
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->A:[Landroid/widget/TextView;

    aput-object v3, v1, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2355
    goto :goto_1

    .line 300
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    const/4 v6, 0x0

    .line 46
    .line 17521
    invoke-static {}, Lavq;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17525
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v0, :cond_2

    .line 17529
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v1

    .line 17530
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxm;

    .line 17531
    if-eqz v0, :cond_0

    .line 17532
    invoke-virtual {v0}, Laxm;->getTranslationY()F

    move-result v3

    invoke-virtual {v0}, Laxm;->getShowHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    .line 17535
    invoke-virtual {v0}, Laxm;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v1, v3

    if-lez v3, :cond_1

    .line 17536
    invoke-virtual {v0}, Laxm;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v1, v3

    .line 17537
    invoke-virtual {v0}, Laxm;->getShowHeight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->s:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17538
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 17539
    invoke-virtual {v0, v3}, Laxm;->setTopPadding(I)V

    .line 17543
    :goto_1
    invoke-virtual {v0}, Laxm;->c()V

    goto :goto_0

    .line 17541
    :cond_1
    invoke-virtual {v0, v6}, Laxm;->setTopPadding(I)V

    goto :goto_1

    .line 46
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    return v0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2362
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2363
    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2364
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->n:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2365
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDividerMarginLeft()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2366
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2367
    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2368
    iget-object v2, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->B:[Landroid/view/View;

    aput-object v1, v2, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->W:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    return-object v0
.end method

.method private f()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    .line 549
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->A:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 552
    iget-wide v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    int-to-long v6, v0

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long v2, v4, v6

    .line 553
    .local v2, "timeMillis":J
    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->A:[Landroid/widget/TextView;

    aget-object v4, v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v1

    iget v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    sget v6, Lcjj;->b:I

    add-int/2addr v5, v6

    if-le v1, v5, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    .end local v2    # "timeMillis":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .restart local v2    # "timeMillis":J
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 555
    .end local v2    # "timeMillis":J
    :cond_3
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDiurnalViewHeight()I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 559
    .local v2, "currentTimeMillis":J
    iget-wide v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    cmp-long v6, v2, v10

    if-ltz v6, :cond_0

    iget-wide v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    cmp-long v6, v2, v10

    if-ltz v6, :cond_2

    .line 560
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 561
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    if-nez v6, :cond_8

    .line 567
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v9, Laow$e;->calendar_layout_day_events_current_time:I

    iget-object v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    const/4 v11, 0x1

    invoke-virtual {v6, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 568
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    sget v9, Laow$d;->rl_current_time:I

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    .line 569
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    sget v9, Laow$d;->tv_current_time:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->y:Landroid/widget/TextView;

    .line 570
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    sget v9, Laow$d;->v_line:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->z:Landroid/view/View;

    .line 575
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 576
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    iget-wide v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long v10, v2, v10

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 580
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->y:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 581
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->y:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->z:Landroid/view/View;

    if-eqz v6, :cond_6

    .line 585
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->z:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 586
    .local v4, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lavl;->a()Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Laow$b;->calendar_day_events_view_current_time_divider_margin_left_hour_24:I

    :goto_2
    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    invoke-virtual {v4, v6, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 590
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->z:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 594
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v6}, Laxm;->getTranslationY()F

    move-result v6

    iget-object v9, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v9}, Laxm;->getDraggingAnchorRadius()I

    move-result v9

    int-to-float v9, v9

    add-float v5, v6, v9

    .line 595
    .local v5, "top":F
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v6}, Laxm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget-object v9, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v9}, Laxm;->getDraggingAnchorRadius()I

    move-result v9

    int-to-float v9, v9

    sub-float v0, v6, v9

    .line 596
    .local v0, "bottom":F
    iget-wide v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v1

    .line 597
    .local v1, "currentPosition":I
    iget-object v9, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->y:Landroid/widget/TextView;

    int-to-float v6, v1

    sub-float v6, v5, v6

    .line 598
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    sget v11, Lcjj;->e:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v6, v6, v10

    if-lez v6, :cond_7

    int-to-float v6, v1

    sub-float v6, v0, v6

    .line 599
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->l:I

    sget v11, Lcjj;->e:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_a

    :cond_7
    move v6, v8

    .line 597
    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 571
    .end local v0    # "bottom":F
    .end local v1    # "currentPosition":I
    .end local v5    # "top":F
    :cond_8
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_3

    .line 572
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->u:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->x:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 586
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    sget v6, Laow$b;->calendar_day_events_view_current_time_divider_margin_left_hour_12:I

    goto/16 :goto_2

    .end local v4    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v0    # "bottom":F
    .restart local v1    # "currentPosition":I
    .restart local v5    # "top":F
    :cond_a
    move v6, v7

    .line 599
    goto :goto_3

    .line 603
    .end local v0    # "bottom":F
    .end local v1    # "currentPosition":I
    .end local v5    # "top":F
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->y:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getDiurnalViewHeight()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    mul-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getDividerMarginLeft()I
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->S:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->p:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->o:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    return-wide v0
.end method

.method private h()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 995
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v6, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v6, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v6, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v5, v6, :cond_1

    .line 998
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 999
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v5}, Laxm;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v6}, Laxm;->getDraggingAnchorRadius()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    sub-int v4, v5, v6

    .line 1005
    .local v4, "y":I
    int-to-float v5, v4

    invoke-direct {p0, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(F)J

    move-result-wide v2

    .line 1006
    .local v2, "startTimeMillis":J
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v5}, Laxm;->getShowHeight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v6}, Laxm;->getDraggingAnchorRadius()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(F)J

    move-result-wide v0

    .line 1007
    .local v0, "endTimeMillis":J
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1008
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v6}, Laxm;->getShowHeight()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v7}, Laxm;->getDraggingAnchorRadius()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1009
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->F:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->G:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lavl;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    return-void
.end method

.method private setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V
    .locals 2
    .param p1, "mode"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 866
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$6;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 900
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 901
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxm;->setShowDraggingAnchors(Z)V

    .line 903
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->a()V

    .line 904
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h()V

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 868
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    goto :goto_0

    .line 871
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 872
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    invoke-interface {v1}, Laxn;->canModifyStartOrEndTimeIndividually()Z

    move-result v1

    invoke-virtual {v0, v1}, Laxm;->setShowDraggingAnchors(Z)V

    .line 874
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->a()V

    .line 875
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h()V

    goto :goto_0

    .line 879
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 880
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    invoke-interface {v1}, Laxn;->canModifyStartOrEndTimeIndividually()Z

    move-result v1

    invoke-virtual {v0, v1}, Laxm;->setShowDraggingAnchors(Z)V

    .line 881
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->a()V

    .line 882
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    .line 883
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getShowHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->M:I

    goto :goto_0

    .line 886
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 887
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    .line 888
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getShowHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->M:I

    goto/16 :goto_0

    .line 891
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 892
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    .line 893
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getShowHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->M:I

    goto/16 :goto_0

    .line 896
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    goto/16 :goto_0

    .line 866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method a(J)I
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 1069
    long-to-float v0, p1

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Z)V
    .locals 10
    .param p1, "dealEvent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x4

    const/4 v9, 0x1

    .line 932
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    .line 933
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 936
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->setCanScroll(Z)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->setCanScroll(Z)V

    .line 943
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    if-eqz v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(F)J

    move-result-wide v2

    .line 945
    .local v2, "startTimeMillis":J
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v0}, Laxm;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getShowHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v1}, Laxm;->getDraggingAnchorRadius()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(F)J

    move-result-wide v4

    .line 946
    .local v4, "endTimeMillis":J
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    instance-of v0, v0, Lart;

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->W:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->W:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;->a(JJ)V

    .line 970
    .end local v2    # "startTimeMillis":J
    .end local v4    # "endTimeMillis":J
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    .line 971
    invoke-direct {p0, v9}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Z)V

    .line 972
    return-void

    .line 950
    .restart local v2    # "startTimeMillis":J
    .restart local v4    # "endTimeMillis":J
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    invoke-interface {v0}, Laxn;->getDayEventDelegate()Laxn$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    invoke-interface {v0}, Laxn;->getDayEventDelegate()Laxn$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lavk;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    new-instance v6, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$5;

    invoke-direct {v6, p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$5;-><init>(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    .line 967
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lavk;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v8

    .line 954
    invoke-static {v6, v7, v8}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    .line 951
    invoke-interface/range {v0 .. v6}, Laxn$a;->a(Landroid/app/Activity;JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 466
    iget v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a:F

    invoke-static {}, Larg;->a()Larg;

    move-result-object v6

    .line 5044
    iget v6, v6, Larg;->a:F

    .line 466
    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 494
    :goto_0
    return-void

    .line 470
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v5, 0x18

    if-ge v3, v5, :cond_1

    .line 471
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->A:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    iget v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    mul-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 472
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->B:[Landroid/view/View;

    aget-object v5, v5, v3

    iget v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->f()V

    .line 476
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    .line 478
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxm;

    .line 479
    .local v0, "calendarDiurnalEventView":Laxm;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Laxm;->getEvent()Laxn;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 483
    invoke-virtual {v0}, Laxm;->getEvent()Laxn;

    move-result-object v1

    .line 484
    .local v1, "event":Laxn;
    invoke-virtual {v0}, Laxm;->getViewEvent()Larw;

    move-result-object v6

    invoke-virtual {v6}, Larw;->a()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v6

    invoke-virtual {v0}, Laxm;->getDraggingAnchorRadius()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 485
    .local v2, "height":I
    invoke-virtual {v0}, Laxm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 487
    invoke-virtual {v0, v4}, Laxm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    invoke-virtual {v0, v2}, Laxm;->setShowHeight(I)V

    .line 489
    iget v6, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->m:I

    invoke-interface {v1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Laxm;->getDraggingAnchorRadius()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Laxm;->setTranslationY(F)V

    .line 490
    invoke-virtual {v0}, Laxm;->a()V

    goto :goto_2

    .line 493
    .end local v0    # "calendarDiurnalEventView":Laxm;
    .end local v1    # "event":Laxn;
    .end local v2    # "height":I
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-static {}, Larg;->a()Larg;

    move-result-object v5

    .line 6044
    iget v5, v5, Larg;->a:F

    .line 493
    iput v5, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a:F

    goto/16 :goto_0
.end method

.method c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 837
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->i:I

    int-to-float v0, v0

    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    .line 17044
    iget v1, v1, Larg;->a:F

    .line 837
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    .line 838
    return-void
.end method

.method public final getFirstEventBottom()F
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDiurnalViewHeight()I

    move-result v4

    int-to-float v3, v4

    .line 220
    .local v3, "result":F
    iget-object v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxm;

    .line 221
    .local v1, "calendarDiurnalEventView":Laxm;
    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1}, Laxm;->getEvent()Laxn;

    move-result-object v2

    .line 225
    .local v2, "event":Laxn;
    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v2}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v5

    int-to-float v0, v5

    .line 229
    .local v0, "bottom":F
    cmpg-float v5, v0, v3

    if-gez v5, :cond_0

    .line 230
    move v3, v0

    goto :goto_0

    .line 233
    .end local v0    # "bottom":F
    .end local v1    # "calendarDiurnalEventView":Laxm;
    .end local v2    # "event":Laxn;
    :cond_1
    return v3
.end method

.method public final getLastEventTop()F
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, "result":F
    iget-object v4, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxm;

    .line 239
    .local v0, "calendarDiurnalEventView":Laxm;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Laxm;->getEvent()Laxn;

    move-result-object v1

    .line 243
    .local v1, "event":Laxn;
    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v5

    int-to-float v3, v5

    .line 247
    .local v3, "top":F
    cmpl-float v5, v3, v2

    if-lez v5, :cond_0

    .line 248
    move v2, v3

    goto :goto_0

    .line 251
    .end local v0    # "calendarDiurnalEventView":Laxm;
    .end local v1    # "event":Laxn;
    .end local v3    # "top":F
    :cond_1
    return v2
.end method

.method public final getRefreshTimeRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ac:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 680
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v0, v1, :cond_0

    .line 681
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->getDiurnalViewHeight()I

    move-result v0

    .line 196
    .local v0, "calendarHeight":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 197
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 688
    .line 11465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    .line 688
    packed-switch v12, :pswitch_data_0

    .line 821
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v12, 0x1

    return v12

    .line 690
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->I:F

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->K:J

    .line 693
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_4

    .line 11841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    .line 11842
    invoke-interface {v12}, Laxn;->canModifyStartOrEndTimeIndividually()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 11843
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v14}, Laxm;->getDraggingAnchorRadius()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->q:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 11844
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v14}, Laxm;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->r:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->q:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 11845
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 11848
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->H:Laxn;

    .line 11849
    invoke-interface {v12}, Laxn;->canModifyStartOrEndTimeIndividually()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 11850
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v14}, Laxm;->getShowHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v14}, Laxm;->getDraggingAnchorRadius()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->q:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 11851
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->r:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->q:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 11852
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 11855
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getX()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 11856
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v14}, Laxm;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 11857
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getY()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 11858
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v14}, Laxm;->getShowHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 11859
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 11861
    :cond_3
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 695
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_0

    .line 696
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    const-wide/16 v14, 0x15e

    invoke-virtual {v12, v13, v14, v15}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 700
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_6

    .line 701
    invoke-static {}, Larg;->a()Larg;

    move-result-object v12

    .line 12044
    iget v12, v12, Larg;->a:F

    .line 701
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->N:F

    .line 703
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Landroid/view/MotionEvent;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->O:F

    .line 704
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v12}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->getScrollY()I

    move-result v12

    :goto_1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->P:I

    .line 705
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Landroid/view/MotionEvent;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->Q:F

    .line 706
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Landroid/view/MotionEvent;)F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(F)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->R:J

    .line 707
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    .line 12975
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    if-eqz v12, :cond_5

    .line 12976
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->setCanScroll(Z)V

    .line 12978
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v12, :cond_6

    .line 12979
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->setCanScroll(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_6
    :goto_2
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 704
    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .line 709
    :catch_0
    move-exception v5

    .line 711
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 717
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_a

    .line 718
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c(F)I

    move-result v4

    .line 719
    .local v4, "dragRoundY":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->M:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    sub-int v11, v12, v13

    .line 720
    .local v11, "top":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->M:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    add-int v2, v12, v13

    .line 721
    .local v2, "bottom":I
    sub-int v12, v11, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    int-to-float v14, v14

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int/2addr v13, v14

    if-le v12, v13, :cond_9

    int-to-float v12, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    .line 722
    invoke-virtual {v13}, Laxm;->getTranslationY()F

    move-result v13

    cmpl-float v12, v12, v13

    if-nez v12, :cond_8

    sub-int v12, v2, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    .line 723
    invoke-virtual {v13}, Laxm;->getShowHeight()I

    move-result v13

    if-eq v12, v13, :cond_9

    .line 13033
    :cond_8
    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Lawk;->a(J)V

    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    sub-int v13, v2, v11

    invoke-virtual {v12, v13}, Laxm;->setShowHeight(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    int-to-float v13, v11

    invoke-virtual {v12, v13}, Laxm;->setTranslationY(F)V

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12}, Laxm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 728
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    sub-int v12, v2, v11

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12, v8}, Laxm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12}, Laxm;->a()V

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h()V

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(F)V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    .line 735
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 736
    .end local v2    # "bottom":I
    .end local v4    # "dragRoundY":I
    .end local v11    # "top":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_d

    .line 737
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->M:I

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c(F)I

    move-result v4

    .line 738
    .restart local v4    # "dragRoundY":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    sub-int v11, v12, v13

    .line 739
    .restart local v11    # "top":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    add-int v2, v12, v13

    .line 740
    .restart local v2    # "bottom":I
    sub-int v12, v11, v2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->j:I

    int-to-float v14, v14

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int/2addr v13, v14

    if-le v12, v13, :cond_c

    int-to-float v12, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    .line 741
    invoke-virtual {v13}, Laxm;->getTranslationY()F

    move-result v13

    cmpl-float v12, v12, v13

    if-nez v12, :cond_b

    sub-int v12, v2, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    .line 742
    invoke-virtual {v13}, Laxm;->getShowHeight()I

    move-result v13

    if-eq v12, v13, :cond_c

    .line 14033
    :cond_b
    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Lawk;->a(J)V

    .line 744
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    sub-int v13, v2, v11

    invoke-virtual {v12, v13}, Laxm;->setShowHeight(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    int-to-float v13, v11

    invoke-virtual {v12, v13}, Laxm;->setTranslationY(F)V

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12}, Laxm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 747
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    sub-int v12, v2, v11

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12, v8}, Laxm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12}, Laxm;->a()V

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h()V

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(F)V

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    .line 754
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 755
    .end local v2    # "bottom":I
    .end local v4    # "dragRoundY":I
    .end local v11    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_f

    .line 756
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->L:I

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c(F)I

    move-result v4

    .line 757
    .restart local v4    # "dragRoundY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v12}, Laxm;->getDraggingAnchorRadius()I

    move-result v12

    sub-int v12, v4, v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getTranslationY()F

    move-result v13

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_e

    .line 15033
    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Lawk;->a(J)V

    .line 759
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->E:Laxm;

    invoke-virtual {v13}, Laxm;->getDraggingAnchorRadius()I

    move-result v13

    sub-int v13, v4, v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Laxm;->setTranslationY(F)V

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->h()V

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(F)V

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->g()V

    .line 764
    :cond_e
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 765
    .end local v4    # "dragRoundY":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_15

    .line 766
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Landroid/view/MotionEvent;)F

    move-result v6

    .line 767
    .local v6, "fingerDistance":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->O:F

    div-float v12, v6, v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v9, v12

    .line 15825
    .local v9, "ratio":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->N:F

    mul-float/2addr v12, v9

    .line 15826
    const/high16 v13, 0x40000000    # 2.0f

    cmpl-float v13, v12, v13

    if-lez v13, :cond_10

    .line 15827
    const/high16 v12, 0x40000000    # 2.0f

    .line 15829
    :cond_10
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v12, v13

    if-gez v13, :cond_11

    .line 15830
    const/high16 v12, 0x3f800000    # 1.0f

    .line 15833
    :cond_11
    invoke-static {}, Larg;->a()Larg;

    move-result-object v13

    .line 16050
    iget v14, v13, Larg;->a:F

    invoke-static {v12, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-nez v14, :cond_13

    .line 16051
    const/4 v12, 0x0

    .line 768
    :goto_3
    if-eqz v12, :cond_0

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c()V

    .line 770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v12, :cond_12

    .line 771
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->R:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->d:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(J)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->Q:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->P:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 772
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-virtual {v12, v10}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->setScrollY(I)V

    .line 774
    .end local v10    # "scrollY":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b()V

    .line 775
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 16054
    :cond_13
    iget v14, v13, Larg;->a:F

    cmpl-float v14, v12, v14

    if-lez v14, :cond_14

    .line 16188
    const-string/jumbo v14, "ding_calendar_oneday_zoomin"

    invoke-static {v14}, Lavw;->c(Ljava/lang/String;)V

    .line 16062
    :goto_4
    iput v12, v13, Larg;->a:F

    .line 16063
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    iget-object v14, v13, Larg;->b:Ljava/lang/Runnable;

    invoke-virtual {v12, v14}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16064
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    iget-object v13, v13, Larg;->b:Ljava/lang/Runnable;

    const-wide/16 v14, 0x3e8

    invoke-virtual {v12, v13, v14, v15}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16066
    const/4 v12, 0x1

    goto :goto_3

    .line 16192
    :cond_14
    const-string/jumbo v14, "ding_calendar_oneday_zoomout"

    invoke-static {v14}, Lavw;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 778
    .end local v6    # "fingerDistance":F
    .end local v9    # "ratio":F
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->I:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->D:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-gez v12, :cond_16

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->D:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_0

    .line 780
    :cond_16
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 785
    :pswitch_4
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_0

    .line 787
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    .line 16984
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    if-eqz v12, :cond_17

    .line 16985
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;->setCanScroll(Z)V

    .line 16987
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v12, :cond_18

    .line 16988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->setCanScroll(Z)V

    .line 16990
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->requestLayout()V

    .line 16991
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->b(Z)V

    goto/16 :goto_0

    .line 793
    :pswitch_5
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->ab:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_19

    .line 795
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 796
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_1a

    .line 797
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 798
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_1c

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->K:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x64

    cmp-long v12, v12, v14

    if-gez v12, :cond_1b

    .line 800
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Z)V

    goto/16 :goto_0

    .line 802
    :cond_1b
    sget-object v12, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->setMODE(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;)V

    goto/16 :goto_0

    .line 804
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_1d

    .line 805
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->a(Z)V

    goto/16 :goto_0

    .line 806
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->e:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v13, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    if-ne v12, v13, :cond_0

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->I:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->D:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->J:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->D:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->K:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x64

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "i":I
    :goto_5
    if-ltz v7, :cond_0

    .line 811
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->C:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laxm;

    .line 812
    .local v3, "dayEventView":Laxm;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 17028
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v14

    .line 17029
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v15

    .line 17030
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v14

    .line 17031
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v15

    .line 17032
    const/16 v18, 0x0

    sub-float v15, v15, v18

    cmpl-float v15, v13, v15

    if-ltz v15, :cond_1e

    const/4 v15, 0x0

    add-float v15, v15, v17

    cmpg-float v13, v13, v15

    if-gtz v13, :cond_1e

    const/4 v13, 0x0

    sub-float v13, v14, v13

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_1e

    const/4 v13, 0x0

    add-float v13, v13, v16

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1e

    const/4 v12, 0x1

    .line 812
    :goto_6
    if-eqz v12, :cond_1f

    .line 813
    invoke-virtual {v3}, Laxm;->b()V

    goto/16 :goto_0

    .line 17032
    :cond_1e
    const/4 v12, 0x0

    goto :goto_6

    .line 810
    :cond_1f
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final setOnHour12Or24ChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;)V
    .locals 0
    .param p1, "onHour12Or24ChangeListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->V:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$a;

    .line 377
    return-void
.end method

.method public final setOnRequestCreateListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;)V
    .locals 0
    .param p1, "onRequestCreateListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->W:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$b;

    .line 381
    return-void
.end method

.method public final setOnShowViewChangeListener(Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;)V
    .locals 0
    .param p1, "onShowViewChangeListener"    # Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->U:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$c;

    .line 373
    return-void
.end method

.method public final setScrollControlScrollView(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;)V
    .locals 2
    .param p1, "scrollControlScrollView"    # Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->c:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->aa:Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/widget/ScrollControlScrollView;->setOnScrollViewChangerListener(Lcom/alibaba/android/calendar/widget/ScrollControlScrollView$a;)V

    .line 263
    :cond_0
    return-void
.end method

.method public final setScrollControlViewPager(Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;)V
    .locals 0
    .param p1, "scrollControlViewPager"    # Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;->t:Lcom/alibaba/android/calendar/widget/ScrollControlViewPager;

    .line 256
    return-void
.end method
