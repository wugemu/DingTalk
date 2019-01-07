.class public Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "CalendarWidgetHalfDayFragment.java"

# interfaces
.implements Lhoq$a;


# instance fields
.field public a:I

.field public b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field private i:I

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcth;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->and_calendar_widget_morning:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 37
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lhdn$k;->and_calendar_widget_afternoon:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->c:Ljava/util/List;

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->d:I

    .line 41
    sget v0, Lcjj;->A:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->e:I

    .line 42
    sget v0, Lcjj;->p:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->f:I

    .line 43
    sget v0, Lcjj;->p:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->g:I

    .line 49
    iput v4, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final d()Ljava/util/Calendar;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 151
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    if-ne v1, v2, :cond_0

    .line 155
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 160
    :goto_0
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 161
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 164
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 169
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lhoq$c;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 170
    check-cast v1, Lhoq$c;

    .line 173
    .local v1, "mvpView":Lhoq$c;
    iget v3, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->a:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->c:Ljava/util/List;

    iget v4, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lhoq$c;->a(ILjava/lang/String;)V

    .line 175
    .end local v1    # "mvpView":Lhoq$c;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1079
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->I:Landroid/view/View;

    sget v1, Lhdn$h;->sw_wheel_view_half_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$1;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemSelectedListener(Lctf;)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$2;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setOnWheelItemClickListener(Lcte;)V

    .line 1103
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    .line 2071
    iput-boolean v4, v0, Lcth;->a:Z

    .line 1105
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    .line 2175
    iput-boolean v5, v0, Lcth;->n:Z

    .line 1106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    const/4 v1, 0x3

    .line 3079
    iput v1, v0, Lcth;->b:I

    .line 1107
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->e:I

    .line 3087
    iput v1, v0, Lcth;->c:I

    .line 1108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->calendar_widget_c2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3103
    iput v1, v0, Lcth;->e:I

    .line 1109
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->f:I

    .line 3111
    iput v1, v0, Lcth;->f:I

    .line 1110
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->calendar_widget_c1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3127
    iput v1, v0, Lcth;->h:I

    .line 1111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    iget v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->g:I

    .line 3135
    iput v1, v0, Lcth;->i:I

    .line 1112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    sget v1, Lcjj;->v:I

    .line 3199
    iput v1, v0, Lcth;->q:I

    .line 1113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    .line 3207
    iput v4, v0, Lcth;->r:I

    .line 1114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    .line 3231
    iput-boolean v5, v0, Lcth;->u:Z

    .line 1116
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setData(Ljava/util/List;)V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->k:Lcth;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setStyle(Lcth;)V

    .line 1118
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1121
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 1122
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1123
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1125
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 1126
    iput v4, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    .line 1131
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->I:Landroid/view/View;

    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$3;-><init>(Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    const/4 v0, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 4179
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$4;

    invoke-direct {v3, v1, v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment$4;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->f()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->I:Landroid/view/View;

    return-object v0

    .line 1128
    :cond_0
    iput v5, p0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->i:I

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lhdn$i;->fragment_calendar_half_day:I

    return v0
.end method
