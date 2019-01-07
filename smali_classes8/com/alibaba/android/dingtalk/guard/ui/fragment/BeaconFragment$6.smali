.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;
.super Ljava/lang/Object;
.source "BeaconFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lbsi;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsw$b;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Lbsw$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->a:Lbsw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 807
    check-cast p1, Ljava/util/List;

    .line 1810
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->D()V

    .line 1814
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1815
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Ljava/util/Map;

    move-result-object v1

    .line 1816
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1817
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-static {v2, p1, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 1819
    const-string/jumbo v3, "BleBind"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "wifiModes:"

    aput-object v5, v4, v0

    .line 1820
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string/jumbo v6, "; aroundGroup:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1821
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x4

    const-string/jumbo v5, "; validGroup:"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    if-nez v2, :cond_1

    .line 1822
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1819
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1825
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1826
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->a:Lbsw$b;

    invoke-interface {v1}, Lbsw$b;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->a:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->f()J

    move-result-wide v4

    invoke-static {v0, v2, v1, v4, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Ljava/util/List;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 1828
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1829
    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "this corp bind c1, show group"

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->a:Lbsw$b;

    invoke-interface {v1, v0}, Lbsw$b;->a(Ljava/util/List;)V

    .line 1831
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->s()V

    .line 1842
    :cond_0
    :goto_1
    return-void

    .line 1822
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1834
    :cond_2
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "this corp not bind c1"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q()V

    goto :goto_1

    .line 1837
    :cond_4
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "show group"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData$a;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1840
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->a:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->a(Ljava/util/List;)V

    .line 1841
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->s()V

    goto :goto_1

    .line 1846
    :cond_5
    const-string/jumbo v1, "BleBind"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "getAroundSsidsFromDevice is empty"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1849
    :cond_6
    const-string/jumbo v1, "BleBind"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "getConfigCorpSsidList is empty"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 861
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getConfigCorpSsidList exp, code ="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->D()V

    .line 866
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 857
    return-void
.end method
