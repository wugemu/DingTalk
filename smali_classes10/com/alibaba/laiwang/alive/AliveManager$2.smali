.class Lcom/alibaba/laiwang/alive/AliveManager$2;
.super Ljava/lang/Object;
.source "AliveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/AliveManager;->unregisterXpn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/laiwang/alive/AliveManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/alive/AliveManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/alive/AliveManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/AliveManager$2;->this$0:Lcom/alibaba/laiwang/alive/AliveManager;

    iput p2, p0, Lcom/alibaba/laiwang/alive/AliveManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$2;->val$type:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-static {}, Lcom/alibaba/laiwang/alive/j;->d()Lcom/alibaba/laiwang/alive/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/alive/j;->stop()V

    .line 126
    :cond_0
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$2;->val$type:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 127
    invoke-static {}, Lcom/alibaba/laiwang/alive/d;->c()Lcom/alibaba/laiwang/alive/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/alive/d;->stop()V

    .line 130
    :cond_1
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$2;->val$type:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 131
    invoke-static {}, Lcom/alibaba/laiwang/alive/a;->a()Lcom/alibaba/laiwang/alive/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/alive/a;->stop()V

    .line 133
    :cond_2
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$2;->val$type:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 134
    invoke-static {}, Lcom/alibaba/laiwang/alive/c;->b()Lcom/alibaba/laiwang/alive/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/alive/c;->stop()V

    .line 136
    :cond_3
    return-void
.end method
