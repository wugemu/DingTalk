.class Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;
.super Ljava/lang/Object;
.source "TextContentBoxMeasurement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutAfter(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;


# direct methods
.method constructor <init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

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
    .line 194
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;->this$0:Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;

    invoke-static {v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    .line 195
    return-void
.end method
