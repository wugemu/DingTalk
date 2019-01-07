.class Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;
.super Ljava/lang/Object;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/WeexInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginBuilder"
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
.field private mFinished:Z

.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mProvidedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mProvidedNames:Ljava/util/Set;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mRemovedNames:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/WeexInspector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/WeexInspector$1;

    .prologue
    .line 132
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;-><init>()V

    return-void
.end method

.method private throwIfFinished()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must not continue to build after finish()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mFinished:Z

    .line 168
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public provide(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    .local p2, "plugin":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->throwIfFinished()V

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mProvidedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public provideIfDesired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    .local p2, "plugin":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->throwIfFinished()V

    .line 148
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mRemovedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mProvidedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 156
    .local p0, "this":Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;, "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder<TT;>;"
    invoke-direct {p0}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->throwIfFinished()V

    .line 157
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->mRemovedNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method
