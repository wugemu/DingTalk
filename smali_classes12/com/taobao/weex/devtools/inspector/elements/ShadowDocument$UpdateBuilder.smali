.class public final Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;
.super Ljava/lang/Object;
.source "ShadowDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateBuilder"
.end annotation


# instance fields
.field private mCachedNotNewChildrenSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mElementToInfoChangesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootElementChanges:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mRootElementChanges:Ljava/util/HashSet;

    return-void
.end method

.method private acquireNotNewChildrenHashSet()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mCachedNotNewChildrenSet:Ljava/util/HashSet;

    .line 248
    .local v0, "notNewChildrenHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "notNewChildrenHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .restart local v0    # "notNewChildrenHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mCachedNotNewChildrenSet:Ljava/util/HashSet;

    .line 252
    return-object v0
.end method

.method private releaseNotNewChildrenHashSet(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "notNewChildrenHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 257
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mCachedNotNewChildrenSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 258
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mCachedNotNewChildrenSet:Ljava/util/HashSet;

    .line 260
    :cond_0
    return-void
.end method

.method private setElementParent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "parentElement"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 201
    .local v0, "changesElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne p2, v4, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v4}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 207
    .local v3, "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-eq p2, v4, :cond_0

    .line 213
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne p2, v4, :cond_3

    iget-object v4, v3, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    iget-object v5, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 216
    invoke-static {v4, v5}, Lcom/taobao/weex/devtools/common/ListUtil;->identityEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    if-nez p2, :cond_0

    .line 220
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mRootElementChanges:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 232
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    invoke-direct {v2, p1, p2, v1}, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    .line 233
    .local v2, "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    if-nez p2, :cond_6

    .line 236
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mRootElementChanges:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_4
    if-eqz v3, :cond_5

    iget-object v1, v3, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    goto :goto_1

    .line 230
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 238
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v2    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_6
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mRootElementChanges:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mRootElementChanges:Ljava/util/HashSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$Update;-><init>(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;Ljava/util/Map;Ljava/util/Set;)V

    return-object v0
.end method

.method public final setElementChildren(Ljava/lang/Object;Ljava/util/List;)V
    .locals 13
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 109
    iget-object v11, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 110
    .local v1, "changesElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v1, :cond_1

    iget-object v11, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 111
    invoke-static {p2, v11}, Lcom/taobao/weex/devtools/common/ListUtil;->identityEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v11, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v11}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 116
    .local v8, "oldElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-nez v1, :cond_2

    if-eqz v8, :cond_2

    iget-object v11, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 118
    invoke-static {p2, v11}, Lcom/taobao/weex/devtools/common/ListUtil;->identityEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 123
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    iget-object v11, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    iget-object v12, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne v11, v12, :cond_3

    iget-object v11, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    .line 126
    invoke-static {p2, v11}, Lcom/taobao/weex/devtools/common/ListUtil;->identityEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 130
    iget-object v11, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v11}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 131
    .local v5, "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v11, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_1
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->acquireNotNewChildrenHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 159
    .local v6, "notNewChildrenSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    if-eqz v8, :cond_6

    iget-object v11, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    iget-object v12, v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    if-eq v11, v12, :cond_6

    .line 161
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v11, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_2
    if-ge v4, v0, :cond_6

    .line 162
    iget-object v11, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 163
    .local v3, "childElement":Ljava/lang/Object;
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 133
    .end local v0    # "N":I
    .end local v3    # "childElement":Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .end local v6    # "notNewChildrenSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :cond_3
    if-eqz v1, :cond_4

    iget-object v9, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    .line 139
    .local v9, "parentElement":Ljava/lang/Object;
    :goto_3
    new-instance v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    invoke-direct {v5, p1, v9, p2}, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    .line 141
    .restart local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    iget-object v11, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v11, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 133
    .end local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .end local v9    # "parentElement":Ljava/lang/Object;
    :cond_4
    if-eqz v8, :cond_5

    iget-object v9, v8, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v9, v10

    goto :goto_3

    .line 167
    .restart local v5    # "newElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .restart local v6    # "notNewChildrenSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :cond_6
    if-eqz v1, :cond_7

    iget-object v11, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    iget-object v12, v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    if-eq v11, v12, :cond_7

    .line 169
    const/4 v4, 0x0

    .restart local v4    # "i":I
    iget-object v11, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "N":I
    :goto_4
    if-ge v4, v0, :cond_7

    .line 170
    iget-object v11, v1, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 171
    .restart local v3    # "childElement":Ljava/lang/Object;
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 175
    .end local v0    # "N":I
    .end local v3    # "childElement":Ljava/lang/Object;
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    iget-object v11, v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "N":I
    :goto_5
    if-ge v4, v0, :cond_8

    .line 176
    iget-object v11, v5, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->children:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 177
    .restart local v3    # "childElement":Ljava/lang/Object;
    invoke-direct {p0, v3, p1}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->setElementParent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 181
    .end local v3    # "childElement":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 182
    .restart local v3    # "childElement":Ljava/lang/Object;
    iget-object v12, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->mElementToInfoChangesMap:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 183
    .local v2, "childChangesElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v2, :cond_a

    iget-object v12, v2, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne v12, p1, :cond_9

    .line 189
    :cond_a
    iget-object v12, p0, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->this$0:Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;

    invoke-static {v12}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;->access$000(Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument;)Ljava/util/IdentityHashMap;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;

    .line 190
    .local v7, "oldChangesElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    if-eqz v7, :cond_9

    iget-object v12, v7, Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;->parentElement:Ljava/lang/Object;

    if-ne v12, p1, :cond_9

    .line 192
    invoke-direct {p0, v3, v10}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->setElementParent(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 196
    .end local v2    # "childChangesElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    .end local v3    # "childElement":Ljava/lang/Object;
    .end local v7    # "oldChangesElementInfo":Lcom/taobao/weex/devtools/inspector/elements/ElementInfo;
    :cond_b
    invoke-direct {p0, v6}, Lcom/taobao/weex/devtools/inspector/elements/ShadowDocument$UpdateBuilder;->releaseNotNewChildrenHashSet(Ljava/util/HashSet;)V

    goto/16 :goto_0
.end method
