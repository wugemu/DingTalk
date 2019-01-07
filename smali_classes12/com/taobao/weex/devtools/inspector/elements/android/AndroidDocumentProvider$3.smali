.class Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$3;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/Accumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getWXSDKInstances()V
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


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

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
    .line 261
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$3;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    .line 262
    .local v0, "elementDescriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1, p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 265
    :cond_0
    return-void
.end method
