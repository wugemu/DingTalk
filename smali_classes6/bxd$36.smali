.class final Lbxd$36;
.super Lhzy;
.source "LvRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lbvb;",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 240
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 240
    check-cast p1, Lbvb;

    .line 1244
    if-eqz p1, :cond_1

    .line 1245
    new-instance v1, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;-><init>()V

    .line 1246
    iget-object v2, p1, Lbvb;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;->anchors:Ljava/util/List;

    .line 1247
    iget-object v2, p1, Lbvb;->b:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;->isEnd:Z

    move-object v0, v1

    .line 1248
    :goto_1
    return-object v0

    .line 1247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1250
    :cond_1
    const/4 v0, 0x0

    .line 240
    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lbxd$36;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method
