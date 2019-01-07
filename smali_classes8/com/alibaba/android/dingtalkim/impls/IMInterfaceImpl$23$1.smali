.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23$1;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;->b:Lcma;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 458
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 458
    :cond_0
    return-void
.end method
