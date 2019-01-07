.class Lcom/alibaba/alimei/sdk/displayer/Displayer$5;
.super Ljava/lang/Object;
.source "Displayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/Displayer;

.field final synthetic val$d:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

.field final synthetic val$exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/Displayer;

    .prologue
    .line 429
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer$5;, "Lcom/alibaba/alimei/sdk/displayer/Displayer$5;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;->this$0:Lcom/alibaba/alimei/sdk/displayer/Displayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;->val$d:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;->val$exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 432
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer$5;, "Lcom/alibaba/alimei/sdk/displayer/Displayer$5;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;->val$d:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;->val$exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;->onLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 433
    return-void
.end method
