.class public final Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
.super Ljava/lang/Object;
.source "ElementInfo.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final element:Ljava/lang/Object;

.field public final parentElement:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "parentElement"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->element:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    .line 31
    invoke-static {p3}, Lcom/taobao/weex/devtools/common/ListUtil;->copyToImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    instance-of v3, p1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 42
    .local v0, "other":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->element:Ljava/lang/Object;

    iget-object v4, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->element:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    iget-object v4, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    iget-object v4, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 44
    invoke-static {v3, v4}, Lcom/taobao/weex/devtools/common/ListUtil;->identityEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 42
    goto :goto_0

    .end local v0    # "other":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_3
    move v1, v2

    .line 47
    goto :goto_0
.end method
