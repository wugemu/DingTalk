.class public Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "OrgLineFragment.java"


# instance fields
.field private a:Lcom/alibaba/android/user/contact/view/LineChartView;

.field private b:Ljava/util/List;
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
    .line 39
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
    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->b:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 69
    new-instance v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/model/OrgTrendItemObject;-><init>()V

    .line 70
    .local v1, "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "itemObject":Lcom/alibaba/android/user/model/OrgTrendItemObject;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->a:Lcom/alibaba/android/user/contact/view/LineChartView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/view/LineChartView;->setList(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/LineChartView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->a:Lcom/alibaba/android/user/contact/view/LineChartView;

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->a:Lcom/alibaba/android/user/contact/view/LineChartView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/LineChartView;->setScreenWidth(I)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->a:Lcom/alibaba/android/user/contact/view/LineChartView;

    sget v1, Lezg$g;->line_score_selected:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/LineChartView;->setSelectDrawable(I)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->a:Lcom/alibaba/android/user/contact/view/LineChartView;

    sget v1, Lezg$g;->line_score_unselected:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/LineChartView;->setUnselectDrawable(I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgLineFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lezg$j;->fragment_org_line:I

    return v0
.end method
