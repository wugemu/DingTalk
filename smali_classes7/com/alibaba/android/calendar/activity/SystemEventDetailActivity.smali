.class public Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SystemEventDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListPopupWindow;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laoz$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Lapt$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->b:Ljava/util/List;

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;Landroid/view/View;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 39
    .line 3124
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 3125
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    .line 3126
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->b:Ljava/util/List;

    new-instance v1, Laoz$a;

    sget v2, Laow$f;->dt_delete_schedule:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Laoz$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3127
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    new-instance v1, Laoz;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Laoz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3128
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laow$b;->calendar_more_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 3129
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 3130
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 3131
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$2;-><init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3149
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3156
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Lapt$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->m:Lapt$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->a:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Laow$e;->calendar_activity_ding_system_event_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->setContentView(I)V

    .line 1106
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laow$e;->calendar_layout_actbar_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->c:Landroid/view/View;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->c:Landroid/view/View;

    sget v1, Laow$d;->menu_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1108
    new-instance v1, Lecw;

    sget v2, Laow$f;->icon_more:I

    .line 1109
    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Laow$a;->ui_common_theme_bg_color:I

    .line 1110
    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 1111
    sget v2, Laow$b;->calendar_actionbar_icon_size:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    .line 2070
    iput v2, v1, Lecw;->a:I

    .line 2079
    iput v2, v1, Lecw;->b:I

    .line 1114
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    sget v0, Laow$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->d:Landroid/widget/TextView;

    .line 1095
    sget v0, Laow$d;->tv_start_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->g:Landroid/widget/TextView;

    .line 1096
    sget v0, Laow$d;->tv_end_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->h:Landroid/widget/TextView;

    .line 1097
    sget v0, Laow$d;->tv_location:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->e:Landroid/widget/TextView;

    .line 1098
    sget v0, Laow$d;->tv_from:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->f:Landroid/widget/TextView;

    .line 1099
    sget v0, Laow$d;->rl_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->i:Landroid/widget/RelativeLayout;

    .line 1100
    sget v0, Laow$d;->tv_remind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j:Landroid/widget/TextView;

    .line 1101
    sget v0, Laow$d;->rl_remark:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->k:Landroid/widget/RelativeLayout;

    .line 1102
    sget v0, Laow$d;->tv_remark:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->l:Landroid/widget/TextView;

    .line 67
    new-instance v0, Lapu;

    new-instance v1, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;-><init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;B)V

    invoke-direct {v0, v1}, Lapu;-><init>(Lapt$b;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->m:Lapt$a;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->m:Lapt$a;

    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lapt$a;->a(Landroid/content/Intent;)V

    .line 2312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2313
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    const-string/jumbo v1, "ding_event_detail"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v1, 0x1

    sget v2, Laow$f;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 87
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 88
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 89
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->m:Lapt$a;

    invoke-interface {v0}, Lapt$a;->b()V

    .line 75
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->m:Lapt$a;

    invoke-interface {v0}, Lapt$a;->a()V

    .line 82
    return-void
.end method
