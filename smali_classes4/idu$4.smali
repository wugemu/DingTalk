.class final Lidu$4;
.super Lhzy;
.source "UserRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidu;->a(ILcom/alibaba/wukong/idl/user/models/AliasModel;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
        "Lcom/alibaba/wukong/im/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lidu;


# direct methods
.method constructor <init>(Lidu;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lidu;

    .prologue
    .line 204
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/User;>;"
    iput-object p1, p0, Lidu$4;->a:Lidu;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    check-cast p1, Lcom/alibaba/wukong/idl/user/models/AliasModel;

    .line 1207
    if-nez p1, :cond_0

    .line 1208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1210
    :cond_0
    invoke-static {p1}, Lcom/alibaba/wukong/im/user/UserImpl;->fromAliasModel(Lcom/alibaba/wukong/idl/user/models/AliasModel;)Lcom/alibaba/wukong/im/user/UserImpl;

    move-result-object v0

    goto :goto_0
.end method
