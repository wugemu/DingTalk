.class final Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;
.super Ljava/lang/Object;
.source "Add2GroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 277
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->a:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v1

    sget v2, Lezg$g;->icon_no_conversation_list:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->b(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    move-result-object v1

    sget v2, Lezg$l;->no_group_conversation:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5;->a:Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;->c(Lcom/alibaba/android/user/contact/activities/Add2GroupActivity;)V

    .line 283
    sget-object v1, Lffp;->d:Ljava/lang/String;

    invoke-static {v1}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 284
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "load gp sz="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/Add2GroupActivity$5$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    if-eqz v0, :cond_1

    .line 287
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 291
    :cond_1
    return-void

    .line 286
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_2
    throw v1
.end method
