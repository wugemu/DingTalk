.class Lcom/taobao/weex/devtools/inspector/elements/Document$1;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

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
    .line 82
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getRootElement()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$102(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$300(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;->commit()V

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$1;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/Document$ProviderListener;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$1;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->setListener(Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;)V

    .line 85
    return-void
.end method
