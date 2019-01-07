.class final Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/SplashActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/SplashActivity$1;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->finish()V

    .line 74
    :cond_0
    return-void
.end method
