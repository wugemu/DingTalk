.class public Lcom/alibaba/android/user/settings/activity/SettingLabActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SettingLabActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lfwj;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lezg$j;->layout_setting_lab:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->setContentView(I)V

    .line 53
    sget v0, Lezg$l;->dt_setting_lab_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lezg$h;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->a:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->view_lab_header:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->c:Landroid/view/View;

    .line 59
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->view_lab_footer:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->d:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->tv_copyright_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->e:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->tv_lab_copyright:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->f:Landroid/widget/TextView;

    .line 1068
    new-instance v0, Lfwj;

    invoke-direct {v0, p0}, Lfwj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->b:Lfwj;

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2046
    new-instance v1, Lcom/alibaba/android/user/settings/model/LabItem;

    invoke-direct {v1, v3}, Lcom/alibaba/android/user/settings/model/LabItem;-><init>(I)V

    .line 2047
    sget v2, Lezg$l;->dt_im_at_me_messages:I

    iput v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->title:I

    .line 2048
    sget v2, Lezg$l;->dt_lab_at_me_summary:I

    iput v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->summary:I

    .line 2049
    sget v2, Lezg$l;->dt_lab_at_me_content:I

    iput v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->content:I

    .line 2050
    sget v2, Lezg$g;->icon_at_me_thumb_zh:I

    iput v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->thumbIcon:I

    .line 2051
    sget v2, Lezg$g;->icon_at_me_large_zh:I

    iput v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->icon:I

    .line 2052
    const-string/jumbo v2, "https://h5.dingtalk.com/feedback/index.html?lwfrom=20160929015637900&id=993"

    iput-object v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->feedbackUrl:Ljava/lang/String;

    .line 2053
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->A()Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/android/user/settings/model/LabItem;->enable:Z

    .line 2054
    iput v3, v1, Lcom/alibaba/android/user/settings/model/LabItem;->labStatus:I

    .line 1073
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->b:Lfwj;

    invoke-virtual {v1, v0}, Lfwj;->a(Ljava/util/List;)V

    .line 1083
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42c00000    # 96.0f

    .line 1084
    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42fc0000    # 126.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 1086
    if-lez v1, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1088
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1089
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1094
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->b:Lfwj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SettingLabActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SettingLabActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/SettingLabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/settings/model/LabItem;

    .line 113
    .local v0, "labItem":Lcom/alibaba/android/user/settings/model/LabItem;
    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/setting_lab_detail.html"

    new-instance v3, Lcom/alibaba/android/user/settings/activity/SettingLabActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/SettingLabActivity;Lcom/alibaba/android/user/settings/model/LabItem;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 123
    :cond_0
    return-void
.end method
