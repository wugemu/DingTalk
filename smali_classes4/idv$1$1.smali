.class final Lidv$1$1;
.super Ljava/lang/Object;
.source "UserServiceImpl.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lidv$1;


# direct methods
.method constructor <init>(Lidv$1;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Lidv$1;

    .prologue
    .line 85
    iput-object p1, p0, Lidv$1$1;->b:Lidv$1;

    iput-object p2, p0, Lidv$1$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Lidv$1$1;->b:Lidv$1;

    iget-object v0, v0, Lidv$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "101005"

    invoke-static {v0, v1, p3}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lidv$1$1;->b:Lidv$1;

    iget-object v0, v0, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    invoke-static {p2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->avatar:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getUserRpc()Lidu;

    move-result-object v0

    iget-object v1, p0, Lidv$1$1;->b:Lidv$1;

    iget-object v1, v1, Lidv$1;->c:Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    iget-object v2, p0, Lidv$1$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-virtual {v0, v1, v2}, Lidu;->a(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Lcom/alibaba/wukong/Callback;)V

    .line 101
    return-void
.end method

.method public final updateUploadProgress(Ljava/lang/String;III)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lidv$1$1;->b:Lidv$1;

    iget-object v0, v0, Lidv$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lidv$1$1$1;

    invoke-direct {v0, p0, p4}, Lidv$1$1$1;-><init>(Lidv$1$1;I)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    return-void
.end method
