.class public Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;
.super Landroid/support/v4/app/Fragment;
.source "CallbackV4Maid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleV4Fragment"
.end annotation


# instance fields
.field private mIsStopped:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mIsStopped:Z

    .line 203
    return-void
.end method


# virtual methods
.method public addMaid(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;Z)V
    .locals 1
    .param p1, "callbackV4Maid"    # Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;
    .param p2, "notify"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mIsStopped:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 241
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->access$200(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V

    .line 241
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mIsStopped:Z

    .line 224
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->access$100(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mIsStopped:Z

    .line 233
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->access$000(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method public removeMaid(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V
    .locals 1
    .param p1, "callbackV4Maid"    # Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method
