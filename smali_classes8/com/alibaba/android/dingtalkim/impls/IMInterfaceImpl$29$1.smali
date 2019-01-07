.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;
.super Lcmi;
.source "IMInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1541
    .line 2544
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1541
    :cond_0
    return-void
.end method
