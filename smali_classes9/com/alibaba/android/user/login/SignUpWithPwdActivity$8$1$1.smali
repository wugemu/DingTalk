.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 709
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lfxf;->b(Landroid/content/Context;)Lfxf$a;

    move-result-object v0

    .line 711
    .local v0, "localCountryMobile":Lfxf$a;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;Lfxf$a;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method
