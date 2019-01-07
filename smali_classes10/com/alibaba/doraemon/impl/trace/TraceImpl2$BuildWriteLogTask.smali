.class Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;
.super Ljava/lang/Object;
.source "TraceImpl2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/TraceImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuildWriteLogTask"
.end annotation


# instance fields
.field private final mLevel:Ljava/lang/String;

.field private final mMsgs:[Ljava/lang/String;

.field private final mTraceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/TraceImpl2;


# direct methods
.method public varargs constructor <init>(Lcom/alibaba/doraemon/impl/trace/TraceImpl2;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "traceId"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "msgs"    # [Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->mTraceId:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->mLevel:Ljava/lang/String;

    .line 339
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->mMsgs:[Ljava/lang/String;

    .line 340
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceImpl2;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->mTraceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->mLevel:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->mMsgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->access$200(Lcom/alibaba/doraemon/impl/trace/TraceImpl2;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 345
    return-void
.end method
