.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$28;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
