.class Lcom/alibaba/wukong/auth/bb$1;
.super Ljava/lang/Object;
.source "SyncMergeAck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/bb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bp:Z

.field final synthetic bq:Lcom/alibaba/wukong/auth/bb;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/bb;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/bb;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bb$1;->bq:Lcom/alibaba/wukong/auth/bb;

    iput-boolean p2, p0, Lcom/alibaba/wukong/auth/bb$1;->bp:Z

    iput-object p3, p0, Lcom/alibaba/wukong/auth/bb$1;->val$tag:Ljava/lang/String;

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
    .line 109
    iget-boolean v0, p0, Lcom/alibaba/wukong/auth/bb$1;->bp:Z

    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v1, "SyncHandle"

    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb$1;->val$tag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "408"

    :goto_0
    const-string/jumbo v2, "408"

    const-string/jumbo v3, ""

    invoke-static {v1, v0, v2, v3}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_1
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb$1;->val$tag:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_1
    const-string/jumbo v1, "SyncHandle"

    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb$1;->val$tag:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "400"

    :goto_2
    const-string/jumbo v2, "400"

    const-string/jumbo v3, ""

    invoke-static {v1, v0, v2, v3}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bb$1;->val$tag:Ljava/lang/String;

    goto :goto_2
.end method
