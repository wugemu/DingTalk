.class final Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;
.super Ljava/lang/Object;
.source "SendMsmVerifyActivity.java"

# interfaces
.implements Lfro$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SendMsmVerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "delayShowErrorRunnable has been excuted : errorMsg = "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->b(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;Z)Z

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->c(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->d(Lcom/alibaba/android/user/login/SendMsmVerifyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SendMsmVerifyActivity$3;->a:Lcom/alibaba/android/user/login/SendMsmVerifyActivity;

    sget v2, Lezg$l;->dt_register_up_sms_check:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/login/SendMsmVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1122
    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
