.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "turbo_clean_cache"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "turbo_clean_cache"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Z)Z

    .line 341
    return-void
.end method
