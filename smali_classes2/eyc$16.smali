.class public final Leyc$16;
.super Lcom/alibaba/wukong/sync/SyncRequestHandler;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncRequestHandler",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;

.field final synthetic b:Leyc;


# direct methods
.method public constructor <init>(Leyc;Leyo$d;)V
    .locals 0
    .param p1, "this$0"    # Leyc;

    .prologue
    .line 1028
    iput-object p1, p0, Leyc$16;->b:Leyc;

    iput-object p2, p0, Leyc$16;->a:Leyo$d;

    invoke-direct {p0}, Lcom/alibaba/wukong/sync/SyncRequestHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1039
    invoke-super {p0, p1, p2}, Lcom/alibaba/wukong/sync/SyncRequestHandler;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Leyc$16;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Leyc$16;->a:Leyo$d;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1043
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1028
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    .line 2032
    iget-object v0, p0, Leyc$16;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Leyc$16;->a:Leyo$d;

    invoke-interface {v0, p1}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 1028
    :cond_0
    return-void
.end method
