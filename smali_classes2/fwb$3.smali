.class final Lfwb$3;
.super Ljava/lang/Object;
.source "SearchOrgNamePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwb;->c(Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfwb;


# direct methods
.method constructor <init>(Lfwb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfwb;

    .prologue
    .line 93
    iput-object p1, p0, Lfwb$3;->b:Lfwb;

    iput-object p2, p0, Lfwb$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 93
    check-cast p1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;

    .line 1096
    if-eqz p1, :cond_0

    .line 1099
    iget-object v0, p0, Lfwb$3;->b:Lfwb;

    .line 2018
    iget-object v0, v0, Lfwb;->a:Lfwa$b;

    .line 1099
    iget-object v1, p0, Lfwb$3;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;->modelList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lfwa$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lfwb$3;->b:Lfwb;

    .line 1018
    iget-object v0, v0, Lfwb;->a:Lfwa$b;

    .line 109
    iget-object v1, p0, Lfwb$3;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lfwa$b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 105
    return-void
.end method
