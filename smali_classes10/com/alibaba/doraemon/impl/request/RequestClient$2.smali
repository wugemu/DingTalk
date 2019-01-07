.class Lcom/alibaba/doraemon/impl/request/RequestClient$2;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;->handleNonLWPSync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$2;->val$url:Ljava/lang/String;

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
    .line 240
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$2;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$400(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    .line 241
    return-void
.end method
