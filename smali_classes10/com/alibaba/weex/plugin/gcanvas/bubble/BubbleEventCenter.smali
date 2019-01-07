.class public Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;
.super Ljava/lang/Object;
.source "BubbleEventCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;,
        Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public static a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    invoke-direct {v0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;-><init>()V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
    .param p2, "bubbleAnimateWrapper"    # Lhzm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;

    .line 47
    .local v0, "listener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;->a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    goto :goto_0

    .line 49
    .end local v0    # "listener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
    .param p2, "bubbleAnimateWrapper"    # Lhzm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;

    .line 53
    .local v0, "listener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    goto :goto_0

    .line 55
    .end local v0    # "listener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;
    :cond_0
    return-void
.end method
