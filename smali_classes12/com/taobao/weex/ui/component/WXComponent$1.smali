.class Lcom/taobao/weex/ui/component/WXComponent$1;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 333
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$1;, "Lcom/taobao/weex/ui/component/WXComponent$1;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$1;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$1;, "Lcom/taobao/weex/ui/component/WXComponent$1;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent$1;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "focus"

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    return-void

    .line 338
    :cond_0
    const-string/jumbo v1, "blur"

    goto :goto_0
.end method
