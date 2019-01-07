.class final Libz$10;
.super Lhzy;
.source "MessageRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/SecretMsgReadStatusModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Libz;


# direct methods
.method constructor <init>(Libz;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Libz;

    .prologue
    .line 792
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;>;>;"
    iput-object p1, p0, Libz$10;->a:Libz;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 792
    check-cast p1, Ljava/util/List;

    .line 1795
    invoke-static {p1}, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 792
    return-object v0
.end method
