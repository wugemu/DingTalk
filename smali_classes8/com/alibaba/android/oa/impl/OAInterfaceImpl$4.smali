.class final Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;
.super Lcmi;
.source "OAInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;->b:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;->a:Lcma;

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
    .line 311
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 301
    check-cast p1, Ljava/lang/Integer;

    .line 1304
    iget-object v1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;->a:Lcma;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$4;->a:Lcma;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 301
    :cond_0
    return-void

    .line 1305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
