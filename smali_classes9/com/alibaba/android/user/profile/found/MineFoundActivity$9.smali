.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;
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
.field final synthetic a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

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
    const/4 v1, 0x0

    .line 341
    check-cast p1, Lcry;

    .line 1344
    if-eqz p1, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->f(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->g(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1346
    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->h(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .line 3051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 1349
    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->e(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 1356
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 341
    return-void

    :cond_0
    move v0, v1

    .line 1346
    goto :goto_0

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->e(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_1

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$9;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->e(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_1
.end method
