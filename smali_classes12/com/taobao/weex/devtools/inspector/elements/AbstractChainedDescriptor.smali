.class public abstract Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
.source "AbstractChainedDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/ChainedDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/weex/devtools/inspector/elements/Descriptor;",
        "Lcom/taobao/weex/devtools/inspector/elements/ChainedDescriptor;"
    }
.end annotation


# instance fields
.field private mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;

    .prologue
    .line 132
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V

    .line 134
    return-void
.end method

.method public final getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 124
    return-void
.end method

.method public final getLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 101
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 111
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "accumulator"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    .prologue
    .line 152
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onGetStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    .line 154
    return-void
.end method

.method public final getSuper()Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    return-object v0
.end method

.method public final hook(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 59
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->verifyThreadAccess()V

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->hook(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onHook(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onGetAttributes(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;)V
    .locals 0
    .param p2, "attributes"    # Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/taobao/weex/devtools/inspector/elements/AttributeAccumulator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method public onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    return-void
.end method

.method protected onGetLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getNodeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/taobao/weex/devtools/inspector/elements/NodeType;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getNodeType(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeType;

    move-result-object v0

    return-object v0
.end method

.method public onGetNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onGetStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 0
    .param p2, "accumulator"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method protected onHook(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method protected onSetAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onUnhook(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method public final setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 142
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onSetAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setSuper(Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)V
    .locals 1
    .param p1, "superDescriptor"    # Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    .prologue
    .line 42
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    .line 50
    :cond_1
    return-void
.end method

.method public final unhook(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 70
    .local p0, "this":Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;, "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor<TE;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->verifyThreadAccess()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->onUnhook(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;->mSuper:Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->unhook(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
