.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->compressAndUploadVideoToSpace(Ljava/util/ArrayList;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2860
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "outputPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2863
    invoke-static {}, Lhrp;->a()V

    .line 2864
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2865
    const-string/jumbo v0, ""

    const-string/jumbo v1, "null result"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    :goto_0
    return-void

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2882
    invoke-static {}, Lhrp;->a()V

    .line 2883
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "biz.Util"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "compressAndUploadVideoToSpace: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", videoPath: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->val$videoPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;)V

    .line 2891
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2878
    return-void
.end method
