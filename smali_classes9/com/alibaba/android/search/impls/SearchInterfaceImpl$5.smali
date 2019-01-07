.class final Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;
.super Ljava/lang/Object;
.source "SearchInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->b:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;

    .line 1425
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1426
    if-eqz p1, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    iget v1, p1, Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$5;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 439
    :cond_0
    return-void
.end method
