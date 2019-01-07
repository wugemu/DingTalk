.class public final Laun;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"


# instance fields
.field public A:Z

.field public B:Z

.field C:Z

.field D:Z

.field E:I

.field F:Ljava/lang/Runnable;

.field G:Ljava/lang/Runnable;

.field H:Ljava/lang/Runnable;

.field I:Ljava/lang/Runnable;

.field J:Ljava/lang/Runnable;

.field K:Ljava/lang/Runnable;

.field L:Ljava/lang/Runnable;

.field public M:Ljava/lang/Runnable;

.field public N:Ljava/lang/Runnable;

.field public O:Landroid/content/BroadcastReceiver;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/view/View;

.field private Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field public a:Landroid/app/Activity;

.field private aa:Landroid/animation/ObjectAnimator;

.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field public p:Landroid/widget/LinearLayout;

.field q:Landroid/widget/ListView;

.field r:Laut;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauz;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauz;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauz;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauz;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroid/animation/ObjectAnimator;

.field public x:Laup;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "activityRoot"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laun;->s:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laun;->t:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laun;->u:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laun;->v:Ljava/util/List;

    .line 130
    iput-boolean v2, p0, Laun;->z:Z

    .line 131
    iput-boolean v2, p0, Laun;->A:Z

    .line 132
    iput-boolean v2, p0, Laun;->B:Z

    .line 134
    iput-boolean v3, p0, Laun;->C:Z

    .line 135
    iput-boolean v3, p0, Laun;->D:Z

    .line 139
    new-instance v0, Laun$1;

    invoke-direct {v0, p0}, Laun$1;-><init>(Laun;)V

    iput-object v0, p0, Laun;->F:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Laun$12;

    invoke-direct {v0, p0}, Laun$12;-><init>(Laun;)V

    iput-object v0, p0, Laun;->G:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Laun$23;

    invoke-direct {v0, p0}, Laun$23;-><init>(Laun;)V

    iput-object v0, p0, Laun;->H:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Laun$28;

    invoke-direct {v0, p0}, Laun$28;-><init>(Laun;)V

    iput-object v0, p0, Laun;->I:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Laun$29;

    invoke-direct {v0, p0}, Laun$29;-><init>(Laun;)V

    iput-object v0, p0, Laun;->J:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Laun$30;

    invoke-direct {v0, p0}, Laun$30;-><init>(Laun;)V

    iput-object v0, p0, Laun;->K:Ljava/lang/Runnable;

    .line 188
    new-instance v0, Laun$31;

    invoke-direct {v0, p0}, Laun$31;-><init>(Laun;)V

    iput-object v0, p0, Laun;->L:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Laun$32;

    invoke-direct {v0, p0}, Laun$32;-><init>(Laun;)V

    iput-object v0, p0, Laun;->M:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Laun$33;

    invoke-direct {v0, p0}, Laun$33;-><init>(Laun;)V

    iput-object v0, p0, Laun;->N:Ljava/lang/Runnable;

    .line 286
    iput-object p1, p0, Laun;->a:Landroid/app/Activity;

    .line 287
    iput-object p2, p0, Laun;->b:Landroid/widget/FrameLayout;

    .line 288
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Laun;->E:I

    .line 2306
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laow$e;->calendar_layout_setting:I

    iget-object v2, p0, Laun;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->c:Landroid/view/View;

    .line 2307
    iget-object v0, p0, Laun;->c:Landroid/view/View;

    new-instance v1, Laun$2;

    invoke-direct {v1, p0}, Laun$2;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2313
    iget-object v0, p0, Laun;->c:Landroid/view/View;

    sget v1, Laow$d;->ll_receivers_with_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laun;->p:Landroid/widget/LinearLayout;

    .line 2314
    iget-object v0, p0, Laun;->c:Landroid/view/View;

    sget v1, Laow$d;->lv_receivers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laun;->q:Landroid/widget/ListView;

    .line 2315
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Laun;->a:Landroid/app/Activity;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Laun;->y:I

    .line 2824
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laow$e;->calendar_layout_setting_header:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2826
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2827
    sget v0, Laow$d;->v_header_split_top:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2828
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2829
    iget-object v3, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->a(Landroid/app/Activity;)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2830
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2831
    sget v0, Laow$d;->tv_title_view_switch:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laun;->d:Landroid/widget/TextView;

    .line 2832
    sget v0, Laow$d;->ll_switch_mode:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->e:Landroid/view/View;

    .line 2833
    sget v0, Laow$d;->iv_switch_calendar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laun;->P:Landroid/widget/ImageView;

    .line 2834
    sget v0, Laow$d;->iv_switch_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laun;->Q:Landroid/widget/ImageView;

    .line 2836
    sget v0, Laow$d;->rl_schedule:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->T:Landroid/view/View;

    .line 2837
    sget v0, Laow$d;->rl_day:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->U:Landroid/view/View;

    .line 2838
    sget v0, Laow$d;->iftv_day_pressed:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Laun;->S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2839
    sget v0, Laow$d;->iftv_schedule_pressed:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Laun;->R:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2841
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Laow$e;->calendar_layout_setting_footer:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2842
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2843
    sget v0, Laow$d;->view_divider_line:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->f:Landroid/view/View;

    .line 2844
    sget v0, Laow$d;->tv_title_other:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laun;->g:Landroid/widget/TextView;

    .line 2845
    sget v0, Laow$d;->ll_search:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->V:Landroid/view/View;

    .line 2846
    sget v0, Laow$d;->ll_focus:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->W:Landroid/view/View;

    .line 2847
    sget v0, Laow$d;->ll_recycle:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->X:Landroid/view/View;

    .line 2848
    sget v0, Laow$d;->ll_more_setting:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->h:Landroid/view/View;

    .line 2849
    sget v0, Laow$d;->iftv_more_setting:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Laun;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2850
    sget v0, Laow$d;->v_red_dot:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->i:Landroid/view/View;

    .line 2851
    sget v0, Laow$d;->v_more_setting_split:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->j:Landroid/view/View;

    .line 2852
    sget v0, Laow$d;->ll_help:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laun;->Y:Landroid/view/View;

    .line 2853
    sget v0, Laow$d;->iftv_focus:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Laun;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2855
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2856
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2862
    iget-object v0, p0, Laun;->T:Landroid/view/View;

    new-instance v1, Laun$13;

    invoke-direct {v1, p0}, Laun$13;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2873
    iget-object v0, p0, Laun;->U:Landroid/view/View;

    new-instance v1, Laun$14;

    invoke-direct {v1, p0}, Laun$14;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2884
    iget-object v0, p0, Laun;->V:Landroid/view/View;

    new-instance v1, Laun$15;

    invoke-direct {v1, p0}, Laun$15;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2892
    iget-object v0, p0, Laun;->W:Landroid/view/View;

    new-instance v1, Laun$16;

    invoke-direct {v1, p0}, Laun$16;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2900
    iget-object v0, p0, Laun;->X:Landroid/view/View;

    new-instance v1, Laun$17;

    invoke-direct {v1, p0}, Laun$17;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2908
    iget-object v0, p0, Laun;->h:Landroid/view/View;

    new-instance v1, Laun$18;

    invoke-direct {v1, p0}, Laun$18;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2921
    iget-object v0, p0, Laun;->Y:Landroid/view/View;

    new-instance v1, Laun$19;

    invoke-direct {v1, p0}, Laun$19;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2318
    new-instance v0, Laut;

    iget-object v1, p0, Laun;->a:Landroid/app/Activity;

    new-instance v2, Laun$3;

    invoke-direct {v2, p0}, Laun$3;-><init>(Laun;)V

    new-instance v3, Laun$4;

    invoke-direct {v3, p0}, Laun$4;-><init>(Laun;)V

    new-instance v4, Laun$5;

    invoke-direct {v4, p0}, Laun$5;-><init>(Laun;)V

    invoke-direct {v0, v1, v2, v3, v4}, Laut;-><init>(Landroid/app/Activity;Laus;Laur;Lauq;)V

    iput-object v0, p0, Laun;->r:Laut;

    .line 2406
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    iget-object v1, p0, Laun;->r:Laut;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2407
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    new-instance v1, Laun$6;

    invoke-direct {v1, p0}, Laun$6;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2432
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    new-instance v1, Laun$7;

    invoke-direct {v1, p0}, Laun$7;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3520
    new-instance v0, Laun$8;

    invoke-direct {v0, p0}, Laun$8;-><init>(Laun;)V

    iput-object v0, p0, Laun;->O:Landroid/content/BroadcastReceiver;

    .line 3530
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3531
    const-string/jumbo v1, "com.workapp.calendar.reload.share_folder"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3532
    iget-object v1, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Laun;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 291
    return-void
.end method

.method static synthetic a(Laun;)V
    .locals 4
    .param p0, "x0"    # Laun;

    .prologue
    .line 77
    .line 11744
    iget-object v0, p0, Laun;->o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laun;->o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11748
    :cond_0
    invoke-static {}, Lavi;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11749
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarDrawerContainer] showMoreSettingTips mail setting is open."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 11750
    :cond_1
    :goto_0
    return-void

    .line 11753
    :cond_2
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    iget-object v1, p0, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcpc;->b(Landroid/widget/AbsListView;I)V

    .line 11754
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Laun$11;

    invoke-direct {v1, p0}, Laun$11;-><init>(Laun;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Laun;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Laun;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 77
    .line 17184
    iget-object v0, p0, Laun;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17185
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 17187
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17188
    :cond_0
    new-instance v0, Lavb;

    sget-object v1, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->ALI_MAIL:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Laun;->a:Landroid/app/Activity;

    sget v4, Laow$f;->dt_ding_calendar_setting_section_alimei_email:I

    .line 17189
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Laow$a;->ding_calendar_share_folder_ali_mail_folder_color:I

    .line 17190
    invoke-static {v4}, Leda;->b(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lavb;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17191
    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 18064
    iput-object v1, v0, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 19048
    iput-boolean v7, v0, Lava;->d:Z

    .line 17194
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v3, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v1, v3, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17195
    const-string/jumbo v1, "pref_key_calendar_ali_mail_not_login_red_dot"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19072
    iput-boolean v2, v0, Lava;->f:Z

    .line 20022
    :cond_1
    :goto_0
    iput-boolean v2, v0, Lavb;->h:Z

    .line 17204
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17223
    :cond_2
    iget-object v0, p0, Laun;->v:Ljava/util/List;

    new-instance v1, Lauy;

    const-wide/16 v4, -0x1

    iget-object v3, p0, Laun;->a:Landroid/app/Activity;

    sget v6, Laow$f;->dt_ding_calendar_setting_group_header_email:I

    .line 17224
    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    const/4 v8, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lauy;-><init>(ZZJLjava/lang/String;Lcom/alibaba/android/calendar/setting/object/FolderType;Ljava/util/List;)V

    .line 17223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17225
    iget-object v0, p0, Laun;->v:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-void

    .line 17199
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarDrawerContainer] calendar show ali mail red dot close."

    aput-object v3, v1, v7

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 17207
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laro;

    .line 17209
    if-eqz v0, :cond_5

    .line 17213
    new-instance v3, Lava;

    .line 20027
    iget-object v4, v0, Laro;->a:Ljava/lang/String;

    .line 20043
    iget-object v5, v0, Laro;->c:Ljava/lang/String;

    .line 20083
    iget-object v6, v0, Laro;->h:Ljava/lang/String;

    .line 17215
    invoke-static {v6}, Lavj;->a(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lava;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21075
    iget-boolean v0, v0, Laro;->g:Z

    .line 22048
    iput-boolean v0, v3, Lava;->d:Z

    .line 22056
    iput-boolean v7, v3, Lava;->e:Z

    .line 17218
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 22064
    iput-object v0, v3, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 17219
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic b(Laun;)V
    .locals 8
    .param p0, "x0"    # Laun;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    .line 12646
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12650
    iget-object v0, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12655
    :cond_0
    iget-object v0, p0, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 13600
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Laun;->s:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13601
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13602
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauz;

    .line 13603
    instance-of v4, v0, Lava;

    if-eqz v4, :cond_1

    .line 13604
    check-cast v0, Lava;

    .line 14060
    iget-object v4, v0, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 13605
    sget-object v5, Lcom/alibaba/android/calendar/setting/object/FolderType;->DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

    if-ne v4, v5, :cond_1

    .line 15052
    iget-boolean v4, v0, Lava;->e:Z

    .line 13605
    if-eqz v4, :cond_1

    .line 13606
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 12656
    :goto_0
    iget-object v2, p0, Laun;->q:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 12657
    sub-int v2, v0, v1

    if-lez v2, :cond_2

    .line 12662
    iget-object v2, p0, Laun;->q:Landroid/widget/ListView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12663
    if-nez v0, :cond_4

    .line 12664
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] showShareCalendarTips rootview is null"

    aput-object v1, v0, v6

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 12670
    :cond_2
    :goto_1
    return-void

    .line 13611
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 12667
    :cond_4
    sget v1, Laow$d;->tv_add_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12668
    if-nez v0, :cond_5

    .line 12669
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] showShareCalendarTips tvShare is null"

    aput-object v1, v0, v6

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_1

    .line 12672
    :cond_5
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    iget-object v2, p0, Laun;->a:Landroid/app/Activity;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Up:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    sget v4, Laow$f;->dt_ding_setting_share_calendar_to_person_tips:I

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v1, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 12673
    iget-object v1, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setOutsideTouchable(Z)V

    .line 12674
    iget-object v1, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    new-instance v2, Laun$9;

    invoke-direct {v2, p0}, Laun$9;-><init>(Laun;)V

    .line 15122
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 12682
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_6

    .line 12683
    iget-object v1, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    sget v2, Laow$b;->ding_calendar_popup_max_width:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(I)V

    .line 12685
    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 12686
    iget-object v2, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->getWidth()I

    move-result v2

    .line 12687
    sub-int/2addr v1, v2

    .line 12688
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarDrawerContainer]showShareCalendarTips showAsDropDown offsetX="

    aput-object v3, v2, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 12689
    iget-object v2, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v2, v0, v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Landroid/view/View;II)V

    goto :goto_1
.end method

.method static synthetic b(Laun;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Laun;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 77
    .line 22314
    iget-object v0, p0, Laun;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22315
    if-eqz p1, :cond_5

    .line 22318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask;

    .line 22319
    if-eqz v0, :cond_0

    .line 23051
    iget-object v1, v0, Lask;->a:Ljava/lang/String;

    .line 22322
    iget-object v2, p0, Laun;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laow$f;->dt_ding_calendar_setting_group_header_email:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23059
    iget-object v2, v0, Lask;->b:Ljava/util/List;

    .line 22327
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22330
    const/4 v1, 0x0

    .line 22331
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22332
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v1

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasl;

    .line 22333
    if-eqz v1, :cond_1

    .line 23090
    iget-boolean v2, v1, Lasl;->g:Z

    .line 22338
    new-instance v4, Lava;

    .line 24042
    iget-object v5, v1, Lasl;->a:Ljava/lang/String;

    .line 24050
    iget-object v6, v1, Lasl;->b:Ljava/lang/String;

    .line 24074
    iget-object v7, v1, Lasl;->e:Ljava/lang/String;

    .line 22340
    invoke-static {v7}, Lavj;->a(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lava;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24106
    iget-boolean v5, v1, Lasl;->i:Z

    .line 25048
    iput-boolean v5, v4, Lava;->d:Z

    .line 25082
    iget-boolean v1, v1, Lasl;->f:Z

    .line 26056
    iput-boolean v1, v4, Lava;->e:Z

    .line 22343
    if-eqz v2, :cond_2

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->SHARE_FOLDER:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 26064
    :goto_2
    iput-object v1, v4, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 22344
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v2

    .line 22345
    goto :goto_1

    .line 22343
    :cond_2
    sget-object v1, Lcom/alibaba/android/calendar/setting/object/FolderType;->DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

    goto :goto_2

    .line 26084
    :cond_3
    iget-wide v4, v0, Lask;->d:J

    .line 26100
    iget-boolean v2, v0, Lask;->f:Z

    .line 27092
    iget-boolean v3, v0, Lask;->e:Z

    .line 28051
    iget-object v6, v0, Lask;->a:Ljava/lang/String;

    .line 22351
    if-eqz v7, :cond_4

    .line 22352
    iget-object v0, p0, Laun;->u:Ljava/util/List;

    new-instance v1, Lauy;

    sget-object v7, Lcom/alibaba/android/calendar/setting/object/FolderType;->SHARE_FOLDER:Lcom/alibaba/android/calendar/setting/object/FolderType;

    invoke-direct/range {v1 .. v8}, Lauy;-><init>(ZZJLjava/lang/String;Lcom/alibaba/android/calendar/setting/object/FolderType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22354
    :cond_4
    iget-object v0, p0, Laun;->u:Ljava/util/List;

    new-instance v1, Lauy;

    sget-object v7, Lcom/alibaba/android/calendar/setting/object/FolderType;->DING_DING:Lcom/alibaba/android/calendar/setting/object/FolderType;

    invoke-direct/range {v1 .. v8}, Lauy;-><init>(ZZJLjava/lang/String;Lcom/alibaba/android/calendar/setting/object/FolderType;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :cond_5
    return-void
.end method

.method static synthetic c(Laun;)V
    .locals 5
    .param p0, "x0"    # Laun;

    .prologue
    .line 77
    .line 16058
    iget-object v0, p0, Laun;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 16062
    iget-object v0, p0, Laun;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16066
    iget-object v0, p0, Laun;->aa:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laun;->aa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16070
    :cond_0
    iget-object v0, p0, Laun;->aa:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 16071
    iget-object v0, p0, Laun;->p:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Laun;->y:I

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 16072
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 16073
    new-instance v1, Laun$20;

    invoke-direct {v1, p0}, Laun$20;-><init>(Laun;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16087
    iput-object v0, p0, Laun;->aa:Landroid/animation/ObjectAnimator;

    .line 16089
    :cond_1
    iget-object v0, p0, Laun;->aa:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 16090
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Laun;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16091
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Laun;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16093
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16094
    iget-object v0, p0, Laun;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 77
    :cond_2
    return-void
.end method

.method static synthetic d(Laun;)V
    .locals 1
    .param p0, "x0"    # Laun;

    .prologue
    .line 77
    .line 16792
    iget-object v0, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16793
    iget-object v0, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 16794
    const/4 v0, 0x0

    iput-object v0, p0, Laun;->Z:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic e(Laun;)V
    .locals 1
    .param p0, "x0"    # Laun;

    .prologue
    .line 77
    .line 16806
    iget-object v0, p0, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16807
    iget-object v0, p0, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 16808
    const/4 v0, 0x0

    iput-object v0, p0, Laun;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic f(Laun;)V
    .locals 1
    .param p0, "x0"    # Laun;

    .prologue
    .line 77
    .line 16813
    iget-object v0, p0, Laun;->o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laun;->o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16814
    iget-object v0, p0, Laun;->o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 16815
    const/4 v0, 0x0

    iput-object v0, p0, Laun;->o:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic g(Laun;)V
    .locals 0
    .param p0, "x0"    # Laun;

    .prologue
    .line 77
    invoke-virtual {p0}, Laun;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v2, 0x1

    .line 540
    iget-object v1, p0, Laun;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 542
    invoke-static {}, Lavi;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lavq;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Laun;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    invoke-static {}, Lavq;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4166
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v3, Laun$22;

    invoke-direct {v3, p0}, Laun$22;-><init>(Laun;)V

    .line 4497
    iget-object v4, v1, Latf;->a:Latf$b;

    new-instance v5, Latf$22;

    invoke-direct {v5, v1, v3}, Latf$22;-><init>(Latf;Lapv;)V

    invoke-virtual {v4, v5}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 554
    :cond_0
    :goto_0
    iget-object v1, p0, Laun;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 555
    invoke-virtual {p0}, Laun;->b()V

    .line 568
    :cond_1
    invoke-static {}, Lavi;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    invoke-static {}, Lavq;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Laun;->v:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Laun;->v:Ljava/util/List;

    .line 571
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8616
    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, p0, Laun;->s:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8617
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 8618
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauz;

    .line 8619
    instance-of v3, v1, Lauy;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 8620
    check-cast v3, Lauy;

    .line 9048
    iget-object v3, v3, Lauy;->e:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 8620
    sget-object v6, Lcom/alibaba/android/calendar/setting/object/FolderType;->SHARE_FOLDER:Lcom/alibaba/android/calendar/setting/object/FolderType;

    if-ne v3, v6, :cond_2

    .line 8621
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 573
    .local v10, "index":I
    :goto_1
    if-eq v10, v12, :cond_9

    .line 574
    iget-object v1, p0, Laun;->s:Ljava/util/List;

    iget-object v3, p0, Laun;->v:Ljava/util/List;

    invoke-interface {v1, v10, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 582
    .end local v10    # "index":I
    :cond_3
    :goto_2
    invoke-static {}, Lavi;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 583
    iget-object v1, p0, Laun;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9104
    iget-boolean v1, p0, Laun;->C:Z

    if-nez v1, :cond_4

    .line 9107
    iput-boolean v2, p0, Laun;->C:Z

    .line 9108
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarDrawerContainer] loadSystemCalendarAsync"

    aput-object v2, v1, v14

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 9109
    new-instance v1, Laun$21;

    invoke-direct {v1, p0}, Laun$21;-><init>(Laun;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v1}, Lawi;->a(Lcom/alibaba/wukong/Callback;)V

    .line 595
    :cond_4
    :goto_3
    iget-object v1, p0, Laun;->s:Ljava/util/List;

    invoke-virtual {p0, v1}, Laun;->a(Ljava/util/List;)V

    .line 596
    return-void

    .line 5154
    :cond_5
    iget-object v13, p0, Laun;->v:Ljava/util/List;

    new-instance v1, Lauy;

    const-wide/16 v4, -0x1

    iget-object v3, p0, Laun;->a:Landroid/app/Activity;

    sget v6, Laow$f;->dt_ding_calendar_setting_group_header_email:I

    .line 5155
    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    const/4 v8, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lauy;-><init>(ZZJLjava/lang/String;Lcom/alibaba/android/calendar/setting/object/FolderType;Ljava/util/List;)V

    .line 5154
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5156
    new-instance v1, Lava;

    sget-object v3, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->ALI_MAIL:Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/consts/CalendarConsts$CalendarDrawerSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laun;->a:Landroid/app/Activity;

    sget v5, Laow$f;->dt_ding_calendar_setting_section_alimei_email:I

    .line 5157
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Laow$a;->ding_calendar_share_folder_ali_mail_folder_color:I

    .line 5158
    invoke-static {v5}, Leda;->b(I)I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lava;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5159
    invoke-static {}, Lauo;->a()Lauo;

    invoke-static {}, Lauo;->c()Z

    move-result v3

    .line 6048
    iput-boolean v3, v1, Lava;->d:Z

    .line 5160
    sget-object v3, Lcom/alibaba/android/calendar/setting/object/FolderType;->ALI_MAIL:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 6064
    iput-object v3, v1, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 5161
    iget-object v3, p0, Laun;->v:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 557
    :cond_6
    iget-object v1, p0, Laun;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lauz;

    .line 558
    .local v9, "iSetting":Lauz;
    instance-of v3, v9, Lauy;

    if-eqz v3, :cond_7

    move-object v0, v9

    .line 559
    check-cast v0, Lauy;

    .line 560
    .local v0, "headerSetting":Lauy;
    iget-object v3, p0, Laun;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7056
    iget-boolean v3, v0, Lauy;->a:Z

    .line 561
    if-nez v3, :cond_7

    .line 562
    iget-object v3, p0, Laun;->s:Ljava/util/List;

    .line 8052
    iget-object v4, v0, Lauy;->f:Ljava/util/List;

    .line 562
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .end local v0    # "headerSetting":Lauy;
    .end local v9    # "iSetting":Lauz;
    :cond_8
    move v10, v12

    .line 8626
    goto/16 :goto_1

    .line 576
    .restart local v10    # "index":I
    :cond_9
    iget-object v1, p0, Laun;->s:Ljava/util/List;

    iget-object v3, p0, Laun;->v:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 586
    .end local v10    # "index":I
    :cond_a
    iget-object v1, p0, Laun;->t:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauy;

    .line 10056
    iget-boolean v11, v1, Lauy;->a:Z

    .line 587
    .local v11, "isFolded":Z
    if-eqz v11, :cond_b

    .line 588
    iget-object v1, p0, Laun;->s:Ljava/util/List;

    iget-object v2, p0, Laun;->t:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 590
    :cond_b
    iget-object v1, p0, Laun;->s:Ljava/util/List;

    iget-object v2, p0, Laun;->t:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lauz;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 820
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lauz;>;"
    iget-object v0, p0, Laun;->r:Laut;

    .line 11045
    iget-object v1, v0, Laut;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11046
    if-eqz p1, :cond_0

    .line 11047
    iget-object v1, v0, Laut;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11049
    :cond_0
    invoke-virtual {v0}, Laut;->notifyDataSetChanged()V

    .line 821
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "isSchedule"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1360
    if-eqz p1, :cond_0

    .line 1361
    iget-object v0, p0, Laun;->R:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Laun;->S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Laun;->P:Landroid/widget/ImageView;

    sget v1, Laow$c;->calendar_bg_setting_unswitch_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1364
    iget-object v0, p0, Laun;->Q:Landroid/widget/ImageView;

    sget v1, Laow$c;->calendar_bg_setting_switch_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1371
    :goto_0
    return-void

    .line 1366
    :cond_0
    iget-object v0, p0, Laun;->R:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1367
    iget-object v0, p0, Laun;->S:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Laun;->P:Landroid/widget/ImageView;

    sget v1, Laow$c;->calendar_bg_setting_switch_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1369
    iget-object v0, p0, Laun;->Q:Landroid/widget/ImageView;

    sget v1, Laow$c;->calendar_bg_setting_unswitch_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1255
    iget-boolean v0, p0, Laun;->D:Z

    if-eqz v0, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1258
    :cond_0
    iput-boolean v1, p0, Laun;->D:Z

    .line 1259
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarDrawerContainer] loadCalendarShareAsync"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v0, Laun$25;

    invoke-direct {v0, p0}, Laun$25;-><init>(Laun;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Laun;->a:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 11434
    iget-object v2, v1, Latf;->b:Latf$a;

    new-instance v3, Latf$14;

    invoke-direct {v3, v1, v0}, Latf$14;-><init>(Latf;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Latf$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
