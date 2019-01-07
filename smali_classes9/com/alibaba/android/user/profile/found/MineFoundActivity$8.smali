.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;
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
    .line 302
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

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

    .line 302
    check-cast p1, Lcry;

    .line 1305
    if-eqz p1, :cond_1

    .line 1306
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v0

    .line 2047
    iput v0, p1, Lcry;->a:I

    .line 1308
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->e(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .line 2051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 1309
    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 1316
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1317
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 302
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$8;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->d(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto :goto_0
.end method
