.class final Lian$1;
.super Lhzy;
.source "CategoryRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/lang/Long;",
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/category/CategoryObject;

.field final synthetic b:Lian;


# direct methods
.method constructor <init>(Lian;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 0
    .param p1, "this$0"    # Lian;

    .prologue
    .line 42
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iput-object p1, p0, Lian$1;->b:Lian;

    iput-object p3, p0, Lian$1;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Long;

    .line 1045
    iget-object v0, p0, Lian$1;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {p1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    .line 1046
    iget-object v0, p0, Lian$1;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 42
    return-object v0
.end method
