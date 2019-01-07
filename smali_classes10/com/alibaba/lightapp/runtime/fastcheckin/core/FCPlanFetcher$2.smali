.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;
.super Ljava/lang/Object;
.source "FCPlanFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;->doFetch(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1124
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCPlanFetcher$2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method
