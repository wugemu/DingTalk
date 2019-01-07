.class public abstract Lcom/taobao/weex/ui/component/WXVContainer;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WXVContainer"


# instance fields
.field private mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/ui/component/WXVContainer",
            "<TT;>.BoxShadowHost;"
        }
    .end annotation
.end field

.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private requestDisallowInterceptTouchEvent:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 62
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "lazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent:Z

    .line 59
    return-void
.end method

.method private doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "isRelease"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 527
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 528
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 529
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 530
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v3, :cond_2

    .line 531
    if-eqz p2, :cond_1

    .line 532
    check-cast v2, Lcom/taobao/weex/ui/view/WXImageView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXImageView;->autoReleaseImage()V

    .line 528
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    check-cast v2, Lcom/taobao/weex/ui/view/WXImageView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXImageView;->autoRecoverImage()V

    goto :goto_1

    .line 536
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 537
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    .line 540
    :cond_3
    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 257
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 258
    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 4
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, -0x1

    .line 261
    if-eqz p1, :cond_0

    if-ge p2, v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mDeepInComponentTree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 265
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    iget v3, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    invoke-virtual {v2, v3}, Lcom/taobao/weex/WXSDKInstance;->setMaxDomDeep(I)V

    .line 266
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 267
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 268
    :cond_2
    if-ne p2, v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, -0x1

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 309
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 310
    :cond_2
    if-ne p2, v1, :cond_3

    .line 311
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public appendTreeCreateFinish()V
    .locals 0

    .prologue
    .line 612
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    return-void
.end method

.method public applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    if-nez p1, :cond_0

    .line 109
    move-object p1, p0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 112
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v1

    .line 113
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 114
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    move-object v3, p1

    .line 115
    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v3, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    if-nez p1, :cond_0

    .line 160
    move-object p1, p0

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 163
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 164
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public childCount()I
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public createChildViewAt(I)V
    .locals 4
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object v1

    .line 281
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 282
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 283
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 284
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->addSubView(Landroid/view/View;I)V

    .line 288
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    return-void
.end method

.method public createViewImpl()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 193
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 194
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 195
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 200
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 211
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 212
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, "original":Landroid/view/View;
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 233
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 234
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public getBoxShadowHost(Z)Landroid/view/View;
    .locals 14
    .param p1, "isClear"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v10, 0x0

    .line 561
    if-eqz p1, :cond_1

    .line 563
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    .line 601
    :cond_0
    :goto_0
    return-object v2

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 567
    .local v2, "hostView":Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    move-object v2, v10

    .line 568
    goto :goto_0

    .line 572
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object v9

    .line 573
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v10, "div"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 574
    const-string/jumbo v10, "BoxShadow"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Draw box-shadow with BoxShadowHost on div: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    if-nez v10, :cond_3

    .line 576
    new-instance v10, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;-><init>(Lcom/taobao/weex/ui/component/WXVContainer;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    .line 577
    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 579
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    .line 580
    .local v5, "padding":Lcom/taobao/weex/dom/CSSShorthand;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    .line 582
    .local v0, "border":Lcom/taobao/weex/dom/CSSShorthand;
    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v11}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v4, v10

    .line 583
    .local v4, "left":I
    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v11}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v8, v10

    .line 584
    .local v8, "top":I
    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v11}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v6, v10

    .line 585
    .local v6, "right":I
    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v11}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v1, v10

    .line 587
    .local v1, "bottom":I
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    .local v3, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    neg-int v10, v4

    neg-int v11, v8

    neg-int v12, v6

    neg-int v13, v1

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 590
    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {v10, v3}, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    .end local v0    # "border":Lcom/taobao/weex/dom/CSSShorthand;
    .end local v1    # "bottom":I
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "left":I
    .end local v5    # "padding":Lcom/taobao/weex/dom/CSSShorthand;
    .end local v6    # "right":I
    .end local v8    # "top":I
    :cond_3
    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 595
    iget-object v10, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 596
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 598
    .end local v9    # "type":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 599
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "BoxShadow"

    invoke-static {v10, v7}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getChild(I)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 245
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    return v0
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v0, 0x0

    .line 125
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 129
    :cond_0
    if-nez v0, :cond_2

    .line 130
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 138
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    return-object v0

    .line 132
    :cond_2
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 135
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p5, p7, p6, p8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    instance-of v2, p0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_0

    .line 144
    check-cast p0, Lcom/taobao/weex/ui/component/Scrollable;

    .line 153
    .end local p0    # "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    .local v0, "i":I
    :goto_0
    return-object p0

    .line 146
    .end local v0    # "i":I
    .restart local p0    # "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v1

    .line 148
    .local v1, "scrollable":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 149
    goto :goto_0

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    .end local v1    # "scrollable":Lcom/taobao/weex/ui/component/Scrollable;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public ignoreFocus()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .local v0, "host":Landroid/view/ViewGroup;, "TT;"
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 88
    :cond_0
    return-void
.end method

.method public final indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I
    .locals 1
    .param p1, "comp"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 276
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public interceptFocus()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    .local v0, "host":Landroid/view/ViewGroup;, "TT;"
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 73
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 76
    :cond_0
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 341
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 351
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 346
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const-string/jumbo p1, "disappear"

    .line 349
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityBack()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    .line 422
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 423
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 424
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onActivityCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    .line 360
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 361
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 362
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    .line 411
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 412
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 381
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 382
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 383
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 431
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    .line 433
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 434
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 389
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 391
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 392
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 393
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_0
    return-void
.end method

.method public onActivityStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    .line 370
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 371
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 372
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 399
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    .line 401
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 402
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 403
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 443
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 444
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onRenderFinish(I)V
    .locals 6
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 465
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v4, v3, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiQueueTime:J

    iput-wide v4, v2, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiQueueTime:J

    .line 466
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    .line 469
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 453
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 455
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 456
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method protected rearrangeIndexAndGetChild(I)Landroid/util/Pair;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    move v0, p1

    .line 292
    .local v0, "indexToCreate":I
    if-gez p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 296
    :cond_0
    if-gez v0, :cond_1

    .line 297
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public recoverImageList(Ljava/lang/String;)V
    .locals 7
    .param p1, "viewTreeRecycle"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    const/4 v6, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 505
    .local v4, "isViewTree":Z
    if-eqz v4, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v6}, Lcom/taobao/weex/ui/component/WXVContainer;->doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    .line 509
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 510
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 511
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v5, v0, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v5, :cond_4

    move-object v5, v0

    check-cast v5, Lcom/taobao/weex/ui/component/WXImage;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v5, :cond_4

    .line 512
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXImageView;

    .line 513
    .local v3, "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 514
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXImageView;->autoRecoverImage()V

    .line 509
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v3    # "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 516
    .restart local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_4
    instance-of v5, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v5, :cond_3

    .line 517
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->recoverImageList(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public recycled()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->isFixed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->canRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    .line 226
    return-void
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    if-nez p1, :cond_0

    .line 173
    move-object p1, p0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 176
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    .line 177
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 178
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method

.method public releaseImageList(Ljava/lang/String;)V
    .locals 7
    .param p1, "viewTreeRecycle"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 479
    .local v4, "isViewTree":Z
    if-eqz v4, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/taobao/weex/ui/component/WXVContainer;->doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    .line 483
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 484
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 485
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v5, v0, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v5, :cond_4

    move-object v5, v0

    check-cast v5, Lcom/taobao/weex/ui/component/WXImage;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v5, :cond_4

    .line 486
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXImageView;

    .line 487
    .local v3, "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 488
    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXImageView;->autoReleaseImage()V

    .line 483
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v3    # "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    .restart local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_4
    instance-of v5, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v5, :cond_3

    .line 491
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->releaseImageList(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 2
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "destroy"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->removeFixedView(Landroid/view/View;)V

    .line 334
    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 331
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeVirtualComponent()V

    goto :goto_1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "requestDisallowInterceptTouchEvent"    # Z

    .prologue
    .line 544
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent:Z

    if-eq v0, p1, :cond_1

    .line 545
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent:Z

    .line 546
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setRequestDisallowInterceptTouchEvent(Z)V

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent(Z)V

    .line 553
    :cond_1
    return-void
.end method
