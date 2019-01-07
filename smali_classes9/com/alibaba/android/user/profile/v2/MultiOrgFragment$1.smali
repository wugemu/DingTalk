.class final Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;
.super Ljava/lang/Object;
.source "MultiOrgFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6
    .param p1, "lastPosition"    # I
    .param p2, "nowPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    .local v0, "orgId":J
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->b(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->b(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;J)J

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->d(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->a(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->c(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->a(Ljava/util/List;J)V

    .line 73
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->e(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->e(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;

    move-result-object v4

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->b(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$1;->a:Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;->b(Lcom/alibaba/android/user/profile/v2/MultiOrgFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/user/profile/v2/MultiOrgFragment$a;->a(J)V

    .line 77
    .end local v0    # "orgId":J
    :cond_1
    return-void

    .line 74
    .restart local v0    # "orgId":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
