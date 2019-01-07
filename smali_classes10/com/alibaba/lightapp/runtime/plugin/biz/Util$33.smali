.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->fetchFileData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$finalMediaAccessToken:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;->val$finalMediaAccessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3904
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;->onDataReceived([B)V

    return-void
.end method

.method public onDataReceived([B)V
    .locals 2
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;[B)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$11700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V

    .line 3937
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$33;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$11900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V

    .line 3949
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3954
    return-void
.end method
