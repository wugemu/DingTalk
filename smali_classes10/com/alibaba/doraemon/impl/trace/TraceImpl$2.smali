.class Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;
.super Ljava/lang/Object;
.source "TraceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/trace/TraceImpl;->buildAndWriteLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/TraceImpl;

.field final synthetic val$level:Ljava/lang/String;

.field final synthetic val$msgs:[Ljava/lang/String;

.field final synthetic val$traceID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/trace/TraceImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/TraceImpl;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->val$traceID:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->val$level:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->val$msgs:[Ljava/lang/String;

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
    .line 306
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->val$traceID:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->val$level:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl$2;->val$msgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/trace/TraceImpl;->access$000(Lcom/alibaba/doraemon/impl/trace/TraceImpl;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    return-void
.end method
