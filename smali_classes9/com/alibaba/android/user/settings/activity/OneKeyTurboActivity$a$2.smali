.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/statistics/Statistics;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Lcom/alibaba/doraemon/statistics/Statistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "turbo_clean_message"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "turbo_clean_message"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 365
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->d(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 366
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    .line 2310
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "turbo_clean_message"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 2311
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "turbo_clean_message"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "turbo_clean_cache"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 2314
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "turbo_clean_cache"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 2317
    new-instance v1, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method
