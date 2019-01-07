.class public final Lfrn$4;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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

.field final synthetic b:Lfrn;


# direct methods
.method public constructor <init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 0
    .param p1, "this$0"    # Lfrn;

    .prologue
    .line 287
    iput-object p1, p0, Lfrn$4;->b:Lfrn;

    iput-object p2, p0, Lfrn$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

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
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 287
    check-cast p1, Lcee;

    .line 2290
    const-string/jumbo v0, "bh_register_carrier_verification_check_succeed"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 2291
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    .line 3054
    invoke-virtual {v0}, Lfrn;->b()Z

    move-result v0

    .line 2291
    if-nez v0, :cond_0

    .line 2295
    if-nez p1, :cond_1

    .line 2296
    const-string/jumbo v0, "SIM login success but result is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2297
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    .line 4054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 2297
    const-string/jumbo v1, "12303"

    iget-object v2, p0, Lfrn$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 2310
    :cond_0
    :goto_0
    return-void

    .line 2301
    :cond_1
    iget-object v0, p1, Lcee;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2302
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    .line 5054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 2302
    const-string/jumbo v1, "11044"

    iget-object v2, p1, Lcee;->m:Ljava/lang/String;

    iget-object v3, p0, Lfrn$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_0

    .line 2306
    :cond_2
    iget-object v0, p1, Lcee;->i:Lcgj;

    .line 2307
    if-nez v0, :cond_3

    .line 2308
    const-string/jumbo v0, "SIM login success but UserProfileExtensionModel is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2309
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    .line 6054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 2309
    const-string/jumbo v1, "12303"

    iget-object v2, p0, Lfrn$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_0

    .line 2313
    :cond_3
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    iget-object v1, p0, Lfrn$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-static {v0, p1, v1}, Lfrn;->a(Lfrn;Lcee;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

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
    const/4 v3, 0x0

    .line 322
    const-string/jumbo v0, "bh_register_carrier_verification_check_failed"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    .line 1054
    invoke-virtual {v0}, Lfrn;->b()Z

    move-result v0

    .line 323
    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "code:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lfrn$4;->b:Lfrn;

    .line 2054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 327
    iget-object v1, p0, Lfrn$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 318
    return-void
.end method
