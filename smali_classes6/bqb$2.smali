.class final Lbqb$2;
.super Ljava/lang/Object;
.source "NoticeReceiveHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbqb;


# direct methods
.method constructor <init>(Lbqb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbqb;

    .prologue
    .line 111
    iput-object p1, p0, Lbqb$2;->c:Lbqb;

    iput-object p2, p0, Lbqb$2;->a:Lcom/alibaba/wukong/sync/SyncAck;

    iput-object p3, p0, Lbqb$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lbqb$2;->c:Lbqb;

    iget-object v1, p0, Lbqb$2;->a:Lcom/alibaba/wukong/sync/SyncAck;

    iget-object v2, p0, Lbqb$2;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lbqb;->b(Lbqb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lbqb$2;->a:Lcom/alibaba/wukong/sync/SyncAck;

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 116
    return-void
.end method
