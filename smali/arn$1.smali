.class public final Larn$1;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic b:Larn;


# direct methods
.method public constructor <init>(Larn;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 0
    .param p1, "this$0"    # Larn;

    .prologue
    .line 69
    iput-object p1, p0, Larn$1;->b:Larn;

    iput-object p2, p0, Larn$1;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Larn$1;->a:Lcom/alibaba/wukong/sync/SyncAck;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[TooLong2Manager]syncAckFailed."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lavf;->b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 69
    .line 1072
    iget-object v0, p0, Larn$1;->b:Larn;

    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Larn$1$1;

    invoke-direct {v2, p0}, Larn$1$1;-><init>(Larn$1;)V

    .line 2042
    invoke-virtual {v0, v1, v2}, Larn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 69
    return-void
.end method
