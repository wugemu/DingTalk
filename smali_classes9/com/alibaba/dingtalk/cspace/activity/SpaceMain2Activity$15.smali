.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 966
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 966
    check-cast p1, Lcry;

    .line 1969
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .line 1970
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    .line 1971
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1971
    if-eqz v0, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1973
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1974
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 1975
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .line 2091
    iget-object v1, p1, Lcry;->g:Ljava/lang/String;

    .line 1975
    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 1976
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    :goto_0
    return-void

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method
