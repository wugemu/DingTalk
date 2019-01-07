.class final Lfwu$1$1;
.super Lcmi;
.source "DeviceSettingRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lfpw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfwu$1;


# direct methods
.method constructor <init>(Lfwu$1;)V
    .locals 0
    .param p1, "this$1"    # Lfwu$1;

    .prologue
    .line 35
    iput-object p1, p0, Lfwu$1$1;->a:Lfwu$1;

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
    .line 45
    iget-object v0, p0, Lfwu$1$1;->a:Lfwu$1;

    iget-object v0, v0, Lfwu$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lfwu$1$1;->a:Lfwu$1;

    iget-object v0, v0, Lfwu$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 35
    check-cast p1, Lfpw;

    .line 1038
    iget-object v0, p0, Lfwu$1$1;->a:Lfwu$1;

    iget-object v0, v0, Lfwu$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lfwu$1$1;->a:Lfwu$1;

    iget-object v0, v0, Lfwu$1;->a:Lcma;

    new-instance v1, Lfws;

    invoke-direct {v1, p1}, Lfws;-><init>(Lfpw;)V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method
