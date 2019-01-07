.class public Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "OrgManagerScoreFragment.java"


# instance fields
.field private a:Lcom/alibaba/android/user/contact/view/CircleView;

.field private b:Lcom/alibaba/android/user/contact/view/LineChartView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendItemObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->c:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 67
    new-instance v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgTrendItemObject;-><init>()V

    .line 68
    .local v1, "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "11.0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->dayTime:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->b:Lcom/alibaba/android/user/contact/view/LineChartView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/view/LineChartView;->setList(Ljava/util/List;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->circle_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/view/CircleView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->a:Lcom/alibaba/android/user/contact/view/CircleView;

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 54
    .local v0, "screen":I
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->a:Lcom/alibaba/android/user/contact/view/CircleView;

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/CircleView;->setCenterX(F)V

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->line:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/view/LineChartView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->b:Lcom/alibaba/android/user/contact/view/LineChartView;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->b:Lcom/alibaba/android/user/contact/view/LineChartView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/view/LineChartView;->setScreenWidth(I)V

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/OrgManagerScoreFragment;->I:Landroid/view/View;

    return-object v1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lezg$j;->fragment_org_manager_score:I

    return v0
.end method
