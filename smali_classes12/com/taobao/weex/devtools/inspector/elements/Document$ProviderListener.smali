.class final Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/Document$1;

    .prologue
    .line 769
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    return-void
.end method


# virtual methods
.method public final onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 778
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public final onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 784
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public final onInspectRequested(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 790
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$700(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$UpdateListenerCollection;->onInspectRequested(Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public final onPossiblyChanged()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$1200(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    .line 773
    return-void
.end method
