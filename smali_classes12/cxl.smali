.class public final Lcxl;
.super Lcxg;
.source "SessionTimeItemHolder.java"


# instance fields
.field A:Landroid/widget/TextView;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcxg;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcxl;ZLcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 1
    .param p0, "x0"    # Lcxl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcxl;->a(ZLcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    return-void
.end method

.method private a(ZLcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 2
    .param p1, "animation"    # Z
    .param p2, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcxl;->A:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcxl;->C:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcxl;->r:Lcxi;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->hideChecked:Z

    .line 86
    iget-object v0, p0, Lcxl;->r:Lcxi;

    iget-object v1, p0, Lcxl;->A:Landroid/widget/TextView;

    invoke-interface {v0, p1, v1, p2}, Lcxi;->a(ZLandroid/widget/TextView;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->session_item_time_span:I

    return v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    sget v0, Lctk$f;->rl_timespan:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcxl;->B:Landroid/widget/RelativeLayout;

    .line 37
    sget v0, Lctk$f;->tv_time_span:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxl;->D:Landroid/widget/TextView;

    .line 38
    sget v0, Lctk$f;->rl_hide_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcxl;->C:Landroid/widget/RelativeLayout;

    .line 39
    sget v0, Lctk$f;->btn_session_hide:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxl;->A:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcxl;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 45
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcxl;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcxl;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1053
    iget-object v0, p0, Lcxl;->D:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->timeSpan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v0, p0, Lcxl;->A:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1055
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->hideChecked:Z

    if-nez v0, :cond_2

    .line 1056
    iget-object v0, p0, Lcxl;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcxl;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcxl;->A:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    :goto_1
    iget-object v0, p0, Lcxl;->C:Landroid/widget/RelativeLayout;

    new-instance v1, Lcxl$1;

    invoke-direct {v1, p0, p1}, Lcxl$1;-><init>(Lcxl;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    iget-object v0, p0, Lcxl;->A:Landroid/widget/TextView;

    new-instance v1, Lcxl$2;

    invoke-direct {v1, p0, p1}, Lcxl$2;-><init>(Lcxl;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-direct {p0, v2, p1}, Lcxl;->a(ZLcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_1
.end method
