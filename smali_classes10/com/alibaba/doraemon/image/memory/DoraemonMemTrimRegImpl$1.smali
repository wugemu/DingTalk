.class Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl$1;
.super Ljava/lang/Object;
.source "DoraemonMemTrimRegImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/MemStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl$1;->this$0:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowMemory()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl$1;->this$0:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->access$000(Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl$1;->this$0:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->access$000(Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;

    .line 38
    .local v0, "trimmable":Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;
    sget-object v2, Lcom/alibaba/doraemon/image/memory/MemoryTrimType;->OnCloseToDalvikHeapLimit:Lcom/alibaba/doraemon/image/memory/MemoryTrimType;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;->trim(Lcom/alibaba/doraemon/image/memory/MemoryTrimType;)V

    goto :goto_0

    .line 41
    .end local v0    # "trimmable":Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;
    :cond_0
    return-void
.end method
