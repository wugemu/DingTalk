.class Lcom/alibaba/wukong/auth/bb$2;
.super Ljava/lang/Object;
.source "SyncMergeAck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bq:Lcom/alibaba/wukong/auth/bb;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/bb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/bb;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bb$2;->bq:Lcom/alibaba/wukong/auth/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb$2;->bq:Lcom/alibaba/wukong/auth/bb;

    const/4 v1, 0x0

    const-string/jumbo v2, "408"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/auth/bb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;Z)V

    .line 131
    return-void
.end method
