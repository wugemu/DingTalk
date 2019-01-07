.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->realStart(Ljava/util/List;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-static {}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 134
    const-string/jumbo v2, "FCManager"

    const-string/jumbo v3, "realStart"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhd;

    .line 136
    .local v0, "plan":Lhhd;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "planId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->b:Landroid/app/Activity;

    new-instance v4, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lhhd;->a(Landroid/app/Activity;Lhhd$a;)V

    goto :goto_0

    .line 162
    .end local v0    # "plan":Lhhd;
    .end local v1    # "planId":Ljava/lang/String;
    :cond_1
    return-void
.end method
