.class public Lcom/alibaba/android/user/profile/found/MineFoundActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MineFoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Landroid/content/BroadcastReceiver;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private X:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lfbw;

.field private aa:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Lblc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblc",
            "<",
            "Lcry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View;

.field private s:Ljava/lang/String;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Ljava/lang/String;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/view/View;

.field private z:Lfwq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 128
    const-string/jumbo v0, "https://perks.dingtalk.com/fulishe/index.html?dingtalkid=__DINGTALKID__"

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q:Ljava/lang/String;

    .line 144
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->B:Z

    .line 145
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->C:Z

    .line 146
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->D:Z

    .line 147
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->E:Z

    .line 148
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->F:Z

    .line 149
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->G:Z

    .line 150
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->H:Z

    .line 151
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    .line 152
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->J:Z

    .line 153
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->K:Z

    .line 154
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(IIZ)V
    .locals 1
    .param p1, "widgetId"    # I
    .param p2, "visibility"    # I
    .param p3, "configControl"    # Z

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Landroid/view/View;IZ)V

    .line 643
    return-void
.end method

.method private static a(Landroid/view/View;IZ)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I
    .param p2, "configControl"    # Z

    .prologue
    .line 646
    if-nez p0, :cond_0

    .line 654
    :goto_0
    return-void

    .line 649
    :cond_0
    if-nez p2, :cond_1

    .line 650
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 653
    :cond_1
    invoke-static {p0, p1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;II)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 93
    .line 11402
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->k:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 11406
    :cond_0
    :goto_0
    return-void

    .line 11408
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 11409
    if-lez p1, :cond_3

    .line 11410
    sget v1, Lezg$l;->dt_contact_dingIndex_score:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 11415
    :goto_1
    if-eqz p2, :cond_5

    .line 11416
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 11417
    if-lez p2, :cond_4

    .line 11418
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lezg$l;->icon_rise_fill:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 11422
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 11424
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->k:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11425
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11430
    :goto_3
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11431
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11434
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11435
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 11412
    :cond_3
    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 11419
    :cond_4
    if-gez p2, :cond_2

    .line 11420
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lezg$l;->icon_decline_fill:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11427
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 11428
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->T:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 511
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->V()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 514
    :cond_0
    sget v1, Lezg$h;->cell_e_app:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    .line 515
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    sget v1, Lezg$h;->my_mini_app_red_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 518
    iget-boolean v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    if-eqz v1, :cond_1

    .line 519
    new-instance v1, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Y:Lblc;

    .line 535
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v1

    sget-object v2, Lble;->ab:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Y:Lblc;

    invoke-virtual {v1, v2, v3}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    sget v2, Lezg$h;->my_mini_app_list_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 539
    .local v0, "latestLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lfwq;

    invoke-direct {v1, v0}, Lfwq;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->z:Lfwq;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    .line 10440
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "intent_key_update_mine_found_red_dot"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10441
    const-string/jumbo v2, "intent_key_update_mine_found_red_dot_show_bool"

    .line 10446
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->N:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->O:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->R:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->S:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->T:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->U:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10441
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10442
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 93
    return-void

    .line 10446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->S:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 723
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->b()Z

    move-result v0

    .line 724
    .local v0, "showWorkCircleEntry":Z
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->B:Z

    if-eqz v2, :cond_2

    .line 725
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    invoke-static {v2, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 726
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c:Landroid/view/View;

    invoke-static {v2, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 727
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d:Landroid/view/View;

    invoke-static {v2, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 733
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->X:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->B:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 734
    return-void

    .line 729
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    invoke-static {v2, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 730
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c:Landroid/view/View;

    invoke-static {v2, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 731
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d:Landroid/view/View;

    invoke-static {v2, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 902
    const-string/jumbo v0, "MineFoundActivity"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->U:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->O:Z

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->P:Z

    return p1
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Q:Z

    return p1
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->R:Z

    return p1
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->V:Z

    return p1
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c()V

    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lfwq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->z:Lfwq;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->x:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v18

    .line 740
    .local v18, "vid":I
    sget v2, Lezg$h;->cell_work_circle:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 741
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;)V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    sget v2, Lezg$h;->cell_org_square:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 743
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    const-class v3, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "homepage_contacts_square_click"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 744
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_2
    sget v2, Lezg$h;->cell_medal:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 746
    invoke-static/range {p0 .. p0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Landroid/content/Context;)V

    .line 747
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->Y:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto :goto_0

    .line 748
    :cond_3
    sget v2, Lezg$h;->cell_ding_index:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 749
    const-wide/16 v14, 0x0

    .line 750
    .local v14, "mainOrgId":J
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 751
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    iget-wide v14, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 753
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_0

    .line 756
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v12

    .line 758
    .local v12, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "ding_index_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 760
    .local v13, "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 761
    move-object v4, v13

    .line 767
    .local v4, "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->N:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 762
    .end local v4    # "url":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "contact_dingindex_new_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 763
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "https://h5.dingtalk.com/ding-index-v4/index.html?showmenu=false&dd_progress=false&corpId="

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 765
    .end local v4    # "url":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "https://h5.dingtalk.com/ding-index/index.html?dd_nav_bgcolor=FF47BAFF#/index?corpId="

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 769
    .end local v4    # "url":Ljava/lang/String;
    .end local v12    # "corpId":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    .end local v14    # "mainOrgId":J
    :cond_7
    sget v2, Lezg$h;->cell_my_customer_service:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 770
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->clickStatistics(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->c:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 772
    const-string/jumbo v2, "mainpage_service_center_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 775
    const-wide/16 v14, 0x0

    .line 776
    .restart local v14    # "mainOrgId":J
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 777
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    iget-wide v14, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 779
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_a

    invoke-static {}, Lcms;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 780
    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html"

    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 784
    .restart local v4    # "url":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "appoint_custom_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 785
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 786
    move-object v4, v13

    .line 789
    :cond_9
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    sget v3, Lezg$l;->setting_service_center_title:I

    .line 790
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    .line 789
    invoke-virtual/range {v2 .. v7}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 782
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_a
    const-string/jumbo v2, "https://h5.dingtalk.com/40plan/appoint-custom/index.html"

    invoke-static {v2, v14, v15}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_2

    .line 791
    .end local v4    # "url":Ljava/lang/String;
    .end local v14    # "mainOrgId":J
    :cond_b
    sget v2, Lezg$h;->cell_study_center:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_d

    .line 792
    const-string/jumbo v2, "mainpage_studycenter_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 793
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->J:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 796
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "customr_study_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 797
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 798
    move-object v4, v13

    .line 802
    .restart local v4    # "url":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 800
    .end local v4    # "url":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "https://h5.dingtalk.com/40plan/h5-customer-study/index.html?dd_func_wk=true&dd_progress=false"

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_3

    .line 803
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_d
    sget v2, Lezg$h;->cell_smart_device:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_f

    .line 805
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "sdevice_entry_tmall_url_enable"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 806
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "smart_device_click_setting_page_tmall_url"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    const-string/jumbo v7, "https://pages.tmall.com/wow/act/20529/dingding?wh_weex=true&wh_biz=tm"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v10}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 809
    :cond_e
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "smart_device_click_setting_page_dingtalk_url"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 810
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v5

    const-string/jumbo v7, "https://h5.dingtalk.com/smartDevice/index.html"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v10}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 812
    :cond_f
    sget v2, Lezg$h;->cell_promotion:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_13

    .line 813
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->clickStatistics(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->g:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 9868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 9872
    const-string/jumbo v2, ""

    .line 9873
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 9874
    if-eqz v3, :cond_10

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 9875
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    .line 9877
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q:Ljava/lang/String;

    const-string/jumbo v5, "__DINGTALKID__"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q:Ljava/lang/String;

    .line 818
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q:Ljava/lang/String;

    .line 819
    .restart local v4    # "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "welfare_url"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 820
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 821
    move-object v4, v13

    .line 823
    :cond_12
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_13
    sget v2, Lezg$h;->cell_school_recruitment:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 825
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "my_recruitment_click_page"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 827
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "my_university_url_v2"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 828
    .restart local v13    # "fastconfigUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 829
    move-object v4, v13

    .line 833
    .restart local v4    # "url":Ljava/lang/String;
    :goto_4
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 834
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 836
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->aa:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 9881
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v3, "tbffmpeg"

    new-instance v5, Lcom/alibaba/android/user/profile/found/MineFoundActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$4;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    invoke-virtual {v2, v3, v5}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    goto/16 :goto_0

    .line 831
    .end local v4    # "url":Ljava/lang/String;
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->s:Ljava/lang/String;

    .restart local v4    # "url":Ljava/lang/String;
    goto :goto_4

    .line 838
    .end local v4    # "url":Ljava/lang/String;
    .end local v13    # "fastconfigUrl":Ljava/lang/String;
    :cond_15
    sget v2, Lezg$h;->cell_invitation:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_17

    .line 839
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "MineFoundActivity"

    const-string/jumbo v5, "mainpage_invite_click"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 841
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v2

    sget v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-eq v2, v3, :cond_16

    .line 842
    const-string/jumbo v2, "https://h5.dingtalk.com/invite/invite.html"

    const-string/jumbo v3, "h5.dingtalk.com"

    const-string/jumbo v5, "yfh5.dingtalk.com"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->u:Ljava/lang/String;

    .line 844
    :cond_16
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->u:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "pref_key_recommend_info_first_show_"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 847
    .local v17, "showKey":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->v:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 849
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "pref_key_recommend_info_first_show_"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 850
    .end local v17    # "showKey":Ljava/lang/String;
    :cond_17
    sget v2, Lezg$h;->cell_e_app:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_0

    .line 851
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 852
    .restart local v11    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ding_content_type"

    const/16 v3, 0x3e9

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const/16 v16, 0x0

    .line 856
    .local v16, "showGuide":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    if-eqz v2, :cond_19

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    .line 858
    const/16 v16, 0x1

    .line 860
    :cond_18
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->ab:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 862
    :cond_19
    const-string/jumbo v2, "mini_app_list_show_guide"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 863
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToMiniAppList(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/16 v3, 0x8

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sget v0, Lezg$j;->activity_mine_found:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->setContentView(I)V

    .line 1588
    invoke-static {}, Lflf;->a()Lflf;

    move-result-object v0

    invoke-virtual {v0}, Lflf;->b()Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;

    move-result-object v4

    .line 1589
    if-eqz v4, :cond_0

    .line 1594
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showWorkCircle:I

    if-ne v0, v10, :cond_d

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->B:Z

    .line 1595
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showOrgSquare:I

    if-ne v0, v10, :cond_e

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->C:Z

    .line 1596
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMedal:I

    if-ne v0, v10, :cond_f

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->K:Z

    .line 1597
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showDingIndex:I

    if-ne v0, v10, :cond_10

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->D:Z

    .line 1598
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showMyCustomerService:I

    if-ne v0, v10, :cond_11

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->E:Z

    .line 1599
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showStudyCenter:I

    if-ne v0, v10, :cond_12

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->F:Z

    .line 1600
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSmartDevice:I

    if-ne v0, v10, :cond_13

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->G:Z

    .line 1601
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showPromotion:I

    if-ne v0, v10, :cond_14

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->H:Z

    .line 1602
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showSchoolRecruitment:I

    if-ne v0, v10, :cond_15

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    .line 1603
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showInvitation:I

    if-ne v0, v10, :cond_16

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->J:Z

    .line 1604
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/CustomEntryConfigObject;->showEApp:I

    if-ne v0, v10, :cond_17

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    .line 2269
    :cond_0
    sget v0, Lezg$h;->cell_work_circle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    .line 2270
    sget v0, Lezg$h;->section_divider_cell_circle_up:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c:Landroid/view/View;

    .line 2271
    sget v0, Lezg$h;->section_divider_cell_circle_down:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d:Landroid/view/View;

    .line 2272
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2273
    new-instance v4, Lfbw;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    sget v5, Lezg$h;->img_layout:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v4, v0}, Lfbw;-><init>(Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a:Lfbw;

    .line 2274
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b:Landroid/view/View;

    sget v4, Lezg$h;->work_circle_red_dot:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 2275
    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->B:Z

    if-eqz v4, :cond_1

    .line 2276
    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$7;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ac:Lblc;

    .line 2292
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->X:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ac:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 2294
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c()V

    .line 2325
    sget v0, Lezg$h;->cell_org_square:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->e:Landroid/widget/RelativeLayout;

    .line 2326
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3298
    sget v0, Lezg$h;->cell_medal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->f:Landroid/widget/RelativeLayout;

    .line 3299
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3300
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->f:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->medal_entry_reddot:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 3301
    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->K:Z

    if-eqz v4, :cond_2

    .line 3302
    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ab:Lblc;

    .line 3320
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->Y:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ab:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 3330
    :cond_2
    sget v0, Lezg$h;->cell_ding_index:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g:Landroid/widget/LinearLayout;

    .line 3331
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3333
    sget v0, Lezg$h;->ll_ding_index_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h:Landroid/widget/LinearLayout;

    .line 3334
    sget v0, Lezg$h;->tv_ding_index_score:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i:Landroid/widget/TextView;

    .line 3335
    sget v0, Lezg$h;->iv_ding_index_change_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 3336
    sget v0, Lezg$h;->tv_ding_index_change:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->k:Landroid/widget/TextView;

    .line 3338
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3339
    sget v0, Lezg$h;->ding_index_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 3340
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->D:Z

    if-eqz v0, :cond_3

    .line 3341
    new-instance v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->aa:Lblc;

    .line 3359
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->N:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->aa:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 3362
    :cond_3
    new-instance v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$10;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 3390
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 3391
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 3393
    :goto_b
    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    .line 3397
    const-class v6, Lcma;

    invoke-static {v0, v6, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3398
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v6

    invoke-interface {v6, v0, v4, v5}, Lezx;->b(Lcma;J)V

    .line 4244
    :cond_4
    sget v0, Lezg$h;->cell_my_customer_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->m:Landroid/widget/RelativeLayout;

    .line 4245
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4246
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->m:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->service_center_red_dot:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 4247
    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->E:Z

    if-eqz v4, :cond_5

    .line 4248
    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$6;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ad:Lblc;

    .line 4264
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ad:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 5219
    :cond_5
    sget v0, Lezg$h;->cell_study_center:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->n:Landroid/widget/RelativeLayout;

    .line 5220
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5221
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->n:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->ad_study_center_red_dot:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 5222
    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->F:Z

    if-eqz v4, :cond_6

    .line 5223
    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->W:Lblc;

    .line 5239
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->J:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->W:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 2206
    :cond_6
    sget v0, Lezg$h;->cell_smart_device:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->o:Landroid/widget/RelativeLayout;

    .line 2207
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5472
    sget v0, Lezg$h;->cell_promotion:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->p:Landroid/widget/RelativeLayout;

    .line 5473
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5474
    sget v0, Lezg$h;->promotion_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 5475
    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->H:Z

    if-eqz v4, :cond_7

    .line 5476
    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$11;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$11;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Z:Lblc;

    .line 5495
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Z:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 5543
    :cond_7
    sget v0, Lezg$h;->cell_school_recruitment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    .line 5544
    invoke-static {p0}, Lfls;->b(Landroid/content/Context;)Z

    move-result v0

    .line 5545
    if-eqz v0, :cond_18

    .line 5546
    const-string/jumbo v0, "https://recruiment.dingtalk.com/recruiment/mobile/index?showmenu=false&dd_progress=false&dd_share=false&isStu=true#/myUniversity"

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->s:Ljava/lang/String;

    .line 5547
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5548
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    invoke-static {v0, v2, v4}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Landroid/view/View;IZ)V

    .line 5549
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    sget v4, Lezg$h;->my_university_red_dot:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 5550
    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    if-eqz v4, :cond_8

    .line 5551
    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->X:Lblc;

    .line 5569
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v4, Lble;->aa:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->X:Lblc;

    invoke-virtual {v0, v4, v5}, Lfvb;->a(Ljava/lang/String;Lblc;)V

    .line 5579
    :cond_8
    :goto_c
    sget v0, Lezg$h;->cell_invitation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->t:Landroid/widget/RelativeLayout;

    .line 5580
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->t:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->rl_recommend_icon:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->v:Landroid/widget/RelativeLayout;

    .line 5581
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->v:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->tv_recommend_icon:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->w:Landroid/widget/TextView;

    .line 5582
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->v:Landroid/widget/RelativeLayout;

    sget v4, Lezg$h;->iv_recommend_red_dot:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->x:Landroid/widget/ImageView;

    .line 5583
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5584
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d()V

    .line 2215
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b()V

    .line 5657
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->M:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_9

    .line 5658
    new-instance v0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->M:Landroid/content/BroadcastReceiver;

    .line 5674
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5675
    const-string/jumbo v4, "pref_key_recommend_info_first_show_"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5676
    const-string/jumbo v4, "action_config_switch_key_ready"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5678
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6608
    :cond_9
    sget v4, Lezg$h;->cell_org_square:I

    .line 6623
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 6624
    if-eqz v0, :cond_19

    .line 6628
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v6, "hide_homepage_in_contactvc"

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    .line 6629
    if-nez v0, :cond_19

    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 6608
    :goto_d
    if-eqz v0, :cond_1a

    move v0, v2

    :goto_e
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->C:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6609
    sget v4, Lezg$h;->cell_medal:I

    .line 6633
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 6634
    if-eqz v0, :cond_1b

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_1b

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    move v0, v1

    .line 6609
    :goto_f
    if-eqz v0, :cond_1c

    invoke-static {v1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_10
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->K:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6610
    sget v4, Lezg$h;->cell_ding_index:I

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7459
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 7460
    if-eqz v0, :cond_22

    .line 7461
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    if-eqz v5, :cond_22

    .line 7462
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->roles:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_a
    move v0, v1

    .line 6610
    :goto_11
    if-eqz v0, :cond_1d

    move v0, v2

    :goto_12
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->D:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6611
    sget v0, Lezg$h;->cell_my_customer_service:I

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->E:Z

    invoke-direct {p0, v0, v2, v4}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6612
    sget v4, Lezg$h;->cell_study_center:I

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    :goto_13
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->F:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6613
    sget v0, Lezg$h;->cell_smart_device:I

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->G:Z

    invoke-direct {p0, v0, v2, v4}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6614
    sget v4, Lezg$h;->cell_promotion:I

    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    :goto_14
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->H:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6615
    sget v4, Lezg$h;->cell_school_recruitment:I

    invoke-static {p0}, Lfls;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    :goto_15
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6616
    sget v4, Lezg$h;->cell_invitation:I

    .line 7891
    const-string/jumbo v0, "pref_key_entry_switch_invitation"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 6616
    if-eqz v0, :cond_21

    move v0, v2

    :goto_16
    iget-boolean v5, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->J:Z

    invoke-direct {p0, v4, v0, v5}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6617
    sget v0, Lezg$h;->cell_e_app:I

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    invoke-direct {p0, v0, v3, v4}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(IIZ)V

    .line 6619
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v3, Lble;->aa:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    if-eqz v4, :cond_b

    invoke-static {p0}, Lfls;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    move v2, v1

    :cond_c
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 190
    return-void

    :cond_d
    move v0, v2

    .line 1594
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 1595
    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 1596
    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 1597
    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 1598
    goto/16 :goto_4

    :cond_12
    move v0, v2

    .line 1599
    goto/16 :goto_5

    :cond_13
    move v0, v2

    .line 1600
    goto/16 :goto_6

    :cond_14
    move v0, v2

    .line 1601
    goto/16 :goto_7

    :cond_15
    move v0, v2

    .line 1602
    goto/16 :goto_8

    :cond_16
    move v0, v2

    .line 1603
    goto/16 :goto_9

    :cond_17
    move v0, v2

    .line 1604
    goto/16 :goto_a

    .line 5572
    :cond_18
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 5573
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r:Landroid/view/View;

    iget-boolean v4, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->I:Z

    invoke-static {v0, v3, v4}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Landroid/view/View;IZ)V

    goto/16 :goto_c

    :cond_19
    move v0, v2

    .line 6629
    goto/16 :goto_d

    :cond_1a
    move v0, v3

    .line 6608
    goto/16 :goto_e

    :cond_1b
    move v0, v2

    .line 6637
    goto/16 :goto_f

    :cond_1c
    move v0, v3

    .line 6609
    goto/16 :goto_10

    :cond_1d
    move v0, v3

    .line 6610
    goto/16 :goto_12

    :cond_1e
    move v0, v3

    .line 6612
    goto/16 :goto_13

    :cond_1f
    move v0, v3

    .line 6614
    goto/16 :goto_14

    :cond_20
    move v0, v3

    .line 6615
    goto/16 :goto_15

    :cond_21
    move v0, v3

    .line 6616
    goto :goto_16

    :cond_22
    move v0, v2

    goto/16 :goto_11

    :cond_23
    move-wide v4, v6

    goto/16 :goto_b
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 953
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->W:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 954
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->aa:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->X:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 955
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Y:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 956
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->Z:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 957
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->N:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->aa:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 958
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->Y:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ab:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 959
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->X:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ac:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 960
    invoke-static {}, Lfvb;->a()Lfvb;

    move-result-object v0

    sget-object v1, Lble;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->ad:Lblc;

    invoke-virtual {v0, v1, v2}, Lfvb;->b(Ljava/lang/String;Lblc;)V

    .line 962
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 963
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 501
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 503
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a:Lfbw;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a:Lfbw;

    invoke-virtual {v0, p0}, Lfbw;->b(Landroid/app/Activity;)V

    .line 8683
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->V()Z

    move-result v3

    .line 8684
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->ab:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    if-eqz v0, :cond_1

    if-nez v3, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 8685
    if-nez v3, :cond_4

    .line 8717
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8718
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Landroid/view/View;IZ)V

    .line 8704
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 8684
    goto :goto_0

    .line 9709
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 9710
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->y:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->L:Z

    invoke-static {v0, v1, v3}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Landroid/view/View;IZ)V

    .line 8690
    :goto_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8691
    const-string/jumbo v3, "mini_app_list_type"

    const-string/jumbo v4, "my_applications"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8692
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    .line 8693
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/profile/found/MineFoundActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity$3;-><init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 8692
    invoke-virtual {v3, v0, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->fetchMiniAppIconListByType(Ljava/lang/String;Lhma;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8702
    :catch_0
    move-exception v0

    .line 8703
    const-string/jumbo v3, "refresh mini app entry fail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9712
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b()V

    goto :goto_2
.end method
