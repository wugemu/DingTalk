.class final Lfrn$1;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Z)V
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
        "Lcee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lfrn;


# direct methods
.method constructor <init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lfrn;

    .prologue
    .line 77
    iput-object p1, p0, Lfrn$1;->d:Lfrn;

    iput-object p2, p0, Lfrn$1;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iput-object p3, p0, Lfrn$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lfrn$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    check-cast p1, Lcee;

    .line 5080
    const-string/jumbo v0, "bh_register_uplink_sms_to_check_succeed"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 5081
    if-nez p1, :cond_0

    .line 5082
    const-string/jumbo v0, "verifyByUpstreamSms upstreamTokenLogin and onDataReceived loginResultModel == null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5083
    :goto_0
    return-void

    .line 5086
    :cond_0
    new-instance v1, Lfaq$a;

    new-instance v0, Lfaq;

    invoke-direct {v0}, Lfaq;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lfaq$a;-><init>(Lfaq;)V

    .line 5087
    new-instance v0, Lfrn$1$1;

    invoke-direct {v0, p0}, Lfrn$1$1;-><init>(Lfrn$1;)V

    .line 5103
    const-class v2, Lcma;

    iget-object v3, p0, Lfrn$1;->d:Lfrn;

    .line 6054
    iget-object v3, v3, Lfrn;->a:Landroid/app/Activity;

    .line 5103
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5104
    iget-object v2, p0, Lfrn$1;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 114
    const-string/jumbo v0, "bh_register_uplink_sms_to_check_failed"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 115
    iget-boolean v0, p0, Lfrn$1;->c:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lfrn$1;->d:Lfrn;

    .line 1054
    iget-object v0, v0, Lfrn;->c:Lfrn$a;

    .line 1390
    iput-object p1, v0, Lfrn$a;->a:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lfrn$1;->d:Lfrn;

    .line 2054
    iget-object v0, v0, Lfrn;->c:Lfrn$a;

    .line 2394
    iput-object p2, v0, Lfrn$a;->b:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lfrn$1;->d:Lfrn;

    .line 3054
    iget-object v0, v0, Lfrn;->c:Lfrn$a;

    .line 118
    iget-object v1, p0, Lfrn$1;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    .line 3398
    iput-object v1, v0, Lfrn$a;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    .line 120
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lfrn$1;->d:Lfrn;

    .line 4054
    iget-object v1, v1, Lfrn;->c:Lfrn$a;

    .line 120
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lfrn$1;->d:Lfrn;

    .line 5054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 122
    iget-object v1, p0, Lfrn$1;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 110
    return-void
.end method
