.class Lcom/alibaba/wukong/auth/b$5;
.super Lhzy;
.source "AppStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/b;->a(ILcom/alibaba/wukong/Callback;)V
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
.field final synthetic l:Lcom/alibaba/wukong/auth/b;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/b;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 186
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/auth/b$5;->l:Lcom/alibaba/wukong/auth/b;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/auth/b$5;->convertDo(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public convertDo(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .param p1, "rpcDo"    # Ljava/lang/Void;

    .prologue
    .line 189
    return-object p1
.end method
