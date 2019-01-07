.class final Lbpw$5;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpw;->d()V
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbpw;


# direct methods
.method constructor <init>(Lbpw;)V
    .locals 0
    .param p1, "this$0"    # Lbpw;

    .prologue
    .line 307
    iput-object p1, p0, Lbpw$5;->a:Lbpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 307
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .line 1310
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0, p1}, Lbpw;->a(Lbpw;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .line 1311
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0, p1}, Lbpw;->b(Lbpw;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V

    .line 1313
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lbpw$5;->a:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 322
    :cond_0
    return-void
.end method
