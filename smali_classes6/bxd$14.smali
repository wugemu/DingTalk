.class final Lbxd$14;
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
        "Lbuv;",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/KickRspObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 406
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/KickRspObject;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    check-cast p1, Lbuv;

    .line 1409
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/rpc/model/KickRspObject;->fromIdl(Lbuv;)Lcom/alibaba/android/dingtalk/live/rpc/model/KickRspObject;

    move-result-object v0

    .line 406
    return-object v0
.end method
