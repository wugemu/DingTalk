.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$6;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;
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
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1026
    check-cast p1, Lcry;

    .line 2029
    if-eqz p1, :cond_2

    .line 2030
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2031
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->n(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->o(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 2051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 2033
    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2034
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .line 3051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 2034
    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    .line 2038
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 1026
    return-void

    .line 2036
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$6;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    goto :goto_0
.end method
