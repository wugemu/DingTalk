.class final Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;
.super Ljava/lang/Object;
.source "DingOverdueTaskActivity.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "orderlyData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .local p2, "orderlessData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$4;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->g(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    .line 196
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "dingListFragment, onDataSetChanged: orderlyData"

    aput-object v0, v2, v1

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v3, ", orderlessData:"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 199
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 196
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 200
    return-void

    :cond_3
    move v0, v1

    .line 197
    goto :goto_0
.end method
