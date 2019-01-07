.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3$1;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 489
    packed-switch p2, :pswitch_data_0

    .line 499
    :goto_0
    return-void

    .line 491
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->o(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    goto :goto_0

    .line 494
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$3;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lfrg;

    move-result-object v0

    invoke-virtual {v0}, Lfrg;->g()V

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
