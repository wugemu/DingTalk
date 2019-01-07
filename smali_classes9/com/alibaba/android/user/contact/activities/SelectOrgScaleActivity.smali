.class public Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectOrgScaleActivity.java"

# interfaces
.implements Lfkr$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$b;,
        Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

.field private c:Lfks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;)Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->b:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->dismissLoadingDialog()V

    .line 98
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PositionData;>;"
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->showLoadingDialog()V

    .line 93
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->b:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;->a(Ljava/util/List;)V

    .line 83
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v1, Lezg$j;->activity_select_org_scale:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->setContentView(I)V

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$l;->dt_org_create_scale:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    .local v0, "selectedScale":I
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "anchor_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    :cond_1
    new-instance v1, Lfks;

    invoke-direct {v1, p0, p0}, Lfks;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkr$b;)V

    .line 49
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->c:Lfks;

    .line 1088
    iget-object v1, v2, Lfks;->b:Lfkr$b;

    invoke-interface {v1}, Lfkr$b;->b()V

    .line 1089
    new-instance v1, Lfks$2;

    invoke-direct {v1, v2}, Lfks$2;-><init>(Lfks;)V

    .line 1116
    iget-object v3, v2, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    iget-object v2, v2, Lfks;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v3, v1, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1120
    :cond_2
    invoke-static {}, Lfaj;->a()Lfbi;

    move-result-object v2

    invoke-interface {v2, v1}, Lfbi;->a(Lcma;)V

    .line 51
    sget v1, Lezg$h;->lv_org_scale:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->a:Landroid/widget/ListView;

    .line 52
    new-instance v1, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->b:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->b:Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->a:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lfkr$a;

    .line 2087
    check-cast p1, Lfks;

    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectOrgScaleActivity;->c:Lfks;

    .line 31
    return-void
.end method
