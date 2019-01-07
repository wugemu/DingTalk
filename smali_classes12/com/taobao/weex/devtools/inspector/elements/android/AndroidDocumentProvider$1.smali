.class Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$002(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Z)Z

    .line 69
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$100(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$100(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;->onPossiblyChanged()V

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$002(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Z)Z

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->postDelayed(Ljava/lang/Runnable;J)V

    .line 74
    :cond_0
    return-void
.end method
