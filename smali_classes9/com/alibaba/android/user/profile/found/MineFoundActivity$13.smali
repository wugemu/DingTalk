.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;
.super Ljava/lang/Object;
.source "MineFoundActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/found/MineFoundActivity;
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

.field final synthetic b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

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
    const/4 v2, 0x0

    .line 551
    check-cast p1, Lcry;

    .line 1554
    if-eqz p1, :cond_1

    .line 1555
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .line 2091
    iget-object v1, p1, Lcry;->g:Ljava/lang/String;

    .line 1555
    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1557
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->l(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .line 3051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 1558
    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 1565
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1566
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 551
    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$13;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0
.end method
