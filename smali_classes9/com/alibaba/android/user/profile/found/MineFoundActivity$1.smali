.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;
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
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

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

    .line 223
    check-cast p1, Lcry;

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1227
    if-nez p1, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 1236
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 223
    return-void

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .line 2051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 1231
    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->a(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0
.end method
