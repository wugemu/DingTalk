.class final Leab$c$1;
.super Ljava/lang/Object;
.source "PushTaskListHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leab$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

.field final synthetic b:Leab$c;


# direct methods
.method constructor <init>(Leab$c;Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;)V
    .locals 0
    .param p1, "this$1"    # Leab$c;

    .prologue
    .line 382
    iput-object p1, p0, Leab$c$1;->b:Leab$c;

    iput-object p2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 385
    iget-object v1, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->actionUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    iget-object v1, p0, Leab$c$1;->b:Leab$c;

    iget-object v1, v1, Leab$c;->e:Leab;

    iget-object v1, v1, Leab;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    iget-object v2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->actionUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Leal;->a()Leal;

    move-result-object v1

    iget-object v2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    .line 1441
    iget-object v4, v1, Leal;->d:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1445
    iget-object v4, v1, Leal;->d:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1450
    iget-object v2, v1, Leal;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1454
    invoke-static {}, Leal;->f()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v1, v1, Leal;->d:Ljava/util/Set;

    invoke-static {v2, v1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1456
    const-string/jumbo v2, "key_pref_task_list_clicked_set"

    invoke-static {v2, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    iget-object v1, p0, Leab$c$1;->b:Leab$c;

    iget-object v1, v1, Leab$c;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v1, "groupId"

    iget-object v2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v1, "status"

    iget-object v2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->status:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v1, "actionURL"

    iget-object v2, p0, Leab$c$1;->a:Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->actionUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "PushTaskListHolder"

    const-string/jumbo v3, "guide_TaskCenter_view_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 399
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
