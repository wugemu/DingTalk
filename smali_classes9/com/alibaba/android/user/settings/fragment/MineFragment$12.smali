.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$12;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$12;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

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
    .line 309
    check-cast p1, Lcry;

    .line 1312
    if-eqz p1, :cond_0

    .line 1313
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v0

    .line 2047
    iput v0, p1, Lcry;->a:I

    .line 1314
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$12;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .line 2051
    iget-boolean v1, p1, Lcry;->b:Z

    .line 1314
    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    .line 1318
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$12;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 309
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$12;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)Z

    goto :goto_0
.end method
