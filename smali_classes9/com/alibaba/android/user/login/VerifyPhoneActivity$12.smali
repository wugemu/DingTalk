.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$12;
.super Landroid/os/Handler;
.source "VerifyPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$12;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$12;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$12;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->m:Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/text/style/ClickableSpan;)V

    .line 142
    :cond_0
    return-void
.end method
