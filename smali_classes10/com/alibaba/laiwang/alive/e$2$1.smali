.class Lcom/alibaba/laiwang/alive/e$2$1;
.super Lhzy;
.source "XpnDeviceRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/e$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/alibaba/laiwang/alive/e$2;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/alive/e$2;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/alive/e$2;

    .prologue
    .line 51
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/e$2$1;->i:Lcom/alibaba/laiwang/alive/e$2;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/laiwang/alive/e$2$1;->convertDo(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public convertDo(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
