.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1889
    const/4 v2, 0x1

    .line 1890
    .local v2, "isCallLogGranted":Z
    const/4 v3, 0x1

    .line 1891
    .local v3, "isContactGranted":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->E()Z

    move-result v4

    .line 1892
    .local v4, "isContactMatchSwitchOpened":Z
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->a:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1893
    :cond_0
    const/4 v2, 0x0

    .line 1895
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->z()Ljava/util/List;

    move-result-object v5

    .line 1896
    .local v5, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1897
    :cond_2
    const/4 v3, 0x0

    .line 1899
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v4, :cond_6

    .line 1900
    :cond_4
    const/4 v1, 0x0

    .line 1901
    .local v1, "grantType":Ljava/lang/String;
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1902
    const-string/jumbo v1, "contact_match_denied"

    .line 1908
    :cond_5
    :goto_0
    move-object v0, v1

    .line 1909
    .local v0, "finalGrantType":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1922
    .end local v0    # "finalGrantType":Ljava/lang/String;
    .end local v1    # "grantType":Ljava/lang/String;
    :cond_6
    return-void

    .line 1903
    .restart local v1    # "grantType":Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_8

    .line 1904
    const-string/jumbo v1, "calllog_denied"

    goto :goto_0

    .line 1905
    :cond_8
    if-eqz v2, :cond_5

    .line 1906
    const-string/jumbo v1, "contact_denied"

    goto :goto_0
.end method
