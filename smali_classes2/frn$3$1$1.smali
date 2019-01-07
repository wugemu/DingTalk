.class final Lfrn$3$1$1;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrn$3$1;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V
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
.field final synthetic a:Lfrn$3$1;


# direct methods
.method constructor <init>(Lfrn$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lfrn$3$1;

    .prologue
    .line 228
    iput-object p1, p0, Lfrn$3$1$1;->a:Lfrn$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 228
    check-cast p1, Lcee;

    .line 1231
    iget-object v0, p0, Lfrn$3$1$1;->a:Lfrn$3$1;

    iget-object v0, v0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v0, v0, Lfrn$3;->b:Lfrn;

    iget-object v1, p0, Lfrn$3$1$1;->a:Lfrn$3$1;

    iget-object v1, v1, Lfrn$3$1;->a:Lfrn$3;

    iget-object v1, v1, Lfrn$3;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-static {v0, p1, v1}, Lfrn;->a(Lfrn;Lcee;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 228
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 241
    iget-object v0, p0, Lfrn$3$1$1;->a:Lfrn$3$1;

    iget-object v0, v0, Lfrn$3$1;->a:Lfrn$3;

    iget-object v0, v0, Lfrn$3;->b:Lfrn;

    .line 1054
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 241
    iget-object v1, p0, Lfrn$3$1$1;->a:Lfrn$3$1;

    iget-object v1, v1, Lfrn$3$1;->a:Lfrn$3;

    iget-object v1, v1, Lfrn$3;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 237
    return-void
.end method
