.class public Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "EmotionDownloadRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldpt$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;
    .param p1, "x1"    # J

    .prologue
    .line 27
    .line 2154
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 27
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Lctk$g;->emotion_download_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->setContentView(I)V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_emotion_activity_title_download_record:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1074
    sget v0, Lctk$f;->list_emotion_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1075
    sget v0, Lctk$f;->list_emotion_packages:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->b:Landroid/widget/ListView;

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->d:Ljava/util/List;

    .line 1080
    new-instance v0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->d:Ljava/util/List;

    sget-object v2, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;->NORMAL:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1083
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->showLoadingDialog()V

    .line 1084
    invoke-static {}, Ldxo;->a()Ldxn;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v0}, Ldxn;->a(Lcma;)V

    .line 1119
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->e:Ldpt$a;

    .line 1149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1150
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->e:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->a(Ldpt$a;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;->e:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->b(Ldpt$a;)V

    .line 52
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 53
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
    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 1163
    .end local v0    # "item":Ljava/lang/Object;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/emotion"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionDownloadRecordActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
