.class final Legd$1$1;
.super Lcmi;
.source "DataCenterServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Legd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lefk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Legd$1;


# direct methods
.method constructor <init>(Legd$1;)V
    .locals 0
    .param p1, "this$1"    # Legd$1;

    .prologue
    .line 52
    iput-object p1, p0, Legd$1$1;->a:Legd$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Legd$1$1;->a:Legd$1;

    iget-object v0, v0, Legd$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    check-cast p1, Lefk;

    .line 1055
    iget-object v0, p0, Legd$1$1;->a:Legd$1;

    iget-object v2, v0, Legd$1;->a:Lcma;

    .line 2038
    const/4 v0, 0x0

    .line 2039
    if-eqz p1, :cond_2

    .line 2040
    new-instance v1, Lefy;

    invoke-direct {v1}, Lefy;-><init>()V

    .line 2041
    iget-object v0, p1, Lefk;->a:Lcgd;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->fromIDL(Lcgd;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    iput-object v0, v1, Lefy;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2042
    iget-object v0, p1, Lefk;->b:Ljava/lang/String;

    iput-object v0, v1, Lefy;->b:Ljava/lang/String;

    .line 2043
    iget-object v0, p1, Lefk;->c:Ljava/lang/String;

    iput-object v0, v1, Lefy;->c:Ljava/lang/String;

    .line 2044
    iget-object v0, p1, Lefk;->d:Ljava/lang/String;

    iput-object v0, v1, Lefy;->d:Ljava/lang/String;

    .line 2045
    iget-object v0, p1, Lefk;->e:Ljava/lang/String;

    iput-object v0, v1, Lefy;->e:Ljava/lang/String;

    .line 2046
    iget-object v0, p1, Lefk;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lefy;->f:Ljava/util/List;

    .line 2048
    iget-object v0, p1, Lefk;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefi;

    .line 2049
    if-eqz v0, :cond_0

    .line 2050
    iget-object v4, v1, Lefy;->f:Ljava/util/List;

    invoke-static {v0}, Lefw;->a(Lefi;)Lefw;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1055
    :cond_2
    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
