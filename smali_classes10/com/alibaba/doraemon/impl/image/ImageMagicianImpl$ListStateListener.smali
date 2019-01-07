.class Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;
.super Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;
.source "ImageMagicianImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListStateListener"
.end annotation


# instance fields
.field private mTimestamp:J

.field private name:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-direct {p0}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;-><init>()V

    .line 1334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->mTimestamp:J

    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->name:Ljava/lang/String;

    .line 1364
    new-instance v0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener$1;-><init>(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1341
    .local v0, "current":J
    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->mTimestamp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x32

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1342
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3, p1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$200(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/widget/AbsListView;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->name:Ljava/lang/String;

    .line 1343
    const-string/jumbo v3, "REQUEST"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/request/Request;

    .line 1345
    .local v2, "request":Lcom/alibaba/doraemon/request/Request;
    if-eqz v2, :cond_0

    .line 1346
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/request/Request;->addReqest2Group(Ljava/lang/String;)V

    .line 1347
    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Request;->pauseGroupRequset()V

    .line 1350
    :cond_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1351
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->mTimestamp:J

    .line 1352
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->this$0:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->access$300(Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl$ListStateListener;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1355
    .end local v2    # "request":Lcom/alibaba/doraemon/request/Request;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1356
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1360
    invoke-super {p0, p1, p2}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1361
    return-void
.end method
