.class Lcom/taobao/weex/ui/component/list/template/TemplateCache;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# instance fields
.field cells:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field isLoadIng:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    return-void
.end method
