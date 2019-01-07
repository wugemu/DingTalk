.class final Lbxd$34;
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
        "Ljava/util/List",
        "<",
        "Lbtz;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 206
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p1, Ljava/util/List;

    .line 1210
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->fromIdl(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lbxd$34;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method
