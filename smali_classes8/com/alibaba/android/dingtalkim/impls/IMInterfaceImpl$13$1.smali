.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13$1;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1025
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1025
    check-cast p1, Ljava/util/List;

    .line 2029
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1025
    :cond_0
    return-void
.end method
