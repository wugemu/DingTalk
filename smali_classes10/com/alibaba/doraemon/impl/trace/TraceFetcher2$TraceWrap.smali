.class Lcom/alibaba/doraemon/impl/trace/TraceFetcher2$TraceWrap;
.super Lcom/alibaba/doraemon/impl/trace/TraceImpl2;
.source "TraceFetcher2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TraceWrap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;


# direct methods
.method protected constructor <init>(Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceFetcher2$TraceWrap;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceFetcher2;

    .line 25
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;-><init>()V

    .line 26
    return-void
.end method
