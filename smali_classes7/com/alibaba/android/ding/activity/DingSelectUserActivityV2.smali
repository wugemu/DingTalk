.class public Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingSelectUserActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;,
        Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:[Ljava/lang/String;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lbbc$b;

.field private v:Lbbc$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->t:Ljava/util/HashMap;

    .line 387
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lbbc$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->v:Lbbc$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->r:Z

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->s:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->p:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Laxp$g;->ding_activity_ding_choose_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->setContentView(I)V

    .line 1179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->actbar_textview:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1180
    sget v0, Laxp$f;->tv_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b:Landroid/widget/TextView;

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b:Landroid/widget/TextView;

    sget v2, Laxp$i;->sure:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$6;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a:Landroid/view/View;

    .line 1095
    sget v0, Laxp$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->c:Landroid/widget/ListView;

    .line 1096
    sget v0, Laxp$f;->letter_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 1097
    sget v0, Laxp$f;->tv_overlay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->d:Landroid/widget/TextView;

    .line 1098
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->h:Landroid/widget/LinearLayout;

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->h:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1103
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_header_add_new_recipient:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    sget v1, Laxp$f;->ll_add_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->k:Landroid/widget/LinearLayout;

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    sget v1, Laxp$f;->ll_add_person:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->l:Landroid/widget/LinearLayout;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    sget v1, Laxp$f;->ll_add_group_member:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->m:Landroid/widget/LinearLayout;

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    sget v1, Laxp$f;->ll_select_myself:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->n:Landroid/widget/LinearLayout;

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    sget v1, Laxp$f;->recent_receiver_tip_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->j:Landroid/widget/TextView;

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    sget v1, Laxp$f;->select_receiver_tip_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->q:Landroid/widget/TextView;

    .line 1113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_header_check:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->f:Landroid/view/View;

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->f:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->g:Landroid/widget/CheckBox;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_select_user_footer:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->o:Landroid/view/View;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->o:Landroid/view/View;

    sget v1, Laxp$f;->tv_select_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->p:Landroid/widget/TextView;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2131
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$1;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2138
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$2;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->n:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$3;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2152
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$4;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$5;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2175
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 3126
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$b;

    invoke-direct {v0, p0, v5}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$b;-><init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;B)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->u:Lbbc$b;

    .line 3127
    new-instance v0, Lbbd;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->u:Lbbc$b;

    invoke-direct {v0, p0, v1, v2}, Lbbd;-><init>(Landroid/app/Activity;Landroid/content/Intent;Lbbc$b;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->v:Lbbc$a;

    .line 75
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

    .line 85
    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->r:Z

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    sget v2, Laxp$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 87
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 88
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 90
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->v:Lbbc$a;

    invoke-interface {v0}, Lbbc$a;->i()V

    .line 80
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 81
    return-void
.end method
