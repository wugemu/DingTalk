.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 606
    .line 1609
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Z)V

    .line 606
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 620
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 624
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    const-string/jumbo v0, "12306"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    sget v1, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 628
    .end local p2    # "reason":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .restart local p2    # "reason":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$4;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->server_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 616
    return-void
.end method
