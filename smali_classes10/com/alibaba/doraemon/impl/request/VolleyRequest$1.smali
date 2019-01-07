.class Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;
.super Ljava/lang/Object;
.source "VolleyRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/VolleyRequest;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .prologue
    .line 304
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->this$0:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->val$threadId:J

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
    .line 307
    .local p0, "this":Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->this$0:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->access$000(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyRequest$1;->this$0:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->access$000(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 309
    return-void
.end method
