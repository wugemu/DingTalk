.class public Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BaseSelectActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcia;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_select_result_index"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->e:Lcia;

    .line 2081
    iget v2, v2, Lcia;->a:I

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->a()V

    .line 48
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->finish()V

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    sget v0, Lcig$h;->layout_select_base_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->setContentView(I)V

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_base_select_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->b:Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_base_select_desc_res_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->c:Ljava/util/List;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->finish()V

    .line 1072
    :goto_1
    sget v0, Lcig$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->a:Landroid/widget/ListView;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_2
    new-instance v0, Lcia;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->c:Ljava/util/List;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcia;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->e:Lcia;

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->e:Lcia;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1067
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_base_select_initial_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->d:I

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_base_select_broadcast_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->a()V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseSelectActivity;->finish()V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
