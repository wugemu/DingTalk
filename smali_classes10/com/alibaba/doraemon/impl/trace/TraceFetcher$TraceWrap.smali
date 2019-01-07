.class Lcom/alibaba/doraemon/impl/trace/TraceFetcher$TraceWrap;
.super Lcom/alibaba/doraemon/impl/trace/TraceImpl;
.source "TraceFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/TraceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TraceWrap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/TraceFetcher;


# direct methods
.method protected constructor <init>(Lcom/alibaba/doraemon/impl/trace/TraceFetcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/TraceFetcher;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceFetcher$TraceWrap;->this$0:Lcom/alibaba/doraemon/impl/trace/TraceFetcher;

    .line 25
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/trace/TraceImpl;-><init>()V

    .line 26
    return-void
.end method
