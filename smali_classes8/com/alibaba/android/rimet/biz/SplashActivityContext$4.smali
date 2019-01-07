.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;
.super Ljava/lang/Object;
.source "SplashActivityContext.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivityContext;->showSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$800(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lekr;

    move-result-object v2

    iget-object v2, v2, Lekr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v1, "show_options_menu"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    const-string/jumbo v1, "show_bottom_botton"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 393
    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$602(Z)Z

    .line 394
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$4;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$800(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Lekr;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$1100(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Lekr;Z)V

    .line 395
    return-void
.end method
