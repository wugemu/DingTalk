.class final Lfno$2;
.super Ljava/lang/Object;
.source "ExternalEditContractPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfno;->a(J)V
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
.field final synthetic a:J

.field final synthetic b:Lfno;


# direct methods
.method constructor <init>(Lfno;J)V
    .locals 0
    .param p1, "this$0"    # Lfno;

    .prologue
    .line 256
    iput-object p1, p0, Lfno$2;->b:Lfno;

    iput-wide p2, p0, Lfno$2;->a:J

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
    .line 256
    .line 3259
    iget-object v0, p0, Lfno$2;->b:Lfno;

    .line 4028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 3259
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Lfno$2;->b:Lfno;

    .line 5028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 3260
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->H_()V

    .line 3261
    iget-object v0, p0, Lfno$2;->b:Lfno;

    .line 6028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 3261
    iget-wide v2, p0, Lfno$2;->a:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a(J)V

    .line 256
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lfno$2;->b:Lfno;

    .line 1028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 272
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lfno$2;->b:Lfno;

    .line 2028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 273
    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->H_()V

    .line 274
    iget-object v0, p0, Lfno$2;->b:Lfno;

    .line 3028
    iget-object v0, v0, Lfno;->b:Lcom/alibaba/android/user/external/ExternalEditContract$c;

    .line 274
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/user/external/ExternalEditContract$c;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method
