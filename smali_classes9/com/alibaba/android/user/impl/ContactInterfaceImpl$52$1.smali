.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;
.super Lcmi;
.source "ContactInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lcem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

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
    .line 1949
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1939
    check-cast p1, Ljava/util/List;

    .line 2942
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2943
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$52;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1939
    :cond_0
    return-void
.end method
