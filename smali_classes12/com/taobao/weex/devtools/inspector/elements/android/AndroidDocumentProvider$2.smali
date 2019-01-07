.class Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getWindows(Lcom/taobao/weex/devtools/common/Accumulator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/Accumulator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

.field final synthetic val$accumulator:Lcom/taobao/weex/devtools/common/Accumulator;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;->val$accumulator:Lcom/taobao/weex/devtools/common/Accumulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    instance-of v1, p1, Landroid/view/Window;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;->val$accumulator:Lcom/taobao/weex/devtools/common/Accumulator;

    check-cast p1, Landroid/view/Window;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local p1    # "element":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    .line 243
    .local v0, "elementDescriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1, p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    goto :goto_0
.end method
