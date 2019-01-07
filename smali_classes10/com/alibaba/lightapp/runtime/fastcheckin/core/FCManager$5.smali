.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$5;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->add(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$5;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$5;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$5;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->addFromPush(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)Lhhe;

    move-result-object v0

    .line 275
    .local v0, "module":Lhhe;
    if-eqz v0, :cond_0

    .line 276
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->start()V

    .line 278
    :cond_0
    return-void
.end method
