.class final Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;
.super Ljava/lang/Object;
.source "WXBubbleComponent.java"

# interfaces
.implements Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;->registerCallback(Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic b:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic c:Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;->c:Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent;

    iput-object p2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;->a:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;->b:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_1

    .line 186
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "swipe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;->a:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 199
    return-void

    .line 188
    :cond_1
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_2

    .line 189
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "right"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "swipe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_2
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_3

    .line 192
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "bounce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_3
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_0

    .line 195
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "right"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "bounce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_1

    .line 205
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "swipe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/weex/WXBubbleComponent$1;->b:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 218
    return-void

    .line 207
    :cond_1
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_2

    .line 208
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "right"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "swipe"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_2
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_3

    .line 211
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "bounce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_3
    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    if-ne p1, v1, :cond_0

    .line 214
    const-string/jumbo v1, "direction"

    const-string/jumbo v2, "right"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "bounce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
