.class Lcom/taobao/weex/devtools/inspector/elements/Document$2;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;->cleanUp()V
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
    .line 91
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

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
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->setListener(Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;)V

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$102(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$500(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->clear()V

    .line 97
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->dispose()V

    .line 98
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$2;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$202(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    .line 99
    return-void
.end method
