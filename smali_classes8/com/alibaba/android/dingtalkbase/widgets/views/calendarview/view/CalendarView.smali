.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
.super Landroid/view/ViewGroup;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:Lcsp;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Lcsh;

.field private i:Lcsb;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private k:Z

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/support/v4/view/ViewPager$d;

.field private v:Lcsr;

.field private w:Lcss;

.field private x:Lcst;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/16 v7, -0xa

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a:I

    .line 72
    new-instance v7, Lcsl;

    invoke-direct {v7}, Lcsl;-><init>()V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b:Lcsp;

    .line 92
    const/16 v7, -0xa

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    .line 93
    const/16 v7, -0xa

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    .line 94
    const/4 v7, 0x1

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    .line 95
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->r:Z

    .line 99
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->t:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->u:Landroid/support/v4/view/ViewPager$d;

    .line 141
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_7

    .line 143
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setClipToPadding(Z)V

    .line 144
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setClipChildren(Z)V

    .line 151
    :goto_0
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c:Landroid/widget/TextView;

    .line 152
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c:Landroid/widget/TextView;

    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$3;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v7, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 162
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcig$j;->dt_ding_calendar_pre_month:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v7, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 166
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcig$j;->dt_ding_calendar_next_month:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v7, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    .line 171
    new-instance v7, Lcsh;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c:Landroid/widget/TextView;

    invoke-direct {v7, v8}, Lcsh;-><init>(Landroid/widget/TextView;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    .line 172
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b:Lcsp;

    .line 1048
    iput-object v8, v7, Lcsh;->g:Lcsp;

    .line 174
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->u:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 175
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    const/4 v8, 0x0

    new-instance v9, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$4;

    invoke-direct {v9, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$e;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget-object v8, Lcig$l;->CalendarView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p2, v8, v9, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 185
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v7, Lcig$l;->CalendarView_mcv_firstDayOfWeek:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    .line 186
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    sget v8, Lcig$l;->CalendarView_mcv_titleAnimationOrientation:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 1052
    iput v8, v7, Lcsh;->d:I

    .line 188
    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    if-gez v7, :cond_0

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    .line 1959
    iput v8, v7, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->a:I

    .line 195
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->a()V

    .line 197
    sget v7, Lcig$l;->CalendarView_mcv_tileSize:I

    const/16 v8, -0xa

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    .line 198
    .local v5, "tileSize":I
    const/16 v7, -0xa

    if-le v5, v7, :cond_1

    .line 199
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTileSize(I)V

    .line 202
    :cond_1
    sget v7, Lcig$l;->CalendarView_mcv_tileWidth:I

    const/16 v8, -0xa

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 203
    .local v6, "tileWidth":I
    const/16 v7, -0xa

    if-le v6, v7, :cond_2

    .line 204
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTileWidth(I)V

    .line 207
    :cond_2
    sget v7, Lcig$l;->CalendarView_mcv_tileHeight:I

    const/16 v8, -0xa

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    .line 208
    .local v4, "tileHeight":I
    const/16 v7, -0xa

    if-le v4, v7, :cond_3

    .line 209
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTileHeight(I)V

    .line 212
    :cond_3
    sget v7, Lcig$l;->CalendarView_mcv_arrowColor:I

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setArrowColor(I)V

    .line 214
    sget v8, Lcig$l;->CalendarView_mcv_selectionColor:I

    .line 2779
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v7, v9, :cond_8

    const v7, 0x1010435

    .line 2782
    :goto_1
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 2783
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v7, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2784
    iget v7, v9, Landroid/util/TypedValue;->data:I

    .line 214
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setSelectionColor(I)V

    .line 216
    sget v7, Lcig$l;->CalendarView_mcv_weekDayLabels:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 217
    .local v1, "array":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 218
    new-instance v7, Lcsi;

    invoke-direct {v7, v1}, Lcsi;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setWeekDayFormatter(Lcsq;)V

    .line 221
    :cond_4
    sget v7, Lcig$l;->CalendarView_mcv_monthLabels:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_5

    .line 223
    new-instance v7, Lcso;

    invoke-direct {v7, v1}, Lcso;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTitleFormatter(Lcsp;)V

    .line 226
    :cond_5
    sget v7, Lcig$l;->CalendarView_mcv_headerTextAppearance:I

    sget v8, Lcig$k;->TextAppearance_MaterialCalendarWidget_Header:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setHeaderTextAppearance(I)V

    .line 230
    sget v7, Lcig$l;->CalendarView_mcv_weekDayTextAppearance:I

    sget v8, Lcig$k;->TextAppearance_MaterialCalendarWidget_WeekDay:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setWeekDayTextAppearance(I)V

    .line 234
    sget v7, Lcig$l;->CalendarView_mcv_dateTextAppearance:I

    sget v8, Lcig$k;->TextAppearance_MaterialCalendarWidget_Date:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setDateTextAppearance(I)V

    .line 238
    sget v7, Lcig$l;->CalendarView_mcv_showOtherDates:I

    const/4 v8, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setShowOtherDates(I)V

    .line 242
    sget v7, Lcig$l;->CalendarView_mcv_allowClickDaysOutsideCurrentMonth:I

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->r:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    .end local v1    # "array":[Ljava/lang/CharSequence;
    .end local v4    # "tileHeight":I
    .end local v5    # "tileSize":I
    .end local v6    # "tileWidth":I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b:Lcsp;

    .line 3203
    iput-object v8, v7, Lcsb;->e:Lcsp;

    .line 3482
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    .line 3483
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3484
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 3485
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 3486
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3487
    sget v8, Lcjj;->i:I

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3488
    sget v8, Lcjj;->i:I

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3489
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3491
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3492
    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3493
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setGravity(I)V

    .line 3494
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcig$d;->dp16:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 3495
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$c;->color_gray_selector:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3496
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3498
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3499
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x40400000    # 3.0f

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3501
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3502
    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3503
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setGravity(I)V

    .line 3504
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcig$d;->dp16:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 3505
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcig$c;->color_gray_selector:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3506
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3508
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    sget v8, Lcig$f;->mcv_pager:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 3509
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 3510
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, -0x1

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->today()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 253
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setCurrentDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 256
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->removeView(Landroid/view/View;)V

    .line 257
    new-instance v3, Lcsv;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iget v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    invoke-direct {v3, p0, v7, v8}, Lcsv;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;I)V

    .line 258
    .local v3, "monthView":Lcsv;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getSelectionColor()I

    move-result v7

    invoke-virtual {v3, v7}, Lcsv;->setSelectionColor(I)V

    .line 259
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v7}, Lcsb;->b()I

    move-result v7

    invoke-virtual {v3, v7}, Lcsv;->setDateTextAppearance(I)V

    .line 260
    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v7}, Lcsb;->c()I

    move-result v7

    invoke-virtual {v3, v7}, Lcsv;->setWeekDayTextAppearance(I)V

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getShowOtherDates()I

    move-result v7

    invoke-virtual {v3, v7}, Lcsv;->setShowDefaults(I)V

    .line 262
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .end local v3    # "monthView":Lcsv;
    :cond_6
    return-void

    .line 147
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_7
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setClipChildren(Z)V

    .line 148
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setClipToPadding(Z)V

    goto/16 :goto_0

    .line 2781
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "tileHeight":I
    .restart local v5    # "tileSize":I
    .restart local v6    # "tileWidth":I
    :cond_8
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "colorAccent"

    const-string/jumbo v10, "attr"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto/16 :goto_1

    .line 243
    .end local v4    # "tileHeight":I
    .end local v5    # "tileSize":I
    .end local v6    # "tileWidth":I
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v7
.end method

.method private static a(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "spec"    # I

    .prologue
    .line 918
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 919
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 920
    .local v1, "specSize":I
    sparse-switch v0, :sswitch_data_0

    move v1, p0

    .line 927
    .end local v1    # "specSize":I
    :goto_0
    :sswitch_0
    return v1

    .line 924
    .restart local v1    # "specSize":I
    :sswitch_1
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 920
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 6
    .param p1, "firstDay"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .param p2, "lastDay"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 808
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v2, "days":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 811
    .local v0, "counter":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 813
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 814
    .local v3, "end":Ljava/util/Calendar;
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 816
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 817
    :cond_0
    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(Ljava/util/Calendar;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v1

    .line 818
    .local v1, "current":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v4, v1, v5}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    .line 819
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 826
    .end local v1    # "current":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V
    .locals 2
    .param p1, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 688
    if-nez p1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;

    .prologue
    const/4 v4, 0x0

    .line 47
    .line 13980
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    .line 13981
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 13982
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 13985
    new-instance v0, Lcsb;

    invoke-direct {v0, p0}, Lcsb;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    .line 13986
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    if-nez v1, :cond_1

    .line 13988
    :goto_0
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 13989
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 13990
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 14767
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 14768
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v3, v0, v1}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 14769
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 14770
    if-eqz v0, :cond_0

    .line 14771
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 14773
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v0, v2}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I

    move-result v0

    .line 14774
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 14775
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b()V

    .line 13993
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13995
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 15327
    iget-object v0, v0, Lcsb;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13996
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 16327
    iget-object v0, v0, Lcsb;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13997
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 13995
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setCurrentDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 13999
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a()V

    .line 14000
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b()V

    .line 47
    return-void

    .line 13986
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 14165
    iget-object v2, v1, Lcsb;->e:Lcsp;

    iput-object v2, v0, Lcsb;->e:Lcsp;

    .line 14166
    iget-object v2, v1, Lcsb;->h:Ljava/lang/Integer;

    iput-object v2, v0, Lcsb;->h:Ljava/lang/Integer;

    .line 14167
    iget-object v2, v1, Lcsb;->i:Ljava/lang/Integer;

    iput-object v2, v0, Lcsb;->i:Ljava/lang/Integer;

    .line 14168
    iget-object v2, v1, Lcsb;->j:Ljava/lang/Integer;

    iput-object v2, v0, Lcsb;->j:Ljava/lang/Integer;

    .line 14169
    iget v2, v1, Lcsb;->o:I

    iput v2, v0, Lcsb;->o:I

    .line 14170
    iget-object v2, v1, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v2, v0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 14171
    iget-object v2, v1, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v2, v0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 14172
    iget-object v2, v1, Lcsb;->k:Ljava/util/List;

    iput-object v2, v0, Lcsb;->k:Ljava/util/List;

    .line 14173
    iget-object v2, v1, Lcsb;->f:Lcsq;

    iput-object v2, v0, Lcsb;->f:Lcsq;

    .line 14174
    iget-object v2, v1, Lcsb;->g:Lcsm;

    iput-object v2, v0, Lcsb;->g:Lcsm;

    .line 14175
    iget-object v2, v1, Lcsb;->l:Ljava/util/List;

    iput-object v2, v0, Lcsb;->l:Ljava/util/List;

    .line 14176
    iget-object v2, v1, Lcsb;->m:Ljava/util/List;

    iput-object v2, v0, Lcsb;->m:Ljava/util/List;

    .line 14177
    iget-boolean v1, v1, Lcsb;->n:Z

    iput-boolean v1, v0, Lcsb;->n:Z

    goto/16 :goto_0

    .line 14771
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    goto/16 :goto_1

    .line 13998
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->today()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I

    .prologue
    .line 894
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 4064
    if-eqz v1, :cond_3

    .line 4068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4070
    iget-object v4, v0, Lcsh;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v0, Lcsh;->e:J

    sub-long v4, v2, v4

    iget v6, v0, Lcsh;->b:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 4071
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcsh;->a(JLcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    .line 4074
    :cond_1
    iget-object v4, v0, Lcsh;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcsh;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 4075
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v4

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcsh;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 4076
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 4080
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcsh;->a(JLcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setEnabled(Z)V

    .line 517
    return-void
.end method

.method public static b(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I

    .prologue
    .line 898
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v1}, Lcsb;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I

    .prologue
    .line 902
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcsh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    return-object v0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 674
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v1}, Lcsb;->a()V

    .line 675
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method private f()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;
    .locals 1

    .prologue
    .line 933
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)Lcsb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b()V

    return-void
.end method

.method private getWeekCountBasedOnMode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x5

    .line 907
    const/4 v1, 0x6

    .line 908
    .local v1, "weekCount":I
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcsb;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 910
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 911
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 912
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 914
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    add-int/lit8 v2, v1, 0x1

    return v2
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 796
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 8151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcsb;->m:Ljava/util/List;

    .line 8152
    iget-object v0, v1, Lcsb;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsd;

    .line 8153
    new-instance v3, Lcse;

    invoke-direct {v3}, Lcse;-><init>()V

    .line 9049
    iget-boolean v4, v3, Lcse;->d:Z

    .line 8155
    if-eqz v4, :cond_0

    .line 8156
    iget-object v4, v1, Lcsb;->m:Ljava/util/List;

    new-instance v5, Lcsf;

    invoke-direct {v5, v0, v3}, Lcsf;-><init>(Lcsd;Lcse;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8159
    :cond_1
    iget-object v0, v1, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 8160
    iget-object v3, v1, Lcsb;->m:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcsv;->setDayViewDecorators(Ljava/util/Collection;)V

    goto :goto_1

    .line 797
    :cond_2
    return-void
.end method

.method public final a(Lcsu;)V
    .locals 10
    .param p1, "dayView"    # Lcsu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 872
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getCurrentDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    .line 9168
    .local v0, "currentDate":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    iget-object v2, p1, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 874
    .local v2, "selectedDate":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v1

    .line 875
    .local v1, "currentMonth":I
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v3

    .line 877
    .local v3, "selectedMonth":I
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->r:Z

    if-eqz v4, :cond_0

    if-eq v1, v3, :cond_0

    .line 879
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9560
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9561
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 10168
    :cond_0
    :goto_0
    iget-object v5, p1, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 885
    invoke-virtual {p1}, Lcsu;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 10836
    :goto_1
    iget v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    packed-switch v8, :pswitch_data_0

    .line 10863
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v4}, Lcsb;->a()V

    .line 10864
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v4, v5, v6}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    .line 10859
    :goto_2
    return-void

    .line 881
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isBefore(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9566
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9567
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    move v4, v7

    .line 885
    goto :goto_1

    .line 10838
    :pswitch_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v6, v5, v4}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    goto :goto_2

    .line 10843
    :pswitch_1
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v8, v5, v4}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    .line 10844
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 11327
    iget-object v8, v8, Lcsb;->k:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 10844
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_3

    .line 10845
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v6}, Lcsb;->a()V

    .line 10846
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v6, v5, v4}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    goto :goto_2

    .line 10848
    :cond_3
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 12327
    iget-object v8, v8, Lcsb;->k:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 10848
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v9, :cond_5

    .line 10849
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 13327
    iget-object v4, v4, Lcsb;->k:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 10850
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10851
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    goto :goto_2

    .line 10853
    :cond_4
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    goto/16 :goto_2

    .line 10856
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v6, v5, v4}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    goto/16 :goto_2

    .line 10836
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 460
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 328
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 323
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 332
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 450
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 465
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCurrentDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 695
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcsb;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    return v0
.end method

.method public getMaximumDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    return-object v0
.end method

.method public getMinimumDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    return-object v0
.end method

.method public getSelectedDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 664
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 4327
    iget-object v1, v1, Lcsb;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 665
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    goto :goto_0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 5327
    iget-object v0, v0, Lcsb;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 669
    return-object v0
.end method

.method public getSelectionColor()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->n:I

    return v0
.end method

.method public getSelectionMode()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    return v0
.end method

.method public getShowOtherDates()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 6245
    iget v0, v0, Lcsb;->o:I

    .line 732
    return v0
.end method

.method public getTileHeight()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    return v0
.end method

.method public getTitleAnimationOrientation()I
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    .line 8056
    iget v0, v0, Lcsh;->d:I

    .line 753
    return v0
.end method

.method public getTopBarVisible()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 472
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 478
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getChildCount()I

    move-result v3

    .line 425
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingLeft()I

    move-result v7

    .line 426
    .local v7, "parentLeft":I
    sub-int v10, p4, p2

    sub-int/2addr v10, v7

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingRight()I

    move-result v11

    sub-int v8, v10, v11

    .line 428
    .local v8, "parentWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingTop()I

    move-result v2

    .line 430
    .local v2, "childTop":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 431
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 437
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 439
    .local v5, "height":I
    sub-int v10, v8, v9

    div-int/lit8 v4, v10, 0x2

    .line 440
    .local v4, "delta":I
    add-int v1, v7, v4

    .line 442
    .local v1, "childLeft":I
    add-int v10, v1, v9

    add-int v11, v2, v5

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 444
    add-int/2addr v2, v5

    .line 430
    .end local v1    # "childLeft":I
    .end local v4    # "delta":I
    .end local v5    # "height":I
    .end local v9    # "width":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 337
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 338
    .local v21, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 339
    .local v20, "specWidthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 340
    .local v19, "specHeightSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 343
    .local v18, "specHeightMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v21, v24

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingRight()I

    move-result v25

    sub-int v10, v24, v25

    .line 344
    .local v10, "desiredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingTop()I

    move-result v24

    sub-int v24, v19, v24

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingBottom()I

    move-result v25

    sub-int v7, v24, v25

    .line 346
    .local v7, "desiredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getWeekCountBasedOnMode()I

    move-result v23

    .line 348
    .local v23, "weekCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getTopBarVisible()Z

    move-result v24

    if-eqz v24, :cond_3

    add-int/lit8 v22, v23, 0x1

    .line 351
    .local v22, "viewTileHeight":I
    :goto_0
    div-int/lit8 v9, v10, 0x7

    .line 352
    .local v9, "desiredTileWidth":I
    div-int v8, v7, v22

    .line 354
    .local v8, "desiredTileHeight":I
    const/4 v13, -0x1

    .line 355
    .local v13, "measureTileSize":I
    const/4 v14, -0x1

    .line 356
    .local v14, "measureTileWidth":I
    const/4 v12, -0x1

    .line 358
    .local v12, "measureTileHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    move/from16 v24, v0

    const/16 v25, -0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    move/from16 v24, v0

    const/16 v25, -0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 359
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    .line 360
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    move/from16 v24, v0

    if-lez v24, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    .line 370
    :cond_1
    :goto_2
    if-lez v13, :cond_9

    .line 372
    move v12, v13

    .line 373
    move v14, v13

    .line 386
    :cond_2
    :goto_3
    mul-int/lit8 v16, v14, 0x7

    .line 387
    .local v16, "measuredWidth":I
    mul-int v15, v12, v22

    .line 390
    .local v15, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getPaddingBottom()I

    move-result v25

    add-int v24, v24, v25

    add-int v15, v15, v24

    .line 396
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(II)I

    move-result v24

    .line 397
    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(II)I

    move-result v25

    .line 394
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setMeasuredDimension(II)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getChildCount()I

    move-result v6

    .line 402
    .local v6, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_b

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 405
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 407
    .local v17, "p":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v24, v14, 0x7

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 412
    .local v5, "childWidthMeasureSpec":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    mul-int v24, v24, v12

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 417
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 402
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeightMeasureSpec":I
    .end local v5    # "childWidthMeasureSpec":I
    .end local v6    # "count":I
    .end local v8    # "desiredTileHeight":I
    .end local v9    # "desiredTileWidth":I
    .end local v11    # "i":I
    .end local v12    # "measureTileHeight":I
    .end local v13    # "measureTileSize":I
    .end local v14    # "measureTileWidth":I
    .end local v15    # "measuredHeight":I
    .end local v16    # "measuredWidth":I
    .end local v17    # "p":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "viewTileHeight":I
    :cond_3
    move/from16 v22, v23

    .line 348
    goto/16 :goto_0

    .restart local v8    # "desiredTileHeight":I
    .restart local v9    # "desiredTileWidth":I
    .restart local v12    # "measureTileHeight":I
    .restart local v13    # "measureTileSize":I
    .restart local v14    # "measureTileWidth":I
    .restart local v22    # "viewTileHeight":I
    :cond_4
    move v14, v9

    .line 359
    goto :goto_1

    :cond_5
    move v12, v8

    .line 360
    goto :goto_2

    .line 361
    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 362
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 363
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_5
    goto/16 :goto_2

    :cond_7
    move v13, v9

    goto :goto_5

    .line 365
    :cond_8
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 367
    move v13, v8

    goto/16 :goto_2

    .line 374
    :cond_9
    if-gtz v13, :cond_2

    .line 375
    if-gtz v14, :cond_a

    .line 377
    const/16 v24, 0x0

    const/high16 v25, 0x42300000    # 44.0f

    invoke-static/range {v24 .. v25}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    .line 379
    :cond_a
    if-gtz v12, :cond_2

    .line 381
    const/16 v24, 0x0

    const/high16 v25, 0x42300000    # 44.0f

    invoke-static/range {v24 .. v25}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    goto/16 :goto_3

    .line 419
    .restart local v6    # "count":I
    .restart local v11    # "i":I
    .restart local v15    # "measuredHeight":I
    .restart local v16    # "measuredWidth":I
    :cond_b
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 294
    move-object v1, p1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;

    .line 295
    .local v1, "ss":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 296
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;

    move-result-object v2

    iget v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mFirstDayOfWeek:I

    .line 3959
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->a:I

    .line 297
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mMinDate:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 3964
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 298
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mMaxDate:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 3969
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 300
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$b;->a()V

    .line 302
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mColor:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setSelectionColor(I)V

    .line 303
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mDateTextAppearance:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setDateTextAppearance(I)V

    .line 304
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mWeekDayTextAppearance:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setWeekDayTextAppearance(I)V

    .line 305
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mShowOtherDates:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setShowOtherDates(I)V

    .line 306
    iget-boolean v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mAllowClickDaysOutsideCurrentMonth:Z

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->r:Z

    .line 307
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e()V

    .line 308
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mSelectedDates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 309
    .local v0, "calendarDay":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    goto :goto_0

    .line 311
    .end local v0    # "calendarDay":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    :cond_0
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTitleAnimationOrientation(I)V

    .line 312
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mTileWidthPx:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTileWidth(I)V

    .line 313
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mTileHeightPx:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTileHeight(I)V

    .line 314
    iget-boolean v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mTopBarVisible:Z

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setTopBarVisible(Z)V

    .line 315
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mSelectionMode:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setSelectionMode(I)V

    .line 316
    iget-boolean v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mDynamicHeightEnabled:Z

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->k:Z

    .line 317
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mCurrentMonth:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setCurrentDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 318
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 273
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 274
    .local v0, "ss":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->n:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mColor:I

    .line 275
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v1}, Lcsb;->b()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mDateTextAppearance:I

    .line 276
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v1}, Lcsb;->c()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mWeekDayTextAppearance:I

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getShowOtherDates()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mShowOtherDates:I

    .line 3736
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->r:Z

    .line 278
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mAllowClickDaysOutsideCurrentMonth:Z

    .line 279
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mMinDate:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mMaxDate:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mSelectedDates:Ljava/util/List;

    .line 282
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->s:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mFirstDayOfWeek:I

    .line 283
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getTitleAnimationOrientation()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mOrientation:I

    .line 284
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mSelectionMode:I

    .line 285
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mTileWidthPx:I

    .line 286
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mTileHeightPx:I

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getTopBarVisible()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mTopBarVisible:Z

    .line 288
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView$SavedState;->mCurrentMonth:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 289
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAllowClickDaysOutsideCurrentMonth(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->r:Z

    .line 725
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 629
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 630
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 3
    .param p1, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 699
    .line 5703
    if-eqz p1, :cond_0

    .line 5706
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    invoke-virtual {v0, p1}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I

    move-result v0

    .line 5707
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->d:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 5708
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b()V

    .line 700
    :cond_0
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 2
    .param p1, "resourceId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 656
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 4214
    if-eqz p1, :cond_0

    .line 4217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcsb;->i:Ljava/lang/Integer;

    .line 4218
    iget-object v0, v0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 4219
    invoke-virtual {v0, p1}, Lcsv;->setDateTextAppearance(I)V

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method public setDynamicHeightEnabled(Z)V
    .locals 0
    .param p1, "useDynamicHeight"    # Z

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->k:Z

    .line 793
    return-void
.end method

.method public setHeaderTextAppearance(I)V
    .locals 2
    .param p1, "resourceId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 653
    return-void
.end method

.method public setLeftArrowText(I)V
    .locals 2
    .param p1, "textResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 634
    if-gtz p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 640
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method

.method public setOnDateSelectedListener(Lcsr;)V
    .locals 0
    .param p1, "onDateSelectedListener"    # Lcsr;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->v:Lcsr;

    .line 521
    return-void
.end method

.method public setOnMonthChangedListener(Lcss;)V
    .locals 0
    .param p1, "onMonthChangedListener"    # Lcss;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->w:Lcss;

    .line 525
    return-void
.end method

.method public setOnRangeSelectedListener(Lcst;)V
    .locals 0
    .param p1, "onRangeSelectedListener"    # Lcst;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->x:Lcst;

    .line 529
    return-void
.end method

.method public setRightArrowText(I)V
    .locals 2
    .param p1, "textResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 643
    if-gtz p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 649
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method

.method public setSelectedDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e()V

    .line 682
    if-eqz p1, :cond_0

    .line 683
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V

    .line 685
    :cond_0
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 2
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 612
    if-nez p1, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    const p1, -0x777778

    .line 619
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->n:I

    .line 620
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 4207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcsb;->h:Ljava/lang/Integer;

    .line 4208
    iget-object v0, v0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 4209
    invoke-virtual {v0, p1}, Lcsv;->setSelectionColor(I)V

    goto :goto_1

    .line 621
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->invalidate()V

    goto :goto_0
.end method

.method public setSelectionMode(I)V
    .locals 6
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 532
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    .line 533
    .local v1, "oldMode":I
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    .line 534
    packed-switch p1, :pswitch_data_0

    .line 550
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    .line 551
    if-eqz v1, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e()V

    .line 556
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->q:I

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 4196
    :cond_1
    iput-boolean v2, v3, Lcsb;->n:Z

    .line 4197
    iget-object v2, v3, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcsv;

    .line 4198
    iget-boolean v5, v3, Lcsb;->n:Z

    invoke-virtual {v2, v5}, Lcsv;->setSelectionEnabled(Z)V

    goto :goto_1

    .line 536
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e()V

    goto :goto_0

    .line 541
    :pswitch_2
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getSelectedDate()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->setSelectedDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    goto :goto_0

    .line 557
    .end local v0    # "dates":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;>;"
    :cond_3
    return-void

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowOtherDates(I)V
    .locals 2
    .param p1, "showOtherDates"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 6224
    iput p1, v0, Lcsb;->o:I

    .line 6225
    iget-object v0, v0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 6226
    invoke-virtual {v0, p1}, Lcsv;->setShowDefaults(I)V

    goto :goto_0

    .line 721
    :cond_0
    return-void
.end method

.method public setTileHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 586
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    .line 587
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->requestLayout()V

    .line 588
    return-void
.end method

.method public setTileSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    .line 577
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->o:I

    .line 578
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->requestLayout()V

    .line 579
    return-void
.end method

.method public setTileWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->p:I

    .line 596
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->requestLayout()V

    .line 597
    return-void
.end method

.method public setTitleAnimationOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    .line 8052
    iput p1, v0, Lcsh;->d:I

    .line 750
    return-void
.end method

.method public setTitleFormatter(Lcsp;)V
    .locals 1
    .param p1, "titleFormatter"    # Lcsp;

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    iget-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b:Lcsp;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->h:Lcsh;

    .line 7048
    iput-object p1, v0, Lcsh;->g:Lcsp;

    .line 744
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 7203
    iput-object p1, v0, Lcsb;->e:Lcsp;

    .line 745
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->b()V

    .line 746
    return-void
.end method

.method public setTopBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 757
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 758
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->requestLayout()V

    .line 759
    return-void

    .line 757
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWeekDayFormatter(Lcsq;)V
    .locals 2
    .param p1, "formatter"    # Lcsq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 728
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    if-nez p1, :cond_0

    sget-object p1, Lcsq;->a:Lcsq;

    .line 6231
    .end local p1    # "formatter":Lcsq;
    :cond_0
    iput-object p1, v0, Lcsb;->f:Lcsq;

    .line 6232
    iget-object v0, v0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 6233
    invoke-virtual {v0, p1}, Lcsv;->setWeekDayFormatter(Lcsq;)V

    goto :goto_0

    .line 729
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 2
    .param p1, "resourceId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->i:Lcsb;

    .line 4249
    if-eqz p1, :cond_0

    .line 4252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcsb;->j:Ljava/lang/Integer;

    .line 4253
    iget-object v0, v0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 4254
    invoke-virtual {v0, p1}, Lcsv;->setWeekDayTextAppearance(I)V

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method
