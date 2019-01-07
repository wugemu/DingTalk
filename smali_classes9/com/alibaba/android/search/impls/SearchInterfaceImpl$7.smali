.class final Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;
.super Ljava/lang/Object;
.source "SearchInterfaceImpl.java"

# interfaces
.implements Lcmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a(IILjava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmb",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;Lcma;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->d:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 570
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 548
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1552
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->a:Lcma;

    iget-object v1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->b:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$7;->c:I

    invoke-static {v1, v2, p1}, Lesv;->a(Ljava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 548
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 565
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 560
    return-void
.end method
