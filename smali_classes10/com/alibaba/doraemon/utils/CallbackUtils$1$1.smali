.class Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;
.super Ljava/lang/Object;
.source "CallbackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/utils/CallbackUtils$1;->onComplete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/utils/CallbackUtils$1;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/utils/CallbackUtils$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;->this$0:Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    iput-object p2, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;->val$data:Ljava/lang/Object;

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
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;->this$0:Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    iget-object v0, v0, Lcom/alibaba/doraemon/utils/CallbackUtils$1;->val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;

    iget-object v1, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;->val$data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/utils/SerializeCallback;->onComplete(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
