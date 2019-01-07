.class public abstract Lcom/alibaba/lightapp/runtime/Component;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/Component$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/alibaba/lightapp/runtime/Component$a;",
        ">",
        "Lcom/alibaba/lightapp/runtime/Plugin;"
    }
.end annotation


# instance fields
.field private mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component;, "Lcom/alibaba/lightapp/runtime/Component<TD;>;"
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bindDelegateModel(Lcom/alibaba/lightapp/runtime/Component$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component;, "Lcom/alibaba/lightapp/runtime/Component<TD;>;"
    .local p1, "model":Lcom/alibaba/lightapp/runtime/Component$a;, "TD;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    .line 23
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/Component$a;->bindComponent(Lcom/alibaba/lightapp/runtime/Component;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component;, "Lcom/alibaba/lightapp/runtime/Component<TD;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    return-object v0
.end method

.method public abstract getDelegateModelType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component;, "Lcom/alibaba/lightapp/runtime/Component<TD;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/Component;->unbindDelegateModel()V

    .line 18
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 19
    return-void
.end method

.method public unbindDelegateModel()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/lightapp/runtime/Component;, "Lcom/alibaba/lightapp/runtime/Component<TD;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    invoke-virtual {v0, p0}, Lcom/alibaba/lightapp/runtime/Component$a;->unbindComponent(Lcom/alibaba/lightapp/runtime/Component;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/Component;->mDelegateModel:Lcom/alibaba/lightapp/runtime/Component$a;

    .line 34
    :cond_0
    return-void
.end method
