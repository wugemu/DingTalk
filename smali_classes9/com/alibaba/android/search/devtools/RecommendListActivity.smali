.class public Lcom/alibaba/android/search/devtools/RecommendListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "RecommendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/devtools/RecommendListActivity$a;,
        Lcom/alibaba/android/search/devtools/RecommendListActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lemv;

.field private c:Lesq;

.field private d:Lesp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 46
    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->c:Lesq;

    .line 1213
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lesq;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1095
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$3;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/devtools/RecommendListActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Total: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 46
    .line 2105
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->d:Lesp;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lesp;->a(I)Ljava/util/List;

    move-result-object v0

    .line 2106
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2110
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .line 2112
    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2115
    :cond_2
    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/search/devtools/RecommendListActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$4;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V

    invoke-virtual {v0, v1, v2}, Liaw;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/search/devtools/RecommendListActivity;)Lemv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b:Lemv;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/devtools/RecommendListActivity;)Lesq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->c:Lesq;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/devtools/RecommendListActivity;)Lesp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->d:Lesp;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lemt$f;->activity_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->setContentView(I)V

    .line 1090
    sget v0, Lemt$e;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->a:Landroid/widget/ListView;

    .line 60
    new-instance v0, Lesq;

    invoke-direct {v0}, Lesq;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->c:Lesq;

    .line 61
    new-instance v0, Lesp;

    invoke-direct {v0}, Lesp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->d:Lesp;

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loadType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$b;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b:Lemv;

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b:Lemv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    const-class v0, Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$1;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$a;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b:Lemv;

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b:Lemv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    const-class v0, Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/devtools/RecommendListActivity$2;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
