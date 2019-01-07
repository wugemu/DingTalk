.class public Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AttendanceHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;,
        Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[I


# instance fields
.field private A:Landroid/animation/ValueAnimator;

.field private B:I

.field private C:Z

.field private D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private E:Lcom/alibaba/android/oa/rpc/CalendarService;

.field private F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

.field private I:Lega;

.field private J:Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

.field private K:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Landroid/content/BroadcastReceiver;

.field private S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

.field private T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

.field private U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

.field private V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

.field private W:I

.field private X:Landroid/graphics/drawable/Drawable;

.field private Y:Landroid/graphics/drawable/Drawable;

.field private c:J

.field private d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:I

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

.field private j:I

.field private k:I

.field private l:Landroid/view/View;

.field private m:I

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/LayoutInflater;

.field private w:Landroid/widget/ScrollView;

.field private x:I

.field private y:I

.field private z:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const-class v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a:Ljava/lang/String;

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ledz$h;->calendar_sunday:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Ledz$h;->calendar_monday:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Ledz$h;->calendar_tuesday:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Ledz$h;->calendar_wednesday:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Ledz$h;->calendar_thursday:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Ledz$h;->calendar_friday:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Ledz$h;->calendar_saturday:I

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 132
    const v0, 0x12c7210

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 133
    invoke-static {}, Lcrz;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    .line 138
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->C:Z

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->F:Landroid/util/SparseArray;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->G:Landroid/util/SparseArray;

    .line 150
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->L:Z

    .line 152
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->M:Z

    .line 154
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->N:Z

    .line 156
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->O:Z

    .line 158
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->P:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->Q:Z

    .line 162
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$1;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->R:Landroid/content/BroadcastReceiver;

    .line 1050
    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->W:I

    .line 1444
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f:J

    return-wide p1
.end method

.method private static a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0, "listener"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    .prologue
    .line 1151
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1152
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1153
    const-wide/32 v2, 0xf4240

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1155
    return-object v0

    .line 1151
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->X:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lega;)Lega;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lega;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->I:Lega;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method private a(II)V
    .locals 8
    .param p1, "dateInt"    # I
    .param p2, "oldDateInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1078
    if-eq p1, p2, :cond_2

    .line 1079
    invoke-static {p1}, Lcrz;->c(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, "year":Ljava/lang/String;
    invoke-static {p1}, Lcrz;->d(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "month":Ljava/lang/String;
    invoke-static {p1}, Lcrz;->e(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "day":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1083
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v4, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a(I)V

    .line 1101
    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a(I)V

    .line 1103
    invoke-static {p1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(II)Landroid/graphics/Point;

    move-result-object v2

    .line 1104
    .local v2, "p":Landroid/graphics/Point;
    if-eqz v2, :cond_3

    .line 1105
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    .line 1110
    :goto_0
    invoke-static {p1, p2}, Lcrz;->a(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1111
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c()V

    .line 1116
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "month":Ljava/lang/String;
    .end local v2    # "p":Landroid/graphics/Point;
    .end local v3    # "year":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1107
    .restart local v0    # "day":Ljava/lang/String;
    .restart local v1    # "month":Ljava/lang/String;
    .restart local v2    # "p":Landroid/graphics/Point;
    .restart local v3    # "year":Ljava/lang/String;
    :cond_3
    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    goto :goto_0

    .line 1113
    :cond_4
    invoke-direct {p0, v7}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Z)V

    goto :goto_1
.end method

.method private a(IZ)V
    .locals 3
    .param p1, "dateInt"    # I
    .param p2, "smooth"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1053
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    if-eq p1, v2, :cond_0

    .line 1054
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->c(I)I

    move-result v1

    .line 1055
    .local v1, "pageIndex":I
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1056
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 1057
    .local v0, "old":I
    iput p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 1058
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-direct {p0, v2, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(II)V

    .line 1064
    .end local v0    # "old":I
    .end local v1    # "pageIndex":I
    :cond_0
    :goto_0
    return-void

    .line 1060
    .restart local v1    # "pageIndex":I
    :cond_1
    iput p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->W:I

    .line 1061
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v2, v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Z)V
    .locals 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "managerCalTabObject"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    .param p3, "needBottomMargin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 993
    iget v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 994
    new-instance v1, Leeu;

    invoke-direct {v1}, Leeu;-><init>()V

    .line 995
    .local v1, "headerViewHolder":Leeu;
    iget-wide v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Leeu;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;JLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 997
    iget-object v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 998
    iget-object v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 999
    .local v11, "tabObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v11, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Landroid/view/ViewGroup;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Z)V

    goto :goto_0

    .line 1003
    .end local v11    # "tabObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    :cond_0
    if-eqz p3, :cond_2

    .line 1004
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->v:Landroid/view/LayoutInflater;

    sget v3, Ledz$g;->item_calendar_bottom_margin_line:I

    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1044
    .end local v1    # "headerViewHolder":Leeu;
    :cond_1
    :goto_1
    return-void

    .line 1006
    .restart local v1    # "headerViewHolder":Leeu;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->v:Landroid/view/LayoutInflater;

    sget v3, Ledz$g;->item_calendar_bottom_line:I

    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 1009
    .end local v1    # "headerViewHolder":Leeu;
    :cond_3
    iget v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mStyleType:I

    packed-switch v2, :pswitch_data_0

    .line 1038
    :goto_2
    iget-object v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1039
    iget-object v2, p2, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->mCalTabModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 1040
    .restart local v11    # "tabObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v11, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Landroid/view/ViewGroup;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Z)V

    goto :goto_3

    .line 1011
    .end local v11    # "tabObject":Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;
    :pswitch_0
    new-instance v12, Leez;

    invoke-direct {v12}, Leez;-><init>()V

    .line 1012
    .local v12, "textViewHolder":Leez;
    const/4 v2, 0x0

    invoke-virtual {v12, p0, p2, v2}, Leez;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1015
    .end local v12    # "textViewHolder":Leez;
    :pswitch_1
    new-instance v0, Leet;

    invoke-direct {v0}, Leet;-><init>()V

    .line 1016
    .local v0, "avatarViewHolder":Leet;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, p2, v2}, Leet;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1019
    .end local v0    # "avatarViewHolder":Leet;
    :pswitch_2
    new-instance v7, Leev;

    invoke-direct {v7}, Leev;-><init>()V

    .line 1020
    .local v7, "jouralViewHolder":Leev;
    const/4 v2, 0x0

    invoke-virtual {v7, p0, p2, v2}, Leev;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1023
    .end local v7    # "jouralViewHolder":Leev;
    :pswitch_3
    new-instance v9, Leex;

    invoke-direct {v9}, Leex;-><init>()V

    .line 1024
    .local v9, "mergeTextViewHolder":Leex;
    const/4 v2, 0x0

    invoke-virtual {v9, p0, p2, v2}, Leex;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1027
    .end local v9    # "mergeTextViewHolder":Leex;
    :pswitch_4
    new-instance v10, Leey;

    invoke-direct {v10}, Leey;-><init>()V

    .line 1028
    .local v10, "orderJouralViewHolder":Leey;
    const/4 v2, 0x0

    invoke-virtual {v10, p0, p2, v2}, Leey;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1031
    .end local v10    # "orderJouralViewHolder":Leey;
    :pswitch_5
    new-instance v8, Leew;

    invoke-direct {v8}, Leew;-><init>()V

    .line 1032
    .local v8, "linkViewHolder":Leew;
    const/4 v2, 0x0

    invoke-virtual {v8, p0, p2, v2}, Leew;->a(Landroid/app/Activity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;F)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 86
    .line 15174
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g()V

    .line 15175
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v4, v0, v1

    .line 15176
    cmpl-float v0, v4, v6

    if-lez v0, :cond_0

    .line 15177
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    iget v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    sub-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 15178
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z:Landroid/animation/ValueAnimator;

    .line 15179
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 15180
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A:Landroid/animation/ValueAnimator;

    .line 15181
    :goto_0
    return-void

    .line 15182
    :cond_0
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    move-object v1, p0

    move v3, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 15183
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z:Landroid/animation/ValueAnimator;

    .line 15184
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    neg-int v1, v1

    iget v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k:I

    mul-int/2addr v1, v3

    int-to-float v5, v1

    move-object v1, p0

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 15185
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;IZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 14818
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->J:Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 14819
    if-eqz p1, :cond_0

    .line 14820
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14821
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 14822
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Landroid/view/ViewGroup;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Z)V

    :goto_0
    return-void

    .line 14824
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 86
    .line 13948
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 13949
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 13950
    invoke-direct {p0, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Z)V

    .line 13982
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 13983
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 13985
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    iget-object v0, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    iget-object v0, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 13986
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    iget-object v0, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 13987
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Landroid/view/ViewGroup;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Z)V

    goto :goto_0

    .line 13953
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Z)V

    .line 13951
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 18
    .param p1, "needReload"    # Z

    .prologue
    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    if-eqz v3, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 5485
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 705
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 707
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    if-eqz v3, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 6485
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 709
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 711
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->G:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-static {v4}, Lcrz;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 712
    .local v2, "status":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    if-nez p1, :cond_2

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c()V

    .line 726
    :goto_0
    return-void

    .line 6699
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f()V

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d()V

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e()V

    .line 719
    new-instance v3, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->E:Lcom/alibaba/android/oa/rpc/CalendarService;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 721
    invoke-static {v8}, Lcrz;->b(I)I

    move-result v8

    invoke-static {v8}, Lcrz;->a(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    const/4 v11, 0x1

    .line 722
    invoke-static {v10, v11}, Lcrz;->c(II)I

    move-result v10

    invoke-static {v10}, Lcrz;->a(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 723
    invoke-static {v12}, Lcrz;->a(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->L:Z

    const-string/jumbo v15, "EVENTBUTLER"

    invoke-static {v15}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/doraemon/eventbus/EventButler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    move-object/from16 v16, v0

    const-class v17, Lcma;

    invoke-interface/range {v15 .. v18}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcma;

    .line 720
    invoke-interface/range {v3 .. v15}, Lcom/alibaba/android/oa/rpc/CalendarService;->getManagerCalFullInfos(JJJJJZLcma;)V

    .line 724
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->L:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->M:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->M:Z

    return p1
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b:[I

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->Y:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private b()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 385
    iget-boolean v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->P:Z

    if-eqz v6, :cond_1

    .line 386
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 387
    .local v5, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iput-wide v12, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 388
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 389
    iget-wide v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 390
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    .line 391
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 414
    .restart local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f:J

    .line 416
    iput v10, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g:I

    .line 417
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    .line 419
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Ledz$e;->icon_label_more_down:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 420
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 421
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v6, v11, v11, v1, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n:Landroid/widget/TextView;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 424
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/CharSequence;

    .line 425
    .local v2, "deptNames":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 426
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    aput-object v6, v2, v3

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "deptNames":[Ljava/lang/CharSequence;
    .end local v3    # "i":I
    .end local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->finish()V

    .line 454
    :goto_2
    return-void

    .line 397
    :cond_3
    const/4 v0, 0x0

    .line 398
    .local v0, "adminDept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    const/4 v4, 0x0

    .line 399
    .local v4, "isAdmin":Z
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 400
    .restart local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_4

    .line 401
    const/4 v4, 0x1

    .line 402
    move-object v0, v5

    .line 406
    .end local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_5
    if-eqz v4, :cond_0

    .line 407
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    .line 408
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 429
    .end local v0    # "adminDept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v4    # "isAdmin":Z
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "deptNames":[Ljava/lang/CharSequence;
    .restart local v3    # "i":I
    .restart local v5    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n:Landroid/widget/TextView;

    new-instance v7, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;

    invoke-direct {v7, p0, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$12;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;[Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "deptNames":[Ljava/lang/CharSequence;
    .end local v3    # "i":I
    :cond_7
    iget v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    invoke-direct {p0, v6, v10}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(IZ)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;F)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # F

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 17132
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g()V

    .line 17133
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p1

    .line 17134
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    .line 17139
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 17140
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p1

    .line 17141
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k:I

    neg-int v2, v2

    iget v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 17142
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k:I

    neg-int v0, v0

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    mul-int/2addr v0, v1

    int-to-float v1, v0

    .line 17146
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setTranslationY(F)V

    .line 17147
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->h()V

    .line 86
    return-void

    .line 17136
    :cond_2
    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    iget v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 17137
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_0

    .line 17143
    :cond_3
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 86
    .line 12068
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->W:I

    invoke-static {v0, p1}, Lcrz;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12069
    iget p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->W:I

    .line 12071
    .end local p1    # "x1":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->W:I

    .line 12072
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 12073
    iput p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    .line 12074
    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(II)V

    .line 86
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .prologue
    const/4 v3, 0x0

    .line 86
    .line 14840
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->K:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 14841
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 14842
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14843
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 14844
    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 14845
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Landroid/view/ViewGroup;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;Z)V

    goto :goto_0

    .line 14848
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14846
    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "hasData"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 966
    if-eqz p1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 979
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->O:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->O:Z

    return p1
.end method

.method private c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 788
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 6780
    iget-boolean v1, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->d:Z

    if-nez v1, :cond_0

    .line 6781
    iget-object v1, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .line 7086
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Z)V

    .line 6783
    :cond_0
    iput-boolean v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->d:Z

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 7485
    iput-boolean v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 793
    iput-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 7699
    :cond_2
    iput-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->H:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 796
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f()V

    .line 797
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d()V

    .line 798
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e()V

    .line 799
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 800
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->E:Lcom/alibaba/android/oa/rpc/CalendarService;

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    iget-wide v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f:J

    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-static {v0}, Lcrz;->a(I)J

    move-result-wide v6

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    const-class v9, Lcma;

    invoke-interface {v0, v8, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/android/oa/rpc/CalendarService;->getManagerCalDayFullInfos(JJJLcma;)V

    .line 801
    return-void
.end method

.method private c(Z)V
    .locals 2
    .param p1, "disableCanlendar"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1190
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->C:Z

    if-nez v0, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1193
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->C:Z

    .line 1194
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->C:Z

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setTouchDisabled(Z)V

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setTouchDisabled(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->N:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->N:Z

    return p1
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 804
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->M:Z

    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    .line 8485
    iput-boolean v6, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 809
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->J:Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 813
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    .line 814
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->E:Lcom/alibaba/android/oa/rpc/CalendarService;

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-static {v0}, Lcrz;->a(I)J

    move-result-wide v4

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->U:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    const-class v8, Lcma;

    invoke-interface {v0, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/oa/rpc/CalendarService;->getManagerCalendarOrgData(JJZLcma;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    .line 10272
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/oa/rpc/CalendarService;->getOrgEmpManagerCalSetting(JLcma;)V

    .line 86
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->P:Z

    return v0
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    .line 9485
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 831
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->K:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 835
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    .line 836
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->E:Lcom/alibaba/android/oa/rpc/CalendarService;

    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    invoke-static {v0}, Lcrz;->a(I)J

    move-result-wide v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->V:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$h;

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/oa/rpc/CalendarService;->getManagerCalendarPersonalData(JLcma;)V

    .line 837
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    const/4 v3, 0x0

    .line 86
    .line 10636
    sget v0, Ledz$f;->attendance_nav_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 10637
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10640
    iget-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->O:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cal_boss_set_clicked"

    invoke-static {v1, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10641
    sget v1, Ledz$e;->attendance_boss_setting_point:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10644
    :cond_0
    new-instance v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$7;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Z)V

    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 958
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->u:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 963
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Z)V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1129
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    const/4 v2, 0x1

    .line 86
    .line 11309
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    .line 11312
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11313
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->dismissLoadingDialog()V

    .line 11314
    iput-boolean v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->P:Z

    .line 11315
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b()V

    :goto_0
    return-void

    .line 11317
    :cond_1
    invoke-static {}, Lege;->a()Legc;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    const-wide/16 v4, -0x6

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;

    invoke-direct {v6, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    const-class v7, Lcma;

    .line 11318
    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 11317
    invoke-interface/range {v1 .. v6}, Legc;->a(JJLcma;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->Q:Z

    return v0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    .line 1212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c(Z)V

    .line 1214
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    .line 11350
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$11;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    const-class v5, Lcma;

    .line 11351
    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 11350
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JLcma;)V

    .line 86
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->F:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->G:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->C:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->L:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    return-wide v0
.end method

.method static synthetic t(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    .line 13047
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a()V

    .line 86
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->Q:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 86
    .line 16159
    invoke-direct {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g()V

    .line 16160
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    iget v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 16161
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    iget v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    sub-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 16162
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z:Landroid/animation/ValueAnimator;

    .line 16163
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 16164
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A:Landroid/animation/ValueAnimator;

    .line 16165
    :goto_0
    return-void

    .line 16166
    :cond_0
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    move-object v1, p0

    move v3, v6

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 16167
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->z:Landroid/animation/ValueAnimator;

    .line 16168
    new-instance v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    neg-int v1, v1

    iget v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k:I

    mul-int/2addr v1, v3

    int-to-float v5, v1

    move-object v1, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;ZFF)V

    .line 16169
    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->A:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method static synthetic w(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->w:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->X:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->Y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 253
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    sget v1, Ledz$g;->activity_attendance_home:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->setContentView(I)V

    .line 183
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->E:Lcom/alibaba/android/oa/rpc/CalendarService;

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "org_id"

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "calendar_date_long"

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 187
    .local v2, "intentDateLong":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 188
    invoke-static {}, Lcrz;->b()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    .line 192
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 194
    iget-wide v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v1, :cond_2

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->finish()V

    .line 215
    :goto_1
    return-void

    .line 190
    :cond_1
    invoke-static {v2, v3}, Lcrz;->a(J)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    goto :goto_0

    .line 2457
    :cond_2
    sget v1, Ledz$f;->calendar_bg:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2458
    sget v1, Ledz$f;->attendance_actionbar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2459
    sget v1, Ledz$f;->attendance_nav_back:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2462
    sget v1, Ledz$f;->calendar_year_month_day:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->h:Landroid/widget/TextView;

    .line 2463
    sget v1, Ledz$f;->calendar_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;

    .line 2464
    sget v4, Ledz$f;->calendar_touch_container:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/InterruptTouchView;

    .line 2465
    sget v5, Ledz$f;->calendar_body:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    .line 2466
    sget v5, Ledz$f;->attendance_detail:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    .line 2467
    sget v5, Ledz$f;->attendance_detail_dept:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n:Landroid/widget/TextView;

    .line 2468
    sget v5, Ledz$f;->attendance_detail_content:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o:Landroid/widget/LinearLayout;

    .line 2469
    sget v5, Ledz$f;->calendar_guide_icon:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->p:Landroid/view/View;

    .line 2470
    sget v5, Ledz$f;->calendar_guide_tv:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->q:Landroid/view/View;

    .line 2471
    sget v5, Ledz$f;->attendance_detail_empty:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->t:Landroid/view/View;

    .line 2472
    sget v5, Ledz$f;->data_loading:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->u:Landroid/view/View;

    .line 2473
    sget v5, Ledz$f;->attendance_content_scrollview:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->w:Landroid/widget/ScrollView;

    .line 2474
    sget v5, Ledz$f;->calendar_manager_org_layout:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->r:Landroid/widget/LinearLayout;

    .line 2475
    sget v5, Ledz$f;->calendar_manager_personal_layout:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s:Landroid/widget/LinearLayout;

    .line 2477
    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    invoke-static {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->c(I)I

    move-result v9

    invoke-virtual {v5, v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setCurrentItem(IZ)V

    .line 2478
    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    invoke-virtual {v5, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->a(I)V

    .line 2480
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2482
    new-instance v5, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$13;

    invoke-direct {v5, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$13;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2614
    sget v5, Ledz$f;->attendance_nav_help:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2615
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "user_first_in_attentace"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 2616
    if-eqz v6, :cond_3

    .line 2617
    sget v7, Ledz$e;->help_icon_new_2x:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2619
    :cond_3
    new-instance v7, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;

    invoke-direct {v7, p0, v6, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;ZLandroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2498
    new-instance v5, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$14;

    invoke-direct {v5, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$14;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->setUniformGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;)V

    .line 2523
    new-instance v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/content/Context;)V

    .line 2524
    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InterruptTouchView;->setOnInterruptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2525
    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InterruptTouchView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2527
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    new-instance v4, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setCalendarGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;)V

    .line 2568
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    new-instance v4, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$3;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setOnCalendarGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;)V

    .line 2576
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    new-instance v4, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setOnCalendarPageChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;)V

    .line 2587
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    .line 2588
    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->j:I

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k:I

    .line 2589
    sget v1, Ledz$f;->attendance_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    .line 2590
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m:I

    .line 2592
    new-instance v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$5;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2601
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2604
    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    iget v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->y:I

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(II)Landroid/graphics/Point;

    move-result-object v1

    .line 2605
    if-eqz v1, :cond_4

    .line 2606
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    .line 2610
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    iget v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->k:I

    neg-int v4, v4

    iget v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setTranslationY(F)V

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alibaba.android.rimet.biz.calendar.BOSSSETTING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->showLoadingDialog()V

    .line 204
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    sget-object v4, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$8;

    invoke-direct {v5, p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$8;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    invoke-interface {v1, v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 211
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->v:Landroid/view/LayoutInflater;

    goto/16 :goto_1

    .line 2608
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    iput v10, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->B:I

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 678
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 3485
    iput-boolean v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 682
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->S:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 4485
    iput-boolean v3, v0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->a:Z

    .line 686
    iput-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->T:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 688
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 690
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 691
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 663
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 666
    iget-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->O:Z

    if-eqz v1, :cond_0

    .line 667
    sget v1, Ledz$f;->attendance_nav_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 668
    .local v0, "bossSetting":Landroid/widget/ImageView;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cal_boss_set_clicked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    sget v1, Ledz$e;->attendance_boss_setting:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 672
    .end local v0    # "bossSetting":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
