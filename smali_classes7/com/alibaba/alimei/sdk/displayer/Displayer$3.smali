.class Lcom/alibaba/alimei/sdk/displayer/Displayer$3;
.super Ljava/lang/Object;
.source "Displayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyPreLoadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/Displayer;

.field final synthetic val$d:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/Displayer;

    .prologue
    .line 402
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer$3;, "Lcom/alibaba/alimei/sdk/displayer/Displayer$3;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/Displayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$3;->val$d:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer$3;, "Lcom/alibaba/alimei/sdk/displayer/Displayer$3;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$3;->val$d:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;->onPreloadSuccess()V

    .line 406
    return-void
.end method
