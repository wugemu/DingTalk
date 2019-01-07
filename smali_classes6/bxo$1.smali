.class final Lbxo$1;
.super Ljava/lang/Object;
.source "AnchorPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxo;->a(ZILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbxo;


# direct methods
.method constructor <init>(Lbxo;)V
    .locals 0
    .param p1, "this$0"    # Lbxo;

    .prologue
    .line 93
    iput-object p1, p0, Lbxo$1;->a:Lbxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 101
    .line 1029
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1030
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const/16 v1, 0x1770

    const-string/jumbo v2, "Live Start Failed"

    invoke-static {v1, v2, v0}, Lbyo;->a(ILjava/lang/String;Ljava/util/Map;)V

    .line 102
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "startLive failed, errorCode="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lbxo$1;->a:Lbxo;

    .line 1059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 104
    invoke-interface {v0}, Lbxn$b;->h()V

    .line 105
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;

    .line 1096
    iget-object v0, p0, Lbxo$1;->a:Lbxo;

    .line 2059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 1096
    invoke-interface {v0, p1}, Lbxn$b;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/StartLiveRspObject;)V

    .line 93
    return-void
.end method
