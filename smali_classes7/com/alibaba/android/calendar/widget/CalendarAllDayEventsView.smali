.class public Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;
.super Landroid/widget/ScrollView;
.source "CalendarAllDayEventsView.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->b:Ljava/util/List;

    .line 42
    sget v0, Laow$b;->calendar_all_day_events_view_padding_vertical:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->c:I

    .line 43
    sget v0, Laow$b;->calendar_all_day_events_view_max_height:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->d:I

    .line 44
    sget v0, Laow$b;->calendar_all_day_events_view_item_height:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->e:I

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->f:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->f:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->c:I

    iget v2, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->c:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 25
    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->e:I

    iget-object v3, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->c:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->d:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1085
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    .line 1087
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_0

    .line 1088
    new-instance v3, Larw;

    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v6}, Larw;-><init>(Laxn;FF)V

    .line 1089
    new-instance v0, Laxm;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Laxm;-><init>(Landroid/content/Context;Larw;)V

    .line 1090
    invoke-virtual {v0, v2}, Laxm;->setLeftPadding(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Laxm;->setRightPadding(I)V

    .line 1092
    sget v3, Laow$b;->calendar_all_day_events_view_anchor_radius:I

    invoke-static {v3}, Leda;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Laxm;->setDraggingAnchorRadius(I)V

    .line 1094
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->getWidth()I

    move-result v3

    .line 1095
    iget v4, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->e:I

    .line 1096
    invoke-virtual {v0, v4}, Laxm;->setShowHeight(I)V

    .line 1097
    iget-object v5, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1099
    new-instance v3, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView$2;-><init>(Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;Laxm;)V

    invoke-virtual {v0, v3}, Laxm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    invoke-virtual {v0}, Laxm;->a()V

    .line 1087
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllDayItemHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->e:I

    return v0
.end method

.method public getAllDayMaxHeight()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->d:I

    return v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/calendar/widget/CalendarAllDayEventsView;->a:Ljava/util/List;

    return-object v0
.end method
