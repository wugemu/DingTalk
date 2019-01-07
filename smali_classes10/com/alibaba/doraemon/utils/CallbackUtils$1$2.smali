.class Lcom/alibaba/doraemon/utils/CallbackUtils$1$2;
.super Ljava/lang/Object;
.source "CallbackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/utils/CallbackUtils$1;->onFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/utils/CallbackUtils$1;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/utils/CallbackUtils$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$2;->this$0:Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$2;->this$0:Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    iget-object v0, v0, Lcom/alibaba/doraemon/utils/CallbackUtils$1;->val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;

    invoke-interface {v0}, Lcom/alibaba/doraemon/utils/SerializeCallback;->onFailed()V

    .line 39
    return-void
.end method
