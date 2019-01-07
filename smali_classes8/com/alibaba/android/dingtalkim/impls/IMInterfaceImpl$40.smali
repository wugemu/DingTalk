.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Ljava/lang/String;JZLcma;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;ZLcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2482
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 3486
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->a:Z

    invoke-static {p1, v0, v1}, Lddq;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 3488
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->b:Lcma;

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->b:Lcma;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2482
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->b:Lcma;

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2497
    return-void
.end method
