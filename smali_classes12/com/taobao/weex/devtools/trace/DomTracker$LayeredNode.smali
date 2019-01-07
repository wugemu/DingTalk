.class Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;
.super Ljava/lang/Object;
.source "DomTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/trace/DomTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayeredNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field component:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field layer:I

.field simpleName:Ljava/lang/String;

.field tint:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 281
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/trace/DomTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/trace/DomTracker$1;

    .prologue
    .line 281
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<TT;>;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<TT;>;"
    const/4 v1, 0x0

    .line 295
    iput-object v1, p0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->component:Ljava/lang/Object;

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->layer:I

    .line 297
    iput-object v1, p0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->simpleName:Ljava/lang/String;

    .line 298
    return-void
.end method

.method set(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0
    .param p2, "simpleName"    # Ljava/lang/String;
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;, "Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode<TT;>;"
    .local p1, "component":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->component:Ljava/lang/Object;

    .line 290
    iput p3, p0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->layer:I

    .line 291
    iput-object p2, p0, Lcom/taobao/weex/devtools/trace/DomTracker$LayeredNode;->simpleName:Ljava/lang/String;

    .line 292
    return-void
.end method
