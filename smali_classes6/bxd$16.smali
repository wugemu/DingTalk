.class final Lbxd$16;
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
        "Lbub;",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 428
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 428
    check-cast p1, Lbub;

    .line 1431
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;->fromIdl(Lbub;)Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;

    move-result-object v0

    .line 428
    return-object v0
.end method
