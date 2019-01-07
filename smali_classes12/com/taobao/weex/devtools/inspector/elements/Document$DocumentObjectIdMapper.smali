.class final Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;
.super Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DocumentObjectIdMapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/Document;Lcom/taobao/weex/devtools/inspector/elements/Document$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/Document;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/Document$1;

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    return-void
.end method


# virtual methods
.method protected final onMapped(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 756
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v0

    .line 757
    .local v0, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->hook(Ljava/lang/Object;)V

    .line 758
    return-void
.end method

.method protected final onUnmapped(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 762
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->verifyThreadAccess()V

    .line 764
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/Document$DocumentObjectIdMapper;->this$0:Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->access$200(Lcom/taobao/weex/devtools/inspector/elements/Document;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;->getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;

    move-result-object v0

    .line 765
    .local v0, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;->unhook(Ljava/lang/Object;)V

    .line 766
    return-void
.end method
