.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 479
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string/jumbo v0, "pref_key_recommend_resource_last_modify"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 483
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .line 484
    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move v5, v4

    .line 483
    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 486
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->W:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    invoke-static {v0, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 488
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    return-void

    .line 484
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$3;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
