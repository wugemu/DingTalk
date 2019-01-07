.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ArActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpf;->a(Landroid/content/Context;)I

    move-result v0

    .line 119
    .local v0, "currentType":I
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I

    move-result v1

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lgwu;

    move-result-object v1

    .line 1041
    iget-object v1, v1, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 121
    invoke-virtual {v1, v3}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest(Z)Z

    .line 122
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setUseMobileNetwork(Z)V

    .line 123
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->d(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->d(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;I)I

    .line 139
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->b(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lgwu;

    move-result-object v1

    .line 2041
    iget-object v1, v1, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 129
    invoke-virtual {v1, v2}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest(Z)Z

    .line 130
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->setUseMobileNetwork(Z)V

    .line 131
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->d(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->d(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$1;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->e(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
