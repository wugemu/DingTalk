.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$14;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

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
    .line 1529
    check-cast p1, Lcry;

    .line 2532
    if-eqz p1, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .line 3091
    iget-object v1, p1, Lcry;->g:Ljava/lang/String;

    .line 2533
    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->d(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2534
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .line 4051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 2534
    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    .line 2538
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 2539
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 1529
    return-void

    .line 2536
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$14;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    goto :goto_0
.end method
