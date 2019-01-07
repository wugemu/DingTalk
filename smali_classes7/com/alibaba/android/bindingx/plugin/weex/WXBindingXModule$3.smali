.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

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
    .line 254
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lanu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lanu;

    move-result-object v0

    invoke-virtual {v0}, Lanu;->a()V

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$002(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lanu;)Lanu;

    .line 258
    :cond_0
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->clearCallbacks()V

    .line 259
    return-void
.end method
