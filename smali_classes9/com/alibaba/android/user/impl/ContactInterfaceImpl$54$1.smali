.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;
.super Lcmi;
.source "ContactInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->run()V
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
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

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
    .line 2131
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2121
    .line 3124
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    if-eqz v0, :cond_0

    .line 3125
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$54;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2121
    :cond_0
    return-void
.end method
