.class Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;
.super Ljava/lang/Object;
.source "AbstractMapWidgetComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;

.field final synthetic val$friendlyName:Ljava/lang/String;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent.2;"
    iput-object p1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;->this$0:Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;->val$task:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;->val$friendlyName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent.2;"
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "WXMapViewComponent"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent.2;"
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;->val$friendlyName:Ljava/lang/String;

    return-object v0
.end method
