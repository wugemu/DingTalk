.class public abstract Lcom/alibaba/android/oa/fragment/OAContentFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "OAContentFragment.java"


# instance fields
.field private a:J

.field protected h:Lcom/alibaba/android/oa/fragment/OAFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 58
    .line 1068
    iput-wide p1, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a:J

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->d()V

    .line 62
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/oa/fragment/OAFragment;)V
    .locals 0
    .param p1, "container"    # Lcom/alibaba/android/oa/fragment/OAFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->h:Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 54
    return-void
.end method

.method public a(Lcrb;)V
    .locals 0
    .param p1, "listener"    # Lcrb;

    .prologue
    .line 75
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public abstract d()V
.end method

.method protected final d(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->h:Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->h:Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    if-eqz p1, :cond_0

    const-string/jumbo v0, "org_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v0, "org_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a:J

    .line 26
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a:J

    .line 31
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 32
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
