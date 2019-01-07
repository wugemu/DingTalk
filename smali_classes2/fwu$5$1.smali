.class final Lfwu$5$1;
.super Lcmi;
.source "DeviceSettingRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwu$5;->run()V
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
.field final synthetic a:Lfwu$5;


# direct methods
.method constructor <init>(Lfwu$5;)V
    .locals 0
    .param p1, "this$1"    # Lfwu$5;

    .prologue
    .line 155
    iput-object p1, p0, Lfwu$5$1;->a:Lfwu$5;

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
    .line 165
    iget-object v0, p0, Lfwu$5$1;->a:Lfwu$5;

    iget-object v0, v0, Lfwu$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lfwu$5$1;->a:Lfwu$5;

    iget-object v0, v0, Lfwu$5;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 155
    .line 1158
    iget-object v0, p0, Lfwu$5$1;->a:Lfwu$5;

    iget-object v0, v0, Lfwu$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lfwu$5$1;->a:Lfwu$5;

    iget-object v0, v0, Lfwu$5;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method
