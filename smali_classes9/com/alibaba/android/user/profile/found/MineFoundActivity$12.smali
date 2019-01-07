.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;
.super Ljava/lang/Object;
.source "MineFoundActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b()V
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
.field final synthetic a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

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
    const/4 v1, 0x0

    .line 519
    check-cast p1, Lcry;

    .line 1522
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->j(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1523
    if-nez p1, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 1532
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 519
    return-void

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->k(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .line 2051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 1527
    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$12;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0
.end method
