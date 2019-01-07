.class final Lfno$3;
.super Ljava/lang/Object;
.source "ExternalEditContractPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfno;->a(ILcom/alibaba/android/user/model/OrgExtFieldObject;)V
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
        "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfno;


# direct methods
.method constructor <init>(Lfno;)V
    .locals 0
    .param p1, "this$0"    # Lfno;

    .prologue
    .line 288
    iput-object p1, p0, Lfno$3;->a:Lfno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 288
    check-cast p1, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 2291
    iget-object v0, p0, Lfno$3;->a:Lfno;

    .line 3028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 2291
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lfno$3;->a:Lfno;

    .line 4028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 2292
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->H_()V

    .line 2293
    iget-object v0, p0, Lfno$3;->a:Lfno;

    .line 5028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 2293
    invoke-interface {v0, p1}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V

    .line 288
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lfno$3;->a:Lfno;

    .line 1028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 304
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lfno$3;->a:Lfno;

    .line 2028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 305
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->H_()V

    .line 307
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 300
    return-void
.end method
