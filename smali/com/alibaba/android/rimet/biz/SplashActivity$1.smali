.class final Lcom/alibaba/android/rimet/biz/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/SplashActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/SplashActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivity$1;->a:Lcom/alibaba/android/rimet/biz/SplashActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f092174

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09217c

    new-instance v2, Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/SplashActivity$1$1;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 77
    :cond_0
    return-void
.end method
