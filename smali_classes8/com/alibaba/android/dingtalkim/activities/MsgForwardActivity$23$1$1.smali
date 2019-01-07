.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    new-instance v1, Lcvm;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcvm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/HashSet;

    move-result-object v1

    .line 2060
    iput-object v1, v0, Lcvm;->b:Ljava/util/HashSet;

    .line 1358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcvm;->a(Z)V

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c()V

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->m(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    new-instance v1, Lcvm;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcvm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1375
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->c:Ljava/util/ArrayList;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1$1;->e:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23$1;->b:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 1419
    return-void
.end method
