.class public Lcom/alibaba/lightapp/runtime/model/WebViewModelWrapper;
.super Ljava/lang/Object;
.source "WebViewModelWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/WebViewModelWrapper;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/WebViewModelWrapper;->modelList:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/WebViewModelWrapper;->id:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/WebViewModelWrapper;->modelList:Ljava/util/List;

    .line 29
    return-void
.end method
