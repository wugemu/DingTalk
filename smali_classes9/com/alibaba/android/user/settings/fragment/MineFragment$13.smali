.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$13;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->n()V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1501
    check-cast p1, Lcry;

    .line 2504
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 2507
    :cond_0
    if-nez p1, :cond_1

    .line 2508
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    .line 2512
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 1501
    return-void

    .line 2510
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$13;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .line 3051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 2510
    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->i(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    goto :goto_0
.end method
